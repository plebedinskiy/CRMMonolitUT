Функция СведенияОВнешнейОбработке() Экспорт
  ПараметрыРегистрации = Новый Структура;
  ПараметрыРегистрации.Вставить("Вид", "ДополнительнаяОбработка");
  ПараметрыРегистрации.Вставить("Наименование", "Обмен данными CRM:Monolit"); 
  ПараметрыРегистрации.Вставить("Версия", "1.0.11");
  ПараметрыРегистрации.Вставить("БезопасныйРежим", Ложь);
  ПараметрыРегистрации.Вставить("Информация", "Обмен данными CRM:Monolit"); 
  ПараметрыРегистрации.Вставить("ВерсияБСП", "2.3.6.152");
  ТаблицаКоманд = ПолучитьТаблицуКоманд();
  ДобавитьКоманду(ТаблицаКоманд,
          "Загрузка заказов монолит", 
          "ЗагрузкаЗаказовМонолит", 
          "ВызовСерверногоМетода");
  ПараметрыРегистрации.Вставить("Команды", ТаблицаКоманд);
  ДобавитьКоманду(ТаблицаКоманд,
          "Загрузить ПКО из монолита", 
          "ЗагрузитьПКО", 
          "ВызовСерверногоМетода");
  ПараметрыРегистрации.Вставить("Команды", ТаблицаКоманд);
  
  
  
  ДобавитьКоманду(ТаблицаКоманд,
          "Загрузить из регистра заказов монолит", 
          "ЗагрузитьИзРегистраЗаказовМонолит", 
          "ВызовСерверногоМетода");
  ПараметрыРегистрации.Вставить("Команды", ТаблицаКоманд);
  
  ДобавитьКоманду(ТаблицаКоманд,
          "Загрузить из регистра ПКО монолит", 
          "ЗагрузитьИзРегистраПКОМонолит", 
          "ВызовСерверногоМетода");
  ПараметрыРегистрации.Вставить("Команды", ТаблицаКоманд);
 
   ДобавитьКоманду(ТаблицаКоманд,
          "Загрузить Поступления из регистра монолит", 
          "ЗагрузитьИзРегистраПоступленияМонолит", 
          "ВызовСерверногоМетода");
	ПараметрыРегистрации.Вставить("Команды", ТаблицаКоманд);
	
	ДобавитьКоманду(ТаблицаКоманд,
          "Загрузить из Поступления из монолит", 
          "ЗагрузитьПриходы", 
          "ВызовСерверногоМетода");
	ПараметрыРегистрации.Вставить("Команды", ТаблицаКоманд); 
  
   ДобавитьКоманду(ТаблицаКоманд,
          "Сформировать отчет по статусам", 
          "СформироватьОтчетПоСтатусам", 
          "ВызовСерверногоМетода");
  ПараметрыРегистрации.Вставить("Команды", ТаблицаКоманд);
  
  ДобавитьКоманду(ТаблицаКоманд,
          "Сформировать отчет по остаткам", 
          "СформироватьОтчетПоОстаткам", 
          "ВызовСерверногоМетода");
  ПараметрыРегистрации.Вставить("Команды", ТаблицаКоманд);

  ДобавитьКоманду(ТаблицаКоманд,
          "Сформировать отчет по остаткам - партиям", 
          "СформироватьОтчетПоОстаткамПартиям", 
          "ВызовСерверногоМетода");
  ПараметрыРегистрации.Вставить("Команды", ТаблицаКоманд);
  
  ДобавитьКоманду(ТаблицаКоманд,
          "Сформировать отчет по движениям", 
          "СформироватьОтчетПоДвижениям", 
          "ВызовСерверногоМетода");
  ПараметрыРегистрации.Вставить("Команды", ТаблицаКоманд);
  
  ДобавитьКоманду(ТаблицаКоманд,
          "Сформировать отчет по причинам недопоставки", 
          "СформироватьОтчетПоПричинамНедопоставки", 
          "ВызовСерверногоМетода");
  ПараметрыРегистрации.Вставить("Команды", ТаблицаКоманд);
  
  ДобавитьКоманду(ТаблицаКоманд,
          "Сформировать отчет по сальдо по таре", 
          "СформироватьОтчетПоДвижениям", 
          "ВызовСерверногоМетода");
  ПараметрыРегистрации.Вставить("Команды", ТаблицаКоманд);

  
  ДобавитьКоманду(ТаблицаКоманд,
          "Сформировать отчет по графикам доставки", 
          "СформироватьОтчетПоГрафикамДоставки", 
          "ВызовСерверногоМетода");
  ПараметрыРегистрации.Вставить("Команды", ТаблицаКоманд);  
  
  ДобавитьКоманду(ТаблицаКоманд,
          "Сформировать отчет по запретам отгрузки", 
          "СформироватьОтчетПоЗапретамОтгрузки", 
          "ВызовСерверногоМетода");
  ПараметрыРегистрации.Вставить("Команды", ТаблицаКоманд);       
  
  ДобавитьКоманду(ТаблицаКоманд,
          "Отправить исходящие данные в монолит", 
          "ОтправитьИсходящиеДанныеВМонолит", 
          "ВызовСерверногоМетода");
  ПараметрыРегистрации.Вставить("Команды", ТаблицаКоманд);  
  
  Возврат ПараметрыРегистрации;
  
КонецФункции

Функция ПолучитьТаблицуКоманд()
	
	Команды = Новый ТаблицаЗначений;
	Команды.Колонки.Добавить("Представление", Новый ОписаниеТипов("Строка"));
	Команды.Колонки.Добавить("Идентификатор", Новый ОписаниеТипов("Строка"));
	Команды.Колонки.Добавить("Использование", Новый ОписаниеТипов("Строка"));
	Команды.Колонки.Добавить("ПоказыватьОповещение", Новый ОписаниеТипов("Булево"));
	Команды.Колонки.Добавить("Модификатор", Новый ОписаниеТипов("Строка"));
	
	Возврат Команды;
	
КонецФункции  

Процедура ДобавитьКоманду(ТаблицаКоманд, Представление, Идентификатор, Использование, ПоказыватьОповещение = Ложь, Модификатор = "")
	
	НоваяКоманда = ТаблицаКоманд.Добавить();
	НоваяКоманда.Представление = Представление;
	НоваяКоманда.Идентификатор = Идентификатор;
	НоваяКоманда.Использование = Использование;
	НоваяКоманда.ПоказыватьОповещение = ПоказыватьОповещение;
	НоваяКоманда.Модификатор = Модификатор;
	
КонецПроцедуры

Процедура ВыполнитьКоманду(ИдентификаторКоманды, ПараметрыВыполненияКоманды) Экспорт
	
	// Реализация логики команды

	Если ИдентификаторКоманды = "ЗагрузкаЗаказовМонолит" Тогда
		ЗагрузитьЗаказы();
	ИначеЕсли ИдентификаторКоманды = "ЗагрузитьИзРегистраЗаказовМонолит" Тогда
		ЗагрузитьИзРегистраЗаказовМонолит();
	ИначеЕсли ИдентификаторКоманды = "ЗагрузитьПКО" Тогда
		ЗагрузитьПКО();	
	ИначеЕсли ИдентификаторКоманды = "ЗагрузитьПриходы" Тогда
		ЗагрузитьПриходы();
	ИначеЕсли ИдентификаторКоманды = "ЗагрузитьИзРегистраПоступленияМонолит" Тогда
		ЗагрузитьИзРегистраПоступленияМонолит();
	ИначеЕсли ИдентификаторКоманды = "ЗагрузитьИзРегистраПКОМонолит" Тогда	
		ЗагрузитьИзРегистраПКОМонолит();
	ИначеЕсли ИдентификаторКоманды = "СформироватьОтчетПоСтатусам" Тогда
		СформироватьОтчетПоСтатусам();
	ИначеЕсли ИдентификаторКоманды = "СформироватьОтчетПоОстаткам" Тогда
		СформироватьОтчетПоОстаткам();
	ИначеЕсли ИдентификаторКоманды = "СформироватьОтчетПоОстаткамПартиям" Тогда
		СформироватьОтчетПоОстаткамПартиям();
	ИначеЕсли ИдентификаторКоманды = "СформироватьОтчетПоПричинамНедопоставки" Тогда
		СформироватьОтчетПоПричинамНедопоставки();
	ИначеЕсли ИдентификаторКоманды = "СформироватьОтчетПоДвижениям" Тогда
		СформироватьОтчетПоДвижениям();
	ИначеЕсли ИдентификаторКоманды = "СформироватьОтчетПоСальдоПоТаре" Тогда
		СформироватьОтчетПоСальдоПоТаре();
	ИначеЕсли ИдентификаторКоманды = "СформироватьОтчетПоГрафикамДоставки" Тогда
		СформироватьОтчетПоГрафикамДоставки();
	ИначеЕсли ИдентификаторКоманды = "СформироватьОтчетПоЗапретамОтгрузки" Тогда
		СформироватьОтчетПоЗапретамОтгрузки();
	ИначеЕсли ИдентификаторКоманды = "ОтправитьИсходящиеДанныеВМонолит" Тогда
		ОтправитьИсходящиеДанныеВМонолит();
	КонецЕсли;
		
КонецПроцедуры

Процедура ЗагрузитьЗаказы() Экспорт

	Mon_Сервис.ПолучениеЗаказовПоВсемАктивнымШлюзам();	
	
КонецПроцедуры

Процедура ЗагрузитьИзРегистраЗаказовМонолит() Экспорт

	
	Mon_ЧтениеРегистра.ЗагрузитьИзРегистраЗаказовМонолит();	
	
КонецПроцедуры

Процедура ЗагрузитьИзРегистраПКОМонолит() Экспорт

	Mon_ЧтениеРегистра.ЗагрузитьИзРегистраПКОМонолит();	
	
КонецПроцедуры

Процедура ЗагрузитьПриходы() Экспорт
	
	 Mon_Сервис.ПолучениеПриходовПоВсемАктивнымШлюзам();
	 
КонецПроцедуры

Процедура ЗагрузитьИзРегистраПоступленияМонолит() Экспорт
	
	Mon_ЧтениеРегистра.ЗагрузитьИзРегистраПоступленияМонолит();
	
КонецПроцедуры



Процедура СформироватьОтчетПоСтатусам() Экспорт

	УстановитьПривилегированныйРежим(Истина);
	Mon_ЗаписьВРегистр.ЗаписьЗапросаСтатусовДокументовВРегистрПоВсемАктивнымШлюзам();	
	УстановитьПривилегированныйРежим(Ложь);
КонецПроцедуры

Процедура СформироватьОтчетПоПричинамНедопоставки() Экспорт	
	
	УстановитьПривилегированныйРежим(Истина);
	Если Не ЗначениеЗаполнено(ШлюзОрганизации) Тогда
		
		Mon_ЗаписьВРегистр.ЗаписьЗапросаПричинНедопоставкиВРегистрПоВсемАктивнымШлюзам();
		
	Иначе
		
		ДатаОтчета = ПериодВыгрузки.ДатаНачала;
		
		Пока ДатаОтчета <= ПериодВыгрузки.ДатаОкончания Цикл
			Параметры 			 	= Новый Массив;
			МассивСтруктурШлюзов 	= Новый Массив;
		
			СтруктурыШлюзов 				= Mon_Общий.ЗаполнитьПараметрыСтруктурШлюзов();
			СтруктурыШлюзов.ШлюзОрганизации = ШлюзОрганизации;
			СтруктурыШлюзов.Шлюз 			= ШлюзОрганизации.Наименование;
			СтруктурыШлюзов.ДатаОтчета		= ДатаОтчета;
			СтруктурыШлюзов.Пароль 			= ШлюзОрганизации.Пароль;
			СтруктурыШлюзов.ВебАдрес 		= ШлюзОрганизации.ТипМонолита.ВебАдрес;
			СтруктурыШлюзов.ВидОбмена 		= Перечисления.Mon_ВидыОбменов.CRMOrdRspEx;
			СтруктурыШлюзов.ФлагУдаления 	= ?(ВыгружатьСУдалением, "0", "1");
			
			МассивСтруктурШлюзов.Добавить(СтруктурыШлюзов);
			
			Если ИспользоватьФоновыеЗадания Тогда
				
				Параметры.Добавить(МассивСтруктурШлюзов);
				ФоновыеЗадания.Выполнить("Mon_ЗаписьВРегистр.ВыполнитьЗаписьЗапросаПричинНедопоставкиВРегистрФоном", 
		    		Параметры, Новый УникальныйИдентификатор, "Фоновое выполнение СRMMonolit");	
					
				Параметры.Очистить();
				
			Иначе
				
				Mon_ЗаписьВРегистр.ВыполнитьЗаписьЗапросаПричинНедопоставкиВРегистрФоном(МассивСтруктурШлюзов);
				
			КонецЕсли;
	   		ДатаОтчета = ДатаОтчета + 86400;
		КонецЦикла;
	КонецЕсли;
	УстановитьПривилегированныйРежим(Ложь);
КонецПроцедуры

Процедура СформироватьОтчетПоОстаткам() Экспорт

	УстановитьПривилегированныйРежим(Истина);
	Если Не ЗначениеЗаполнено(ШлюзОрганизации) Тогда
		
		Mon_ЗаписьВРегистр.ЗаписьЗапросаОстатковВРегистрПоВсемАктивнымШлюзам();
		
	Иначе
		
		ДатаОтчета = ПериодВыгрузки.ДатаНачала;
		
		Пока ДатаОтчета <= ПериодВыгрузки.ДатаОкончания Цикл
			
			
			
			Параметры 			 	= Новый Массив;
			МассивСтруктурШлюзов 	= Новый Массив;
		
			СтруктурыШлюзов 				= Mon_Общий.ЗаполнитьПараметрыСтруктурШлюзов();
			СтруктурыШлюзов.ШлюзОрганизации = ШлюзОрганизации;
			СтруктурыШлюзов.Шлюз 			= ШлюзОрганизации.Наименование;
			СтруктурыШлюзов.ДатаОтчета		= ДатаОтчета;
			СтруктурыШлюзов.Пароль 			= ШлюзОрганизации.Пароль;
			СтруктурыШлюзов.ВебАдрес 		= ШлюзОрганизации.ТипМонолита.ВебАдрес;
			СтруктурыШлюзов.ВидОбмена 		= Перечисления.Mon_ВидыОбменов.CRMWhBalanceEx;
			СтруктурыШлюзов.ФлагУдаления 	= ?(ВыгружатьСУдалением, "0", "1");
			
			МассивСтруктурШлюзов.Добавить(СтруктурыШлюзов);
			
			Если ИспользоватьФоновыеЗадания Тогда
				
				Параметры.Добавить(МассивСтруктурШлюзов);
				ФоновыеЗадания.Выполнить("Mon_ЗаписьВРегистр.ВыполнитьЗаписьЗапросаОстатковВРегистрФоном", 
		    		Параметры, Новый УникальныйИдентификатор, "Фоновое выполнение СRMMonolit");	
					
				Параметры.Очистить();
				
			Иначе
				
				Mon_ЗаписьВРегистр.ВыполнитьЗаписьЗапросаОстатковВРегистрФоном(МассивСтруктурШлюзов);
				
			КонецЕсли;			  
			ДатаОтчета = ДатаОтчета + 86400;
		КонецЦикла;	
	КонецЕсли;
	УстановитьПривилегированныйРежим(Ложь);	
	
КонецПроцедуры

Процедура СформироватьОтчетПоОстаткамПартиям() Экспорт

	УстановитьПривилегированныйРежим(Истина);
	Если Не ЗначениеЗаполнено(ШлюзОрганизации) Тогда
		
		Mon_ЗаписьВРегистр.ЗаписьЗапросаОстатковПоПартиямВРегистрПоВсемАктивнымШлюзам();
		
	Иначе
		ДатаОтчета = ПериодВыгрузки.ДатаНачала;
		
		Пока ДатаОтчета <= ПериодВыгрузки.ДатаОкончания Цикл
			
			Параметры 			 	= Новый Массив;
			МассивСтруктурШлюзов 	= Новый Массив;
		
			СтруктурыШлюзов 				= Mon_Общий.ЗаполнитьПараметрыСтруктурШлюзов();
			СтруктурыШлюзов.ШлюзОрганизации = ШлюзОрганизации;
			СтруктурыШлюзов.Шлюз 			= ШлюзОрганизации.Наименование;
			СтруктурыШлюзов.ДатаОтчета		= ДатаОтчета;
			СтруктурыШлюзов.Пароль 			= ШлюзОрганизации.Пароль;
			СтруктурыШлюзов.ВебАдрес 		= ШлюзОрганизации.ТипМонолита.ВебАдрес;
			СтруктурыШлюзов.ВидОбмена 		= Перечисления.Mon_ВидыОбменов.CRMWhBalanceExParts;
			СтруктурыШлюзов.ФлагУдаления 	= ?(ВыгружатьСУдалением, "0", "1");
			
			МассивСтруктурШлюзов.Добавить(СтруктурыШлюзов);
			
			Если ИспользоватьФоновыеЗадания Тогда
				
				Параметры.Добавить(МассивСтруктурШлюзов);
				ФоновыеЗадания.Выполнить("Mon_ЗаписьВРегистр.ВыполнитьЗаписьЗапросаОстатковПоПартиямВРегистрФоном", 
		    		Параметры, Новый УникальныйИдентификатор, "Фоновое выполнение СRMMonolit");	
					
				Параметры.Очистить();
				
			Иначе
				
				Mon_ЗаписьВРегистр.ВыполнитьЗаписьЗапросаОстатковПоПартиямВРегистрФоном(МассивСтруктурШлюзов);
				
			КонецЕсли;

	   		ДатаОтчета = ДатаОтчета + 86400;
		КонецЦикла;
	КонецЕсли;	
	УстановитьПривилегированныйРежим(Ложь);	
КонецПроцедуры

Процедура СформироватьОтчетПоДвижениям() Экспорт

	УстановитьПривилегированныйРежим(Истина);
	Если Не ЗначениеЗаполнено(ШлюзОрганизации) Тогда
		
		Mon_ЗаписьВРегистр.ЗаписьЗапросаДвиженийВРегистрПоВсемАктивнымШлюзам();
		
	Иначе
		
		ДатаОтчета = ПериодВыгрузки.ДатаНачала;
		
		Пока ДатаОтчета <= ПериодВыгрузки.ДатаОкончания Цикл
			Параметры 			 	= Новый Массив;
			МассивСтруктурШлюзов 	= Новый Массив;
		
			СтруктурыШлюзов 				= Mon_Общий.ЗаполнитьПараметрыСтруктурШлюзов();
			СтруктурыШлюзов.ШлюзОрганизации = ШлюзОрганизации;
			СтруктурыШлюзов.Шлюз 			= ШлюзОрганизации.Наименование;
			СтруктурыШлюзов.ДатаОтчета		= ДатаОтчета;
			СтруктурыШлюзов.Пароль 			= ШлюзОрганизации.Пароль;
			СтруктурыШлюзов.ВебАдрес 		= ШлюзОрганизации.ТипМонолита.ВебАдрес;
			СтруктурыШлюзов.ВидОбмена 		= Перечисления.Mon_ВидыОбменов.CRMDespatchEx;
			СтруктурыШлюзов.ФлагУдаления 	= ?(ВыгружатьСУдалением, "0", "1");
			
			МассивСтруктурШлюзов.Добавить(СтруктурыШлюзов);
			
			Если ИспользоватьФоновыеЗадания Тогда
				
				Параметры.Добавить(МассивСтруктурШлюзов);
				ФоновыеЗадания.Выполнить("Mon_ЗаписьВРегистр.ВыполнитьЗаписьЗапросаДвиженийВРегистрФоном", 
		    		Параметры, Новый УникальныйИдентификатор, "Фоновое выполнение СRMMonolit");	
					
				Параметры.Очистить();
				
			Иначе
				
				Mon_ЗаписьВРегистр.ВыполнитьЗаписьЗапросаДвиженийВРегистрФоном(МассивСтруктурШлюзов);
				
			КонецЕсли;
			ДатаОтчета = ДатаОтчета + 86400;
		КонецЦикла;	
	КонецЕсли;		
	УстановитьПривилегированныйРежим(Ложь);
КонецПроцедуры

Процедура СформироватьОтчетПоСальдоПоТаре() Экспорт
	
	УстановитьПривилегированныйРежим(Истина);
	Если Не ЗначениеЗаполнено(ШлюзОрганизации) Тогда
		
		Mon_ЗаписьВРегистр.ЗаписьЗапросаСальдоПоТареВРегистрПоВсемАктивнымШлюзам();
		
	Иначе
		
		ДатаОтчета = ПериодВыгрузки.ДатаНачала;
		
		Пока ДатаОтчета <= ПериодВыгрузки.ДатаОкончания Цикл
			Параметры 			 	= Новый Массив;
			МассивСтруктурШлюзов 	= Новый Массив;
		
			СтруктурыШлюзов 				= Mon_Общий.ЗаполнитьПараметрыСтруктурШлюзов();
			СтруктурыШлюзов.ШлюзОрганизации = ШлюзОрганизации;
			СтруктурыШлюзов.Шлюз 			= ШлюзОрганизации.Наименование;
			СтруктурыШлюзов.ДатаОтчета		= ДатаОтчета;
			СтруктурыШлюзов.Пароль 			= ШлюзОрганизации.Пароль;
			СтруктурыШлюзов.ВебАдрес 		= ШлюзОрганизации.ТипМонолита.ВебАдрес;
			СтруктурыШлюзов.ВидОбмена 		= Перечисления.Mon_ВидыОбменов.CRMSaldoEx;
			СтруктурыШлюзов.ФлагУдаления 	= ?(ВыгружатьСУдалением, "0", "1");
			
			МассивСтруктурШлюзов.Добавить(СтруктурыШлюзов);
			
			Если ИспользоватьФоновыеЗадания Тогда
				
				Параметры.Добавить(МассивСтруктурШлюзов);
				ФоновыеЗадания.Выполнить("Mon_ЗаписьВРегистр.ВыполнитьЗаписьЗапросаСальдоПоТареВРегистрФоном", 
		    		Параметры, Новый УникальныйИдентификатор, "Фоновое выполнение СRMMonolit");	
					
				Параметры.Очистить();
				
			Иначе
				
				Mon_ЗаписьВРегистр.ВыполнитьЗаписьЗапросаСальдоПоТареВРегистрФоном(МассивСтруктурШлюзов);
				
			КонецЕсли;
			ДатаОтчета = ДатаОтчета + 86400;
		КонецЦикла;	
	КонецЕсли;
	
	УстановитьПривилегированныйРежим(Ложь);
	
КонецПроцедуры

Процедура СформироватьОтчетПоГрафикамДоставки() Экспорт
	
	УстановитьПривилегированныйРежим(Истина);
	Если Не ЗначениеЗаполнено(ШлюзОрганизации) Тогда
		
		Mon_ЗаписьВРегистр.ЗаписьЗапросаГрафикаДоставкиВРегистрПоВсемАктивнымШлюзам();
		
	Иначе
		
		ДатаОтчета = ПериодВыгрузки.ДатаНачала;
		
		Пока ДатаОтчета <= ПериодВыгрузки.ДатаОкончания Цикл
			Параметры 			 	= Новый Массив;
			МассивСтруктурШлюзов 	= Новый Массив;
		
			СтруктурыШлюзов 				= Mon_Общий.ЗаполнитьПараметрыСтруктурШлюзов();
			СтруктурыШлюзов.ШлюзОрганизации = ШлюзОрганизации;
			СтруктурыШлюзов.Шлюз 			= ШлюзОрганизации.Наименование;
			СтруктурыШлюзов.ДатаОтчета		= ДатаОтчета;
			СтруктурыШлюзов.Пароль 			= ШлюзОрганизации.Пароль;
			СтруктурыШлюзов.ВебАдрес 		= ШлюзОрганизации.ТипМонолита.ВебАдрес;
			СтруктурыШлюзов.ВидОбмена 		= Перечисления.Mon_ВидыОбменов.CRMDeliverySchedule;
			СтруктурыШлюзов.ФлагУдаления 	= ?(ВыгружатьСУдалением, "0", "1");
			
			МассивСтруктурШлюзов.Добавить(СтруктурыШлюзов);
			
			Если ИспользоватьФоновыеЗадания Тогда
				
				Параметры.Добавить(МассивСтруктурШлюзов);
				ФоновыеЗадания.Выполнить("Mon_ЗаписьВРегистр.ВыполнитьЗаписьЗапросаГрафикаДоставкиВРегистрФоном", 
		    		Параметры, Новый УникальныйИдентификатор, "Фоновое выполнение СRMMonolit");	
					
				Параметры.Очистить();
				
			Иначе
				
				Mon_ЗаписьВРегистр.ВыполнитьЗаписьЗапросаГрафикаДоставкиВРегистрФоном(МассивСтруктурШлюзов);
				
			КонецЕсли;
			ДатаОтчета = ДатаОтчета + 86400;
		КонецЦикла;	
	КонецЕсли;
	УстановитьПривилегированныйРежим(Ложь);
КонецПроцедуры

Процедура ЗагрузитьПКО() Экспорт
	
	 Mon_Сервис.ПолучениеПКОПоВсемАктивнымШлюзам();
	 
КонецПроцедуры

Процедура СформироватьОтчетПоЗапретамОтгрузки() Экспорт
	
	УстановитьПривилегированныйРежим(Истина);
	Если Не ЗначениеЗаполнено(ШлюзОрганизации) Тогда
		
		Mon_ЗаписьВРегистр.ЗаписьЗапросаСпискаБлокированныхКлиентовВРегистрПоВсемАктивнымШлюзам();
		
	Иначе
		
		ДатаОтчета = ПериодВыгрузки.ДатаНачала;
		
		Пока ДатаОтчета <= ПериодВыгрузки.ДатаОкончания Цикл
			Параметры 			 	= Новый Массив;
			МассивСтруктурШлюзов 	= Новый Массив;
		
			СтруктурыШлюзов 				= Mon_Общий.ЗаполнитьПараметрыСтруктурШлюзов();
			СтруктурыШлюзов.ШлюзОрганизации = ШлюзОрганизации;
			СтруктурыШлюзов.Шлюз 			= ШлюзОрганизации.Наименование;
			СтруктурыШлюзов.ДатаОтчета		= ДатаОтчета;
			СтруктурыШлюзов.Пароль 			= ШлюзОрганизации.Пароль;
			СтруктурыШлюзов.ВебАдрес 		= ШлюзОрганизации.ТипМонолита.ВебАдрес;
			СтруктурыШлюзов.ВидОбмена 		= Перечисления.Mon_ВидыОбменов.CRMClientAddressBanEx;
			СтруктурыШлюзов.ФлагУдаления 	= ?(ВыгружатьСУдалением, "0", "1");
			
			МассивСтруктурШлюзов.Добавить(СтруктурыШлюзов);
			
			Если ИспользоватьФоновыеЗадания Тогда
				
				Параметры.Добавить(МассивСтруктурШлюзов);
				ФоновыеЗадания.Выполнить("Mon_ЗаписьВРегистр.ВыполнитьЗаписьЗапросаСпискаБлокированныхКлиентовВРегистрФоном", 
		    		Параметры, Новый УникальныйИдентификатор, "Фоновое выполнение СRMMonolit");	
					
				Параметры.Очистить();
				
			Иначе
				
				Mon_ЗаписьВРегистр.ВыполнитьЗаписьЗапросаСпискаБлокированныхКлиентовВРегистрФоном(МассивСтруктурШлюзов);
				
			КонецЕсли;
			ДатаОтчета = ДатаОтчета + 86400;
		КонецЦикла;	
	КонецЕсли;
	УстановитьПривилегированныйРежим(Ложь);
	
КонецПроцедуры

Процедура ОтправитьИсходящиеДанныеВМонолит() Экспорт
	
	УстановитьПривилегированныйРежим(Истина);
	Если Константы.ПараметрыБлокировкиРаботыСВнешнимиРесурсами.Получить().Получить().РаботаСВнешнимиРесурсамиЗаблокирована Тогда
		Возврат;
	КонецЕсли;

	
	Mon_ОтправкаДанныхИсходящегоРегистра.ВыполнитьОтправкуДанныхИсходящегоРегистраМонолит();
	УстановитьПривилегированныйРежим(Ложь);
КонецПроцедуры

Процедура ПерегрузитьНедогруженныеЗаказыИзПоследнегоЗапроса() Экспорт
	УстановитьПривилегированныйРежим(Истина);
	Если Не ЗначениеЗаполнено(ШлюзОрганизации) Тогда
		
		Mon_ЗаписьВРегистр.ЗаписьЗапросаОстатковВРегистрПоВсемАктивнымШлюзам();
		
	Иначе
		ДатаОтчета = ПериодВыгрузки.ДатаНачала;
		
		Пока ДатаОтчета <= ПериодВыгрузки.ДатаОкончания Цикл
			
			Параметры 			 	= Новый Массив;
			МассивСтруктурШлюзов 	= Новый Массив;
		
			СтруктурыШлюзов 								= Mon_Общий.ЗаполнитьПараметрыСтруктурШлюзов();
			СтруктурыШлюзов.ШлюзОрганизации 				= ШлюзОрганизации;
			СтруктурыШлюзов.Шлюз 							= ШлюзОрганизации.Наименование;
			СтруктурыШлюзов.ДатаОтчета						= ДатаОтчета;
			СтруктурыШлюзов.Пароль 							= ШлюзОрганизации.Пароль;
			СтруктурыШлюзов.ВебАдрес 						= ШлюзОрганизации.ТипМонолита.ВебАдрес;
			СтруктурыШлюзов.ВидОбмена 						= Перечисления.Mon_ВидыОбменов.CRMOrder;
			СтруктурыШлюзов.ФлагУдаления 					= ?(ВыгружатьСУдалением, "0", "1");
			СтруктурыШлюзов.КоличествоЗапросовКПеречитке 	= 1;
			
			МассивСтруктурШлюзов.Добавить(СтруктурыШлюзов);
			
			Если ИспользоватьФоновыеЗадания Тогда
				
				Параметры.Добавить(МассивСтруктурШлюзов);
				ФоновыеЗадания.Выполнить("Mon_ЧтениеРегистра.ВыполнитьЧтениеРегистраФоном", 
		    		Параметры, Новый УникальныйИдентификатор, "Фоновое выполнение СRMMonolit");	
					
				Параметры.Очистить();
				
			Иначе
				
				Mon_ЧтениеРегистра.ВыполнитьЧтениеРегистраФоном(МассивСтруктурШлюзов);
				
			КонецЕсли;
	    ДатаОтчета = ДатаОтчета + 86400;
		КонецЦикла;
	КонецЕсли;
	УстановитьПривилегированныйРежим(Ложь);
КонецПроцедуры
