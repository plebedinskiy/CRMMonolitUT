&НаКлиенте
Процедура ЗагрузитьЗаказы(Команда)

	ЗагрузитьЗаказыНаСервере();
			
КонецПроцедуры

&НаКлиенте
Процедура ЗагрузитьПриходы(Команда)
	ЗагрузитьПриходыНаСервере();
КонецПроцедуры

&НаСервере
Процедура ЗагрузитьПриходыНаСервере()
	ЭтотОбъектО = РеквизитФормыВЗначение("Объект");
	ЭтотОбъектО.ЗагрузитьПриходы();
КонецПроцедуры


&НаСервере
Процедура ЗагрузитьЗаказыНаСервере()
	
	ЭтотОбъектО = РеквизитФормыВЗначение("Объект");
	ЭтотОбъектО.ЗагрузитьЗаказы();
	
КонецПроцедуры

&НаКлиенте
Процедура ЗаполнитьЗаказыИзРегистра(Команда)
	
	ЗаполнитьЗаказыИзРегистраНаСервере();
	
КонецПроцедуры

&НаСервере
Процедура ЗаполнитьЗаказыИзРегистраНаСервере()
	
	ЭтотОбъектО = РеквизитФормыВЗначение("Объект");
	ЭтотОбъектО.ЗагрузитьИзРегистраЗаказовМонолит();
	
КонецПроцедуры

&НаСервере
Процедура СформироватьОтчетПоСтатусамНаСервере()
	
	ЭтотОбъектО = РеквизитФормыВЗначение("Объект");
	ЭтотОбъектО.СформироватьОтчетПоСтатусам();
	
КонецПроцедуры

&НаКлиенте
Процедура СформироватьОтчетПоСтатусам(Команда)
	СформироватьОтчетПоСтатусамНаСервере();
КонецПроцедуры

&НаСервере
Процедура СформироватьОтчетПоОстаткамНаСервере()
	
	ЭтотОбъектО = РеквизитФормыВЗначение("Объект");
	ЭтотОбъектО.СформироватьОтчетПоОстаткам();
	
КонецПроцедуры

&НаКлиенте
Процедура СформироватьОтчетПоОстаткам(Команда)
	СформироватьОтчетПоОстаткамНаСервере();
КонецПроцедуры

&НаСервере
Процедура СформироватьОтчетПоОстаткамПартиямНаСервере()

	ЭтотОбъектО = РеквизитФормыВЗначение("Объект");
	ЭтотОбъектО.СформироватьОтчетПоОстаткамПартиям();
	
КонецПроцедуры

&НаКлиенте
Процедура СформироватьОтчетПоОстаткамПартиям(Команда)
	СформироватьОтчетПоОстаткамПартиямНаСервере();
КонецПроцедуры

&НаСервере
Процедура СформироватьОтчетПоДвижениямНаСервере()
	
	ЭтотОбъектО = РеквизитФормыВЗначение("Объект");
	ЭтотОбъектО.СформироватьОтчетПоДвижениям();
	
КонецПроцедуры

&НаКлиенте
Процедура СформироватьОтчетПоДвижениям(Команда)
	
	СформироватьОтчетПоДвижениямНаСервере();
	
КонецПроцедуры

&НаСервере
Процедура ОтправитьИсходящиеДанныеВМонолитНаСервере()
	УстановитьПривилегированныйРежим(Истина);
	
	Если Константы.ПараметрыБлокировкиРаботыСВнешнимиРесурсами.Получить().Получить().РаботаСВнешнимиРесурсамиЗаблокирована Тогда
		
		Сообщить("Это копия, отправлять ничего нельзя!!!");
		Возврат;
	КонецЕсли;
	
	ЭтотОбъектО = РеквизитФормыВЗначение("Объект");
	ЭтотОбъектО.ОтправитьИсходящиеДанныеВМонолит();
	УстановитьПривилегированныйРежим(Ложь);
КонецПроцедуры

&НаКлиенте
Процедура ОтправитьИсходящиеДанныеВМонолит(Команда)
	
	ОтправитьИсходящиеДанныеВМонолитНаСервере();
	
КонецПроцедуры

&НаСервере
Процедура СформироватьОтчетСальдоПоТареНаСервере()
	
	ЭтотОбъектО = РеквизитФормыВЗначение("Объект");
	ЭтотОбъектО.СформироватьОтчетПоСальдоПоТаре();
	
КонецПроцедуры

&НаКлиенте
Процедура СформироватьОтчетСальдоПоТаре(Команда)
	
	СформироватьОтчетСальдоПоТареНаСервере();
	
КонецПроцедуры

&НаСервере
Процедура СформироватьОтчетПоПричинамНедопоставкиНаСервере()
	
	ЭтотОбъектО = РеквизитФормыВЗначение("Объект");
	ЭтотОбъектО.СформироватьОтчетПоПричинамНедопоставки();
	
КонецПроцедуры

&НаКлиенте
Процедура СформироватьОтчетПоПричинамНедопоставки(Команда)
	СформироватьОтчетПоПричинамНедопоставкиНаСервере();
КонецПроцедуры

&НаСервере
Процедура ПерегрузитьНедогруженныеЗаказыИзПоследнегоЗапросаНаСервере()
	
	ЭтотОбъектО = РеквизитФормыВЗначение("Объект");
	ЭтотОбъектО.ПерегрузитьНедогруженныеЗаказыИзПоследнегоЗапроса();

КонецПроцедуры

&НаКлиенте
Процедура ПерегрузитьНедогруженныеЗаказыИзПоследнегоЗапроса(Команда)
	ПерегрузитьНедогруженныеЗаказыИзПоследнегоЗапросаНаСервере();
КонецПроцедуры

&НаСервере
Процедура тестНаСервере()
	
	f=1;
		
КонецПроцедуры

&НаКлиенте
Процедура тест(Команда)
	
	ОткрытьФорму("Обработка.Mon_Обмен.Форма.ФормаПроверки");
	тестНаСервере();
	
КонецПроцедуры

&НаСервере
Процедура СформироватьОтчетПоГрафикамДоставкиНаСервере()

	ЭтотОбъектО = РеквизитФормыВЗначение("Объект");
	ЭтотОбъектО.СформироватьОтчетПоГрафикамДоставки();

КонецПроцедуры

&НаКлиенте
Процедура СформироватьОтчетПоГрафикамДоставки(Команда)
	СформироватьОтчетПоГрафикамДоставкиНаСервере();
КонецПроцедуры

&НаСервере
Процедура СформироватьОтчетПоЗапретамОтгрузкиНаСервере()
	
	ЭтотОбъектО = РеквизитФормыВЗначение("Объект");
	ЭтотОбъектО.СформироватьОтчетПоЗапретамОтгрузки();
	
КонецПроцедуры

&НаКлиенте
Процедура СформироватьОтчетПоЗапретамОтгрузки(Команда)
	СформироватьОтчетПоЗапретамОтгрузкиНаСервере();
КонецПроцедуры

&НаСервере
Процедура ЗагрузитьПКОНаСервере()

	ЭтотОбъектО = РеквизитФормыВЗначение("Объект");
	ЭтотОбъектО.ЗагрузитьПКО();
	
КонецПроцедуры

&НаКлиенте
Процедура ЗагрузитьПКО(Команда)
	ЗагрузитьПКОНаСервере();
КонецПроцедуры

&НаКлиенте
Процедура ЗаполнитьПКОИзРегистра(Команда)
	
	ЗаполнитьПКОИзРегистраНаСервере();
	
КонецПроцедуры

&НаКлиенте
Процедура ЗагрузитьПриходыИзРегистра(Команда)
	ЗагрузитьПриходыИзРегистраНаСервере();
КонецПроцедуры

&НаСервере
Процедура ЗагрузитьПриходыИзРегистраНаСервере()
	
	ЭтотОбъектО = РеквизитФормыВЗначение("Объект");
	ЭтотОбъектО.ЗагрузитьИзРегистраПоступленияМонолит();
	
КонецПроцедуры


&НаСервере
Процедура ЗаполнитьПКОИзРегистраНаСервере()
	
	ЭтотОбъектО = РеквизитФормыВЗначение("Объект");
	ЭтотОбъектО.ЗагрузитьИзРегистраПКОМонолит();
	
КонецПроцедуры

&НаКлиенте
Процедура ОткрытьФормуЧистки(Команда)
	
	ОткрытьФорму("Обработка.Mon_Обмен.Форма.ФормаОчистки");
	
КонецПроцедуры
