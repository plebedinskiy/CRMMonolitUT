
&НаСервере
Процедура СброситьСтатусНаСервере(ШлюзОрганизации,
	ВидОбмена, ДатаЗагрузки, ТекстОбмена, ДатаОбработки)
	// Вставить содержимое обработчика.
	
	НоваяЗапись = РегистрыСведений.Mon_ВходящиеДанные.СоздатьМенеджерЗаписи();
	НоваяЗапись.ШлюзОрганизации	 = ШлюзОрганизации;
	НоваяЗапись.ВидОбмена  = ВидОбмена;
	НоваяЗапись.ДатаЗагрузки = ДатаЗагрузки;
	НоваяЗапись.ТекстОбмена = ТекстОбмена;
	
	НоваяЗапись.Статус = Перечисления.Mon_СтатусыОбработкиСтрокиРегистра.НеОбработано;
	
	НоваяЗапись.ДатаОбработки = ДатаОбработки;
	НоваяЗапись.Записать(Истина);
	
КонецПроцедуры

&НаКлиенте
Процедура СброситьСтатус(Команда)
	данные = ЭтаФорма.ТекущийЭлемент.ТекущиеДанные;
	СброситьСтатусНаСервере(данные.ШлюзОрганизации,
	данные.ВидОбмена,данные.ДатаЗагрузки,данные.ТекстОбмена, данные.ДатаОбработки);
	ОбновитьОтображениеДанных(ЭтаФорма.ТекущийЭлемент);
	
КонецПроцедуры
