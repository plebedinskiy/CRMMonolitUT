#Область ФормированияФоновыхЗаданий

Процедура ПолучениеЗаказовПоВсемАктивнымШлюзам() Экспорт
	
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
		СтруктурыШлюзов.ВидОбмена = Перечисления.Mon_ВидыОбменов.CRMOrder;
		
		МассивСтруктурШлюзов.Добавить(СтруктурыШлюзов);
		
		Если (НомерШлюза <> 1 И НомерШлюза % КоличествоШлюзовВПакете = 0) ИЛИ НомерШлюза = ОбщееКоличествоШлюзов Тогда			
				
			//ВыполнитьОбменДаннымиСМонолитомФоном(МассивСтруктурШлюзов);
			
			Параметры.Добавить(МассивСтруктурШлюзов);
			ФоновыеЗадания.Выполнить("Mon_Сервис.ВыполнитьОбменДаннымиСМонолитомФоном", 
				Параметры, Новый УникальныйИдентификатор, "Фоновое выполнение СRMMonolit");	
				
			Параметры.Очистить();
			МассивСтруктурШлюзов.Очистить();	
		КонецЕсли;
		
		НомерШлюза = НомерШлюза + 1;
		
	КонецЦикла;
	
КонецПроцедуры

Процедура ПолучениеПКОПоВсемАктивнымШлюзам() Экспорт
	
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
		СтруктурыШлюзов.ВидОбмена = Перечисления.Mon_ВидыОбменов.CRMCreditCashOrder;
		
		МассивСтруктурШлюзов.Добавить(СтруктурыШлюзов);
		
		Если (НомерШлюза <> 1 И НомерШлюза % КоличествоШлюзовВПакете = 0) ИЛИ НомерШлюза = ОбщееКоличествоШлюзов Тогда			
						
			Параметры.Добавить(МассивСтруктурШлюзов);
			ФоновыеЗадания.Выполнить("Mon_Сервис.ВыполнитьОбменДаннымиСМонолитомФоном", 
				Параметры, Новый УникальныйИдентификатор, "Фоновое выполнение СRMMonolit");	
				
			Параметры.Очистить();
			МассивСтруктурШлюзов.Очистить();	
		КонецЕсли;
		
		НомерШлюза = НомерШлюза + 1;
		
	КонецЦикла;
	
КонецПроцедуры

Процедура ПолучениеНоменклатурыПоТипамОбменов() Экспорт
	
	Параметры 			 	= Новый Массив;
	МассивСтруктурШлюзов 	= Новый Массив;
	Запрос 					= Новый Запрос;
	
	Запрос.Текст = Mon_Общий.ВернутьТекстЗапросаНаПервыеАктуальныеШлюзыИзТиповОбмена();
	Результат = Запрос.Выполнить();

	Если Результат.Пустой() Тогда 
		Возврат;
	КонецЕсли;
	
	Выборка = Результат.Выбрать();
	
	КоличествоШлюзовВПакете = 2;
	
	НомерШлюза = 1;
	
	ОбщееКоличествоШлюзов = Выборка.Количество();
	
	Пока Выборка.Следующий() Цикл
		
		СтруктурыШлюзов = Mon_Общий.ЗаполнитьПараметрыСтруктурШлюзов();
		ЗаполнитьЗначенияСвойств(СтруктурыШлюзов, Выборка);
		СтруктурыШлюзов.ВидОбмена = Перечисления.Mon_ВидыОбменов.CRMWare;
		
		МассивСтруктурШлюзов.Добавить(СтруктурыШлюзов);
		
		Если (НомерШлюза <> 1 И НомерШлюза % КоличествоШлюзовВПакете = 0) ИЛИ НомерШлюза = ОбщееКоличествоШлюзов Тогда			
			
			
			//Mon_Сервис.ВыполнитьОбменДаннымиСМонолитомФоном(МассивСтруктурШлюзов);
			
			Параметры.Добавить(МассивСтруктурШлюзов);
			ФоновыеЗадания.Выполнить("Mon_Сервис.ВыполнитьОбменДаннымиСМонолитомФоном", 
        		Параметры, Новый УникальныйИдентификатор, "Фоновое выполнение СRMMonolit");		
				
			Параметры.Очистить();
				
		КонецЕсли;
		
		НомерШлюза = НомерШлюза + 1;
		
	КонецЦикла;
	
КонецПроцедуры

Процедура ВыполнитьОбменДаннымиСМонолитомФоном(ПараметрыФоновогоЗадания) Экспорт
	
	Для Каждого Элемент Из ПараметрыФоновогоЗадания Цикл  
		
		ТекстСообщения = ЗаполнитьЗапросЧерезФабрикуXDTO(Элемент);
		
		КомандаЗапросаЗаказов = "XMLData=" + СтрЗаменить(СтрЗаменить(ТекстСообщения, Символы.ПС,""), Символы.Таб,"");	
		
		ПараметрыЗапроса = ПараметрыЗапросаСтруктура();
		ПараметрыЗапроса.Метод = "POST";
		ПараметрыЗапроса.Заголовки.Вставить("Content-Type", "application/x-www-form-urlencoded");
		ПараметрыЗапроса.ИмяФайла = ПолучитьИмяВременногоФайла();
			
		ПараметрыЗапроса.Данные = КомандаЗапросаЗаказов;
		
		ПараметрыПодключения = Новый Структура("Адрес,Логин,Пароль", Элемент.ВебАдрес, "", "");
		
		Ответ = ЗапросHTTP( ПараметрыПодключения, ПараметрыЗапроса );  
		
		Если Ответ = Неопределено Тогда
			Продолжить; 			
		КонецЕсли;
		
		Если Ответ.КодСостояния = 200 Тогда	 	
			
			ЗаписатьВРегистр_Mon_ВходящиеДанные(ПараметрыЗапроса.ИмяФайла, Элемент);			
			
		КонецЕсли;
		
	КонецЦикла;
		
КонецПроцедуры

Процедура ВыполнитьОбменИсходящимиДаннымиСМонолитомФоном(Строка) Экспорт
	
	КомандаЗапросаЗаказов = "XMLData=" + СтрЗаменить(Строка.ТекстОбмена, Символы.ПС,"");	
		
	ПараметрыЗапроса = ПараметрыЗапросаСтруктура();
	ПараметрыЗапроса.Метод = "POST";
	ПараметрыЗапроса.Заголовки.Вставить("Content-Type", "application/x-www-form-urlencoded");
	ПараметрыЗапроса.ИмяФайла = ПолучитьИмяВременногоФайла();
		
	ПараметрыЗапроса.Данные = КомандаЗапросаЗаказов;
	
	ПараметрыПодключения = Новый Структура("Адрес,Логин,Пароль", Строка.ШлюзОрганизации.ТипМонолита.ВебАдрес, "", "");
	
	Ответ = ЗапросHTTP( ПараметрыПодключения, ПараметрыЗапроса );  
	
	Если Ответ = Неопределено Тогда
		Возврат; 			
	КонецЕсли;
	
	Если Ответ.КодСостояния = 200 Тогда	 	
		
		ЗаписатьВРегистр_Mon_ИсходящиеДанные(ПараметрыЗапроса.ИмяФайла, Строка);			
		
	КонецЕсли;
				
КонецПроцедуры

Процедура ПолучениеПриходовПоВсемАктивнымШлюзам() Экспорт

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
		СтруктурыШлюзов.ВидОбмена = Перечисления.Mon_ВидыОбменов.CRMVendReceiptExParts;
		
		МассивСтруктурШлюзов.Добавить(СтруктурыШлюзов);
		
		Если (НомерШлюза <> 1 И НомерШлюза % КоличествоШлюзовВПакете = 0) ИЛИ НомерШлюза = ОбщееКоличествоШлюзов Тогда			
				
			ВыполнитьОбменДаннымиСМонолитомФоном(МассивСтруктурШлюзов);
			
			Параметры.Добавить(МассивСтруктурШлюзов);
			//ФоновыеЗадания.Выполнить("Mon_Сервис.ВыполнитьОбменДаннымиСМонолитомФоном", 
			//	Параметры, Новый УникальныйИдентификатор, "Фоновое выполнение СRMMonolit");	
				
			Параметры.Очистить();
			МассивСтруктурШлюзов.Очистить();	
		КонецЕсли;
		
		НомерШлюза = НомерШлюза + 1;
		
	КонецЦикла;

	
КонецПроцедуры

#КонецОбласти

#Область ПроцедурыОтправки

Функция ЗаполнитьЗапросЧерезФабрикуXDTO(Соответствие)
	
	URIПространствоИмен = "http://utmonolit.ru/request";
	
	ТипФабрикиExdata  = ФабрикаXDTO.Тип(URIПространствоИмен, "extdata");	
	тОбъектXDTOExdata = ФабрикаXDTO.Создать(ТипФабрикиExdata);
	
	ТипФабрикиScheme  = ФабрикаXDTO.Тип(URIПространствоИмен, "scheme");	
	тОбъектXDTOScheme = ФабрикаXDTO.Создать(ТипФабрикиScheme);

	тОбъектXDTOExdata.user = Соответствие.Шлюз;
	Если НЕ Соответствие.Пароль = "" Тогда 
		тОбъектXDTOExdata.passwd = Соответствие.Пароль;
	КонецЕсли;
	
	
	тОбъектXDTOScheme.name = Строка(Соответствие.ВидОбмена);
	тОбъектXDTOScheme.request = "get";
	
	тОбъектXDTOExdata.scheme = тОбъектXDTOScheme;
	
	
	ЗаписьXML 	= Новый ЗаписьXML;	
	ЗаписьXML.УстановитьСтроку("windows-1251");
	ЗаписьXML.ЗаписатьОбъявлениеXML();
	ФабрикаXDTO.ЗаписатьXML(ЗаписьXML, тОбъектXDTOExdata);
	
	СтрXML = ЗаписьXML.Закрыть();

	//TODO: Простите, очень торопился, потому не получилось разобраться почему эта тварь выдает ошибку при рисовании XDTO пакета, потому заменю текстом
	СтрXML = СтрЗаменить(СтрXML, 
		"<scheme name=""CRMVendReceiptExParts"" request=""get""/>",
		"<scheme name=""CRMVendReceiptExParts"" request=""get"">
		|	<data>
		|		<s>
		|			<d name=""CRMVendReceiptParam"">
		|				<f name=""WorkDate"" type=""Date"" />
		|			</d>
		|		</s>
		|		<o>
		|			<d name=""CRMVendReceiptParam"">
		|				<r>
		|					<f>
		|						" + Формат(ТекущаяДата() , "ДФ=yyyy-MM-dd") + "T00:00:00
		|					</f>
		|				</r>
		|			</d>
		|		</o>
		|	</data>
		|</scheme>");
	
	СтрXML = СтрЗаменить(СтрXML," xmlns=""" + URIПространствоИмен + """ xmlns:xs=""http://www.w3.org/2001/XMLSchema"" xmlns:xsi=""http://www.w3.org/2001/XMLSchema-instance""","");
	
	Возврат СтрXML;
	
КонецФункции

Функция ЗапросHTTP( ПараметрыПодключения, ПараметрыЗапроса ) Экспорт
	
	Методы = HTTPМетоды();
	
	Подключение = СтруктураURI( ПараметрыПодключения.Адрес );
	SSL = Неопределено; 
	Если Подключение.ЗащищенноеСоединение Тогда
		SSL = Новый ЗащищенноеСоединениеOpenSSL();
	КонецЕсли;
	
	Логин = ?( ПараметрыПодключения.Свойство("Логин") И Не ПустаяСтрока(ПараметрыПодключения.Логин), ПараметрыПодключения.Логин, Подключение.Логин );
	Пароль = ?( ПараметрыПодключения.Свойство("Пароль") И Не ПустаяСтрока(ПараметрыПодключения.Пароль), ПараметрыПодключения.Пароль, Подключение.Пароль );
	
	Попытка 

		Соединение = Новый HTTPСоединение( Подключение.Сервер, Подключение.Порт, Логин, Пароль, , , SSL, Ложь );
		Запрос = Новый HTTPЗапрос( Подключение.ПутьНаСервере, ПараметрыЗапроса.Заголовки );
		
		Если ПараметрыЗапроса.Метод = Методы.GET Тогда
			
			Ответ = Соединение.Получить( Запрос, ПараметрыЗапроса.ИмяФайла );  
			
		ИначеЕсли ПараметрыЗапроса.Метод = Методы.POST Тогда
			
			Если Не ПустаяСтрока( ПараметрыЗапроса.Данные ) Тогда
				Запрос.УстановитьТелоИзСтроки( ПараметрыЗапроса.Данные, КодировкаТекста.UTF8 ); 
			КонецЕсли;
			
			Ответ = Соединение.ОтправитьДляОбработки( Запрос, ПараметрыЗапроса.ИмяФайла );  
			
		КонецЕсли;
		
		
		Возврат Ответ;			
		
	Исключение
		Ошибка = ОписаниеОшибки();
		Возврат Неопределено;	
	КонецПопытки;
		
КонецФункции

#КонецОбласти

#Область ВспомогательныеПроцедурыДляЗапроса

Функция HTTPМетоды() Экспорт
	
	Результат = Новый Структура;
	
	Результат.Вставить( "GET", "GET" );
	Результат.Вставить( "POST", "POST" );
	Результат.Вставить( "DELETE", "DELETE" );
	
	Возврат Результат;
	
КонецФункции

Функция НастройкиПодключенияСтруктура() Экспорт
	
	Результат = Новый Структура;
	
	Результат.Вставить( "Адрес", "" );
	Результат.Вставить( "Логин", "" );
	Результат.Вставить( "Пароль", "" );
	
	Возврат Результат;	
	
КонецФункции

Функция ПараметрыЗапросаСтруктура() Экспорт

	Результат = Новый Структура;
	
	Результат.Вставить( "Метод", 		HTTPМетоды().GET );
	Результат.Вставить( "Адрес", 		"" );
	Результат.Вставить( "Заголовки", 	Новый Соответствие );
	Результат.Вставить( "Данные", 		Неопределено );
	Результат.Вставить( "ИмяФайла", 	Неопределено );
	
	Возврат Результат;
	
КонецФункции

Функция СтруктураURI(Знач СтрокаURI) Экспорт
	
	СтрокаURI = СокрЛП(СтрокаURI);
	
	// схема
	Протокол = "";
	Позиция = Найти(СтрокаURI, "://");
	Если Позиция > 0 Тогда
		Протокол = НРег(Лев(СтрокаURI, Позиция - 1));
		СтрокаURI = Сред(СтрокаURI, Позиция + 3);
	КонецЕсли;

	// строка соединения и путь на сервере
	СтрокаСоединения = СтрокаURI;
	ПутьНаСервере = "";
	Позиция = Найти(СтрокаСоединения, "/");
	Если Позиция > 0 Тогда
		ПутьНаСервере = Сред(СтрокаСоединения, Позиция + 1);
		СтрокаСоединения = Лев(СтрокаСоединения, Позиция - 1);
	КонецЕсли;
		
	// информация пользователя и имя сервера
	СтрокаАвторизации = "";
	Сервер = СтрокаСоединения;
	Позиция = Найти(СтрокаСоединения, "@");
	Если Позиция > 0 Тогда
		СтрокаАвторизации = Лев(СтрокаСоединения, Позиция - 1);
		Сервер = Сред(СтрокаСоединения, Позиция + 1);
	КонецЕсли;
	
	// логин и пароль
	Логин = СтрокаАвторизации;
	Пароль = "";
	Позиция = Найти(СтрокаАвторизации, ":");
	Если Позиция > 0 Тогда
		Логин = Лев(СтрокаАвторизации, Позиция - 1);
		Пароль = Сред(СтрокаАвторизации, Позиция + 1);
	КонецЕсли;
	
	// хост и порт
	Порт = "";
	Позиция = Найти(Сервер, ":");
	Если Позиция > 0 Тогда
		Порт = Сред(Сервер, Позиция + 1);
		Сервер = Лев(Сервер, Позиция - 1);
	КонецЕсли;
	ЗащищенноеСоединение = ?(Протокол = "https", Истина, Ложь);
	
	Если ПустаяСтрока( Порт ) И ЗащищенноеСоединение Тогда 
		Порт = 443;
	КонецЕсли;
	Если ПустаяСтрока( Порт ) И Не ЗащищенноеСоединение Тогда 
		Порт = 80;
	КонецЕсли;
	Если ТипЗнч( Порт ) = Тип("Строка") И Не ПустаяСтрока( Порт ) Тогда
		Порт = Число( Порт );
	КонецЕсли;
	
	Результат = Новый Структура;
	Результат.Вставить("Протокол", 				Протокол);
	Результат.Вставить("ЗащищенноеСоединение", 	ЗащищенноеСоединение );
	Результат.Вставить("Логин", 				Логин);
	Результат.Вставить("Пароль", 				Пароль);
	Результат.Вставить("Сервер", 				Сервер);
	Результат.Вставить("Порт", 					Порт);
	Результат.Вставить("ПутьНаСервере", 		ПутьНаСервере);
	
	Возврат Результат;
	
КонецФункции

Функция НормализацияЗаголовков(Заголовки)
	Если Не (ТипЗнч(Заголовки) = Тип("Соответствие")) Тогда
		Возврат Неопределено;
	КонецЕсли;
	
	Результат = "";
	Для Каждого Элемент Из Заголовки Цикл
		Результат = Результат + Строка(Элемент.Ключ) + ": " + Строка(Элемент.Значение) + Символы.ВК + Символы.ПС;
	КонецЦикла;		
	
	Возврат Результат;
	
КонецФункции

#КонецОбласти

#Область ВспомогательныеПроцедурыДляФона

Процедура ЗаписатьВРегистр_Mon_ВходящиеДанные(ПараметрыЗапросаИмяФайла, Элемент)
	
	ТекстовыйФайл = Новый ТекстовыйДокумент;
	
	ТекстовыйФайл.Прочитать(ПараметрыЗапросаИмяФайла, КодировкаТекста.UTF8, Символы.ВК + Символы.ПС);
    ТекстОтвета = ТекстовыйФайл.ПолучитьТекст();
	
	ТекстОтвета = Mon_Парсер.МонолитПарсерMini( ТекстОтвета );
	
	ЗаписьРегистр = РегистрыСведений.Mon_ВходящиеДанные.СоздатьМенеджерЗаписи();
	
	ЗаписьРегистр.ШлюзОрганизации 	= Элемент.ШлюзОрганизации;
	ЗаписьРегистр.ВидОбмена 		= Элемент.ВидОбмена;
	ЗаписьРегистр.ДатаЗагрузки 		= ТекущаяДата();
	ЗаписьРегистр.ТекстОбмена 		= ТекстОтвета;
	ЗаписьРегистр.Статус 			= Перечисления.Mon_СтатусыОбработкиСтрокиРегистра.НеОбработано;
	ЗаписьРегистр.Записать(Истина);	
	
КонецПроцедуры

Процедура ЗаписатьВРегистр_Mon_ИсходящиеДанные(ПараметрыЗапросаИмяФайла, Элемент)
	
	ТекстовыйФайл = Новый ТекстовыйДокумент;
	
	ТекстовыйФайл.Прочитать(ПараметрыЗапросаИмяФайла, КодировкаТекста.UTF8, Символы.ВК + Символы.ПС);
    ТекстОтвета = ТекстовыйФайл.ПолучитьТекст();
	
	ТекстОтвета = Mon_Парсер.МонолитПарсерMini( ТекстОтвета );
	
	ЗаписьРегистр = РегистрыСведений.Mon_ИсходящиеДанные.СоздатьМенеджерЗаписи();
	
	ЗаписьРегистр.ШлюзОрганизации 	= Элемент.ШлюзОрганизации;
	ЗаписьРегистр.ВидОбмена 		= Элемент.ВидОбмена;
	ЗаписьРегистр.ДатаОбработки		= Элемент.ДатаОбработки;
	ЗаписьРегистр.ДатаОтчета		= Элемент.ДатаОтчета;
	ЗаписьРегистр.ТекстОбмена		= Элемент.ТекстОбмена;
	ЗаписьРегистр.ДатаВыгрузки 		= ТекущаяДата();
	ЗаписьРегистр.Ответ 			= ТекстОтвета;
	ЗаписьРегистр.Статус 			= Перечисления.Mon_СтатусыОбработкиСтрокиРегистра.ОбработаноУспешно;
	
	ЗаписьРегистр.Записать(Истина);	
	
КонецПроцедуры

Процедура ЗаписатьВМассивОшибок(СтруктураРеквизитовДокумента, Комментарий, ЛокализацияПроблемы, НомерСтроки = 0) Экспорт
		
	Структура = Новый Структура("ШлюзОрганизации, ДатаВозникновения, ЛокализацияПроблемы, НомерДокумента, Примечание, НомерСтрокиДокумента",
	СтруктураРеквизитовДокумента.ШлюзОрганизации, ТекущаяДата(), ЛокализацияПроблемы, СтруктураРеквизитовДокумента.НомерЗаказа, Комментарий, НомерСтроки);
	
	СтруктураРеквизитовДокумента.МассивОшибок.добавить(Структура);
	
КонецПроцедуры

Процедура ЗаписатьВЛогМассивОшибок(СтруктураРеквизитовДокумента) Экспорт
	
	НаборЗаписей  = РегистрыСведений.Mon_Логирование.СоздатьНаборЗаписей();
	
	НаборЗаписей.Отбор.НомерДокумента.Установить(СтруктураРеквизитовДокумента.НомерЗаказа);
	НаборЗаписей.Отбор.ШлюзОрганизации.Установить(СтруктураРеквизитовДокумента.ШлюзОрганизации);
	
	Для каждого элемент из СтруктураРеквизитовДокумента.МассивОшибок Цикл
		
		Запись = НаборЗаписей.Добавить();
		
		ЗаполнитьЗначенияСвойств(Запись, элемент);
		Запись.СсылкаНаДокумент = СтруктураРеквизитовДокумента.СсылкаНаДокумент;
	КонецЦикла;
	
	НаборЗаписей.Записать(Истина);
	
	
КонецПроцедуры

#КонецОбласти