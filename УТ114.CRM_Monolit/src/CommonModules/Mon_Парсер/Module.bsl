
Функция НеобходимыеДокументы() 
	
	Результат = Новый Массив;
	
	// Поступление от поставщика
	Результат.Добавить( "CRMVendReceipt" );
	Результат.Добавить( "CRMOrder" );
	Результат.Добавить( "CRMWare" );
	Результат.Добавить( "CRMDespatch" );
	Результат.Добавить( "CRMCreditCashOrder" );
	Результат.Добавить( "CRMCreditCashOrderOption" );
	
	
	Возврат Результат;
	
КонецФункции	

Функция СобратьДанныеСтруктурТаблицаЗначений( Элемент, НеобходимыеДокументы )
	
	Таблица = Новый ТаблицаЗначений;
	Таблица.Колонки.Добавить( "Родитель", 		УстановитьТипДанных( Тип("Строка"), 50 ) );
	Таблица.Колонки.Добавить( "Наименование", 	УстановитьТипДанных( Тип("Строка"), 50 ) );
	Таблица.Колонки.Добавить( "Тип", 			УстановитьТипДанных( Тип("Строка"), 20 ) );

	
	Для Каждого el_s Из Элемент Цикл	
		Для Каждого el_d Из el_s.ДочерниеУзлы Цикл 
				
			НаименованиеСтруктурыДокумента = Неопределено;
			Если el_d.ЕстьАтрибут("name") Тогда
				НаименованиеСтруктурыДокумента = el_d.ПолучитьАтрибут("name");	
			КонецЕсли;
			
			Если НеобходимыеДокументы.Найти(НаименованиеСтруктурыДокумента) = Неопределено Тогда
				Продолжить;		
			КонецЕсли;
			
				
			Для Каждого el_df Из el_d.ДочерниеУзлы Цикл 		
				Если el_df.ИмяУзла = "f" Тогда
						
					НоваяСтрока = Таблица.Добавить();
					НоваяСтрока.Родитель = НаименованиеСтруктурыДокумента;	
					НоваяСтрока.Наименование = el_df.ПолучитьАтрибут("name");			
					НоваяСтрока.Тип = el_df.ПолучитьАтрибут("type");
						
				КонецЕсли;
					
				Если el_df.ИмяУзла = "d" Тогда
						
					НаименованиеСтруктурыРодителя = el_df.ПолучитьАтрибут("name");
						
					НоваяСтрока = Таблица.Добавить();
					НоваяСтрока.Родитель = НаименованиеСтруктурыДокумента; 
					НоваяСтрока.Наименование = НаименованиеСтруктурыРодителя;
					НоваяСтрока.Тип = "Array";
						
					Для Каждого el_df_f Из el_df.ДочерниеУзлы Цикл
							
						НоваяСтрока = Таблица.Добавить();
						НоваяСтрока.Родитель = НаименованиеСтруктурыРодителя;
						НоваяСтрока.Наименование = el_df_f.ПолучитьАтрибут("name");			
						НоваяСтрока.Тип = el_df_f.ПолучитьАтрибут("type");
							
					КонецЦикла; // el_df_f		
				КонецЕсли;
			КонецЦикла; // el_df 
		КонецЦикла;	// el_d	
	КонецЦикла; // el_s
	
	Возврат Таблица;
КонецФункции

Функция ПолучитьСтруктуру( НаборСтруктур, НаименованиеСтруктуры )
	
	НайденнаяСтруктура = НаборСтруктур.НайтиСтроки( Новый Структура( "Родитель", НаименованиеСтруктуры ) );
	// Выходим нужной структуры нет!
	Если НайденнаяСтруктура.Количество() = 0 Тогда
		Возврат Неопределено;
	КонецЕсли;
	
	
	Результат = Новый Структура;
	Для Каждого Элемент Из НайденнаяСтруктура Цикл
		
		Если Элемент.Тип = "String" Тогда 
			Значение = "";
		ИначеЕсли Элемент.Тип = "Date" Тогда
			Значение = Дата(1,1,1,0,0,0);
		ИначеЕсли Элемент.Тип = "Integer" Тогда
			Значение = 0;
		ИначеЕсли Элемент.Тип = "Double" Или Элемент.Тип = "Decimal" Тогда
			Значение = 0.00;
		ИначеЕсли Элемент.Тип = "Array" Тогда
			Значение = Новый Массив;
		Иначе
			Значение = "";
		КонецЕсли;
		
		Результат.Вставить( Элемент.Наименование, Значение );
		
	КонецЦикла;
	
	Возврат Результат;
	
КонецФункции

Функция ПолучитьМассивы( НаборСтруктур, НаименованиеСтруктуры )
	
	НайденнаяСтруктура = НаборСтруктур.НайтиСтроки( Новый Структура( "Родитель", НаименованиеСтруктуры ) );
	// Выходим нужной структуры нет!
	Если НайденнаяСтруктура.Количество() = 0 Тогда
		Возврат Неопределено;
	КонецЕсли;
	
	Наименование = НаборСтруктур.Скопировать( НайденнаяСтруктура, "Наименование" ).ВыгрузитьКолонку( "Наименование" );
	Тип = НаборСтруктур.Скопировать( НайденнаяСтруктура, "Тип" ).ВыгрузитьКолонку( "Тип" );
	
	Возврат Новый Структура("Наименование,Тип", Наименование, Тип );
	
КонецФункции

Функция ПриведениеТипов( Тип, Значение )
	
	Если Тип = "Date" Тогда
		Попытка
			Возврат Дата( СтрокаВДата( Значение ) );
		Исключение
			Возврат Неопределено;
		КонецПопытки;
	ИначеЕсли Тип = "Integer" Или Тип = "Double" Или Тип = "Decimal" Тогда
		Попытка 
			Возврат Число( Значение );
		Исключение
			Возврат Неопределено;
		КонецПопытки;
	Иначе
		Возврат Значение;
	КонецЕсли;
	
КонецФункции

Функция СтрокаВДата( Строка )
	// 2018-03-06T13:52:00+03:00
	
	ЛишниеСимволы = Новый Массив;
	ЛишниеСимволы.Добавить( "+" );
	ЛишниеСимволы.Добавить( "-" );
	ЛишниеСимволы.Добавить( "T" );
	ЛишниеСимволы.Добавить( ":" );

	СтрокаСДатой = Сред( Строка, 1, 19 ); 	
	
	Для Каждого Элемент Из ЛишниеСимволы Цикл
		СтрокаСДатой = СтрЗаменить( СтрокаСДатой, Элемент, "" );
	КонецЦикла;
	
	Возврат СтрокаСДатой;	
	
КонецФункции

// МонолитПарсер - парсит и возвращает документы в массиве 
// 		ДанныеВXML - Строка содержащая XML или Тип Файл
// 		СписокДокументов - Массив в котором будут распарсенные данные
Процедура МонолитПарсер( ДанныеВXML, СписокДокументов ) Экспорт
	
	ЧтениеXML = Новый ЧтениеXML;
	
	// Проверяем тип первого параметра
	Если ТипЗнч( ДанныеВXML ) = Тип( "Строка" ) Тогда 
		ЧтениеXML.УстановитьСтроку( ДанныеВXML );
	ИначеЕсли ТипЗнч( ДанныеВXML ) = Тип( "Файл" ) Тогда
		ЧтениеXML.ОткрытьФайл( ДанныеВXML.ПолноеИмя );	
	Иначе	
		Возврат;		
	КонецЕсли;
	
	// Проверяем тип второго параметра и исправляем
	Если ТипЗнч( СписокДокументов ) <> Тип( "Массив" ) Тогда
		СписокДокументов = Новый Массив;	
	КонецЕсли;
    			
	ПостроительDOM = Новый ПостроительDOM;
	ДокументDOM = ПостроительDOM.Прочитать( ЧтениеXML );
	
	Если ДокументDOM.ЭлементДокумента.ИмяУзла = "string" Тогда
		
		ДанныеВXML = ДокументDOM.ЭлементДокумента.ТекстовоеСодержимое;
		ЧтениеXML.УстановитьСтроку( ДанныеВXML );
		ДокументDOM = ПостроительDOM.Прочитать( ЧтениеXML );
		
	КонецЕсли;
	extdata = ДокументDOM.ЭлементДокумента.ДочерниеУзлы[0];
    //scheme = extdata.ДочерниеУзлы[0];
	scheme = extdata;
	ИмяСхемы = scheme.ПолучитьАтрибут("name");
	data = scheme.ПолучитьЭлементыПоИмени("data");
	
	// Список документов которые нужно обрабатывать из Монолит-а
	НеобходимыеДокументы = НеобходимыеДокументы();	
	
	Для Каждого d Из data Цикл
		
		// Получаем Структуру
		s = d.ПолучитьЭлементыПоИмени("s");					
		СтруктураДанных = СобратьДанныеСтруктурТаблицаЗначений( s, НеобходимыеДокументы );
		
		// Выходим если нет нужной структуры
		Если СтруктураДанных.Количество() = 0 Тогда
			Продолжить;
		КонецЕсли;
		
		// Получаем Данные 
		o = d.ПолучитьЭлементыПоИмени("o");		
		Для Каждого el_o Из o Цикл 
						
			Для Каждого el_d Из el_o.ДочерниеУзлы Цикл
				
				СтруктураДокумента = el_d.ПолучитьАтрибут("name");	
			    // Выходим из парсинга если данные нам не нужны
				Если НеобходимыеДокументы.Найти(СтруктураДокумента) = Неопределено Тогда
					Продолжить;
				КонецЕсли;
				
				Для Каждого el_r Из el_d.ДочерниеУзлы Цикл
					
					// Подбираем структуру для данных
					Данные = ПолучитьСтруктуру( СтруктураДанных, СтруктураДокумента ); 
					МассивыСтруктур = ПолучитьМассивы( СтруктураДанных, СтруктураДокумента ); 
					
					ИндексРеквизитов = 0;
					Для Каждого el_df Из el_r.ДочерниеУзлы Цикл
						
						// Реквизиты Заголовка документа
						Если el_df.ИмяУзла = "f" Тогда 
			
							Колонка = МассивыСтруктур.Наименование[ИндексРеквизитов];
							Тип = МассивыСтруктур.Тип[ИндексРеквизитов];
							
							Если Данные.Свойство(Колонка) Тогда
							 	Данные[Колонка] = ПриведениеТипов( Тип, el_df.ТекстовоеСодержимое );
							КонецЕсли;
							
						КонецЕсли;
						
						Если el_df.ИмяУзла = "d" Тогда 
							
							СтруктураТабличнойЧасти = el_df.ПолучитьАтрибут("name");
							
							// Подбираем структуру для данных 
							МассивыСтруктур = ПолучитьМассивы( СтруктураДанных, СтруктураТабличнойЧасти ); 
							
							// Строки Табличной части
							Для Каждого el_df_r Из el_df.ДочерниеУзлы Цикл
								
								ДанныеТабличнойЧасти = ПолучитьСтруктуру( СтруктураДанных, СтруктураТабличнойЧасти );
								
								ИндексТабличнойЧасти = 0;
								Для Каждого el_df_r_f Из el_df_r.ДочерниеУзлы Цикл
									
									Колонка = МассивыСтруктур.Наименование[ИндексТабличнойЧасти];
									Тип = МассивыСтруктур.Тип[ИндексТабличнойЧасти];

									Если ДанныеТабличнойЧасти.Свойство(Колонка) Тогда
										ДанныеТабличнойЧасти[Колонка] = ПриведениеТипов( Тип, el_df_r_f.ТекстовоеСодержимое );
									КонецЕсли;
  
									ИндексТабличнойЧасти = ИндексТабличнойЧасти + 1;
								КонецЦикла; // el_df_r_f 
								
								Данные[СтруктураТабличнойЧасти].Добавить( ДанныеТабличнойЧасти );
								
							КонецЦикла; // el_df_r
							
						КонецЕсли; 
						
						ИндексРеквизитов = ИндексРеквизитов + 1;
						
					КонецЦикла; // el_df
					
					СписокДокументов.Добавить( Данные );
					
				КонецЦикла; // el_r
			КонецЦикла; // el_d
		КонецЦикла; // el_o		
		
	КонецЦикла; // d
	
КонецПроцедуры

Процедура МонолитПарсерРасширенный( ДанныеВXML, СоответствиеДанныхXML ) Экспорт
	
	ЧтениеXML 				= Новый ЧтениеXML;
	СоответствиеДанныхXML   = Новый Соответствие;
	
	// Проверяем тип первого параметра
	Если ТипЗнч( ДанныеВXML ) = Тип( "Строка" ) Тогда 
		ЧтениеXML.УстановитьСтроку( ДанныеВXML );
	ИначеЕсли ТипЗнч( ДанныеВXML ) = Тип( "Файл" ) Тогда
		ЧтениеXML.ОткрытьФайл( ДанныеВXML.ПолноеИмя );	
	Иначе	
		Возврат;		
	КонецЕсли;
	
    			
	ПостроительDOM = Новый ПостроительDOM;
	ДокументDOM = ПостроительDOM.Прочитать( ЧтениеXML );
	
	Если ДокументDOM.ЭлементДокумента.ИмяУзла = "string" Тогда
		
		ДанныеВXML = ДокументDOM.ЭлементДокумента.ТекстовоеСодержимое;
		ЧтениеXML.УстановитьСтроку( ДанныеВXML );
		ДокументDOM = ПостроительDOM.Прочитать( ЧтениеXML );
		
	КонецЕсли;
	extdata = ДокументDOM.ЭлементДокумента.ДочерниеУзлы[0];
    //scheme = extdata.ДочерниеУзлы[0];
	scheme = extdata;
	ИмяСхемы = scheme.ПолучитьАтрибут("name");
	data = scheme.ПолучитьЭлементыПоИмени("data");
	
	// Список документов которые нужно обрабатывать из Монолит-а
	НеобходимыеДокументы = НеобходимыеДокументы();	
	
	Для Каждого d Из data Цикл
		
		// Получаем Структуру
		s = d.ПолучитьЭлементыПоИмени("s");					
		СтруктураДанных = СобратьДанныеСтруктурТаблицаЗначений( s, НеобходимыеДокументы );
		
		// Выходим если нет нужной структуры
		Если СтруктураДанных.Количество() = 0 Тогда
			Продолжить;
		КонецЕсли;
		
		СписокДокументов = Новый Массив;	

		// Получаем Данные 
		o = d.ПолучитьЭлементыПоИмени("o");		
		Для Каждого el_o Из o Цикл 
						
			Для Каждого el_d Из el_o.ДочерниеУзлы Цикл
				
				СтруктураДокумента = el_d.ПолучитьАтрибут("name");	
			    // Выходим из парсинга если данные нам не нужны
				Если НеобходимыеДокументы.Найти(СтруктураДокумента) = Неопределено Тогда
					Продолжить;
				КонецЕсли;
				
				Для Каждого el_r Из el_d.ДочерниеУзлы Цикл
					
					// Подбираем структуру для данных
					Данные = ПолучитьСтруктуру( СтруктураДанных, СтруктураДокумента ); 
					МассивыСтруктур = ПолучитьМассивы( СтруктураДанных, СтруктураДокумента ); 
					
					ИндексРеквизитов = 0;
					Для Каждого el_df Из el_r.ДочерниеУзлы Цикл
						
						// Реквизиты Заголовка документа
						Если el_df.ИмяУзла = "f" Тогда 
			
							Колонка = МассивыСтруктур.Наименование[ИндексРеквизитов];
							Тип = МассивыСтруктур.Тип[ИндексРеквизитов];
							
							Если Данные.Свойство(Колонка) Тогда
							 	Данные[Колонка] = ПриведениеТипов( Тип, el_df.ТекстовоеСодержимое );
							КонецЕсли;
							
						КонецЕсли;
						
						Если el_df.ИмяУзла = "d" Тогда 
							
							СтруктураТабличнойЧасти = el_df.ПолучитьАтрибут("name");
							
							// Подбираем структуру для данных 
							МассивыСтруктур = ПолучитьМассивы( СтруктураДанных, СтруктураТабличнойЧасти ); 
							
							// Строки Табличной части
							Для Каждого el_df_r Из el_df.ДочерниеУзлы Цикл
								
								ДанныеТабличнойЧасти = ПолучитьСтруктуру( СтруктураДанных, СтруктураТабличнойЧасти );
								
								ИндексТабличнойЧасти = 0;
								Для Каждого el_df_r_f Из el_df_r.ДочерниеУзлы Цикл
									
									Колонка = МассивыСтруктур.Наименование[ИндексТабличнойЧасти];
									Тип = МассивыСтруктур.Тип[ИндексТабличнойЧасти];

									Если ДанныеТабличнойЧасти.Свойство(Колонка) Тогда
										ДанныеТабличнойЧасти[Колонка] = ПриведениеТипов( Тип, el_df_r_f.ТекстовоеСодержимое );
									КонецЕсли;
  
									ИндексТабличнойЧасти = ИндексТабличнойЧасти + 1;
								КонецЦикла; // el_df_r_f 
								
								Данные[СтруктураТабличнойЧасти].Добавить( ДанныеТабличнойЧасти );
								
							КонецЦикла; // el_df_r
							
						КонецЕсли; 
						
						ИндексРеквизитов = ИндексРеквизитов + 1;
						
					КонецЦикла; // el_df
					
					СписокДокументов.Добавить( Данные );
					
				КонецЦикла; // el_r
			КонецЦикла; // el_d
		КонецЦикла; // el_o		
		
		СоответствиеДанныхXML.Вставить(СтруктураДокумента, СписокДокументов);
		
	КонецЦикла; // d
	
КонецПроцедуры


Функция МонолитПарсерMini(Знач ДанныеВXML ) Экспорт
	
	ЧтениеXML = Новый ЧтениеXML;
	
	// Проверяем тип первого параметра
	Если ТипЗнч( ДанныеВXML ) = Тип( "Строка" ) Тогда 
		ЧтениеXML.УстановитьСтроку( ДанныеВXML );
	ИначеЕсли ТипЗнч( ДанныеВXML ) = Тип( "Файл" ) Тогда
		ЧтениеXML.ОткрытьФайл( ДанныеВXML.ПолноеИмя );	
	Иначе	
		Возврат ДанныеВXML;		
	КонецЕсли;
	
	ПостроительDOM = Новый ПостроительDOM;
	ДокументDOM = ПостроительDOM.Прочитать( ЧтениеXML );
	
	Если ДокументDOM.ЭлементДокумента.ИмяУзла = "string" Тогда
		
		ДанныеВXML = ДокументDOM.ЭлементДокумента.ТекстовоеСодержимое;

	КонецЕсли;
	
	Возврат ДанныеВXML;
	
КонецФункции


Процедура МонолитЗагрузка(Знач ДанныеXML, СписокДокументов ) Экспорт
			
	МонолитПарсер( ДанныеXML, СписокДокументов );

КонецПроцедуры

Функция УстановитьТипДанных( Тип, Размер = 12, Точность = 2 ) Экспорт
	Массив = Новый Массив;
	Массив.Добавить( Тип );
	
	Если Тип = Тип("Строка") Тогда
		Результат = Новый ОписаниеТипов( Массив, , Новый КвалификаторыСтроки( Размер ) );
	ИначеЕсли Тип = Тип("Число") Тогда 
		Результат = Новый ОписаниеТипов( Массив, Новый КвалификаторыЧисла( Размер, Точность ) );
	ИначеЕсли Тип = Тип("Дата") Тогда 
		Результат = Новый ОписаниеТипов( Массив, , , Новый КвалификаторыДаты( ЧастиДаты.ДатаВремя ) );  
	Иначе
		Результат = Новый ОписаниеТипов( Массив );
	КонецЕсли;
	
	Возврат Результат;
КонецФункции
