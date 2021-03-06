#Область ОсновныеПроцедуры

Процедура ВыполнитьОтправкуДанныхИсходящегоРегистраМонолит() Экспорт
	
	Параметры 			 	= Новый Массив;
	МассивСтруктурШлюзов 	= Новый Массив;
	Запрос 					= Новый Запрос;
	
	Запрос.Текст = Mon_Общий.ВернутьТекстЗапросаНаАктуальныеШлюзы();
	Результат = Запрос.Выполнить();

	Если Результат.Пустой() Тогда 
		Возврат;
	КонецЕсли;
	
	Выборка = Результат.Выбрать();
	
	КоличествоШлюзовВПакете = 7;
	
	НомерШлюза = 1;
		
	ОбщееКоличествоШлюзов = Выборка.Количество();
	
	Пока Выборка.Следующий() Цикл	
	
		СтруктурыШлюзов = Mon_Общий.ЗаполнитьПараметрыСтруктурШлюзов();
		ЗаполнитьЗначенияСвойств(СтруктурыШлюзов, Выборка);
		
		
		МассивСтруктурШлюзов.Добавить(СтруктурыШлюзов);
		
		Если (НомерШлюза <> 1 И КоличествоШлюзовВПакете % НомерШлюза = 0) ИЛИ НомерШлюза = ОбщееКоличествоШлюзов Тогда			
			
			Параметры.Добавить(МассивСтруктурШлюзов);
			
			//Собранные пакеты шлюзов
			 ВыполнитьОтправкуДанныхИсходящегоРегистраФоном(МассивСтруктурШлюзов);
			
			//ФоновыеЗадания.Выполнить("Mon_ОтправкаДанныхИсходящегоРегистра.ВыполнитьОтправкуДанныхИсходящегоРегистраФоном", 
			//	Параметры, Новый УникальныйИдентификатор, "Фоновое выполнение СRMMonolit");	
				
			Параметры.Очистить();
				
		КонецЕсли;
		
		НомерШлюза = НомерШлюза + 1;					
		
	КонецЦикла;
		
	
КонецПроцедуры

Процедура ВыполнитьОтправкуДанныхИсходящегоРегистраФоном(ПараметрыФоновогоЗадания) Экспорт
	
	//СписокДокументов = Неопределено;
	
	Параметры 			 	= Новый Массив;
	//МассивСтруктурШлюзов 	= Новый Массив;
	
	Для Каждого Элемент Из ПараметрыФоновогоЗадания Цикл  
		
		НачатьТранзакцию(РежимУправленияБлокировкойДанных.Управляемый); 
		
		Запрос = Новый Запрос("ВЫБРАТЬ
		                      |	Mon_ИсходящиеДанные.ШлюзОрганизации КАК ШлюзОрганизации,
		                      |	Mon_ИсходящиеДанные.ВидОбмена КАК ВидОбмена,
		                      |	Mon_ИсходящиеДанные.ДатаВыгрузки КАК ДатаВыгрузки,
		                      |	Mon_ИсходящиеДанные.ДатаОбработки КАК ДатаОбработки,
		                      |	Mon_ИсходящиеДанные.ДатаОтчета КАК ДатаОтчета,
		                      |	Mon_ИсходящиеДанные.ТекстОбмена КАК ТекстОбмена,
		                      |	Mon_ИсходящиеДанные.Ответ КАК Ответ
		                      |ИЗ
		                      |	РегистрСведений.Mon_ИсходящиеДанные КАК Mon_ИсходящиеДанные
		                      |ГДЕ
		                      |	Mon_ИсходящиеДанные.ШлюзОрганизации = &ШлюзОрганизации
		                      |	И Mon_ИсходящиеДанные.ДатаВыгрузки = ДАТАВРЕМЯ(1, 1, 1)
		                      |	И Mon_ИсходящиеДанные.Статус = &Статус
		                      |
		                      |ДЛЯ ИЗМЕНЕНИЯ
		                      |	РегистрСведений.Mon_ИсходящиеДанные
		                      |
		                      |УПОРЯДОЧИТЬ ПО
		                      |	ДатаОбработки");
		
		Запрос.УстановитьПараметр("ШлюзОрганизации", Элемент.ШлюзОрганизации);
		
		Запрос.УстановитьПараметр("Статус", Перечисления.Mon_СтатусыОбработкиСтрокиРегистра.НеОбработано);
			
		ТЗНеобработанные = Запрос.Выполнить().Выгрузить();
		
		Для Каждого СтрокаИзТЗ Из ТЗНеобработанные Цикл
			
			Запись = РегистрыСведений.Mon_ИсходящиеДанные.СоздатьМенеджерЗаписи();
			
			ЗаполнитьЗначенияСвойств(Запись, СтрокаИзТЗ);
			Запись.Статус = Перечисления.Mon_СтатусыОбработкиСтрокиРегистра.ВРаботе;	
			Запись.Записать(Истина);
			
		КонецЦикла;	
		
		ЗафиксироватьТранзакцию();

		Для Каждого СтрокаИзТЗ Из ТЗНеобработанные Цикл
				
			Параметры.Добавить(СтрокаИзТЗ);
			
			//Собранные пакеты шлюзов
			 Mon_Сервис.ВыполнитьОбменИсходящимиДаннымиСМонолитомФоном(СтрокаИзТЗ);
			
			//ФоновыеЗадания.Выполнить("Mon_Сервис.ВыполнитьОбменИсходящимиДаннымиСМонолитомФоном", 
			//	Параметры, Новый УникальныйИдентификатор, "Фоновое выполнение СRMMonolit");				
			
			Параметры.Очистить();
			
		КонецЦикла;
		
	КонецЦикла;
		
КонецПроцедуры

#КонецОбласти
