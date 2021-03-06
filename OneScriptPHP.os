// Пример веб-интерфейса для OneScript ========================
// Добавление двух слайдеров на страницу, а так же вставка JS-функций и PHP-кода из OneScript  

Перем U, Joomla, КоличОтветов;
Перем Слайдер_Ajax,Слайдер_Ajax1,Телефон_Ajax;

Функция ПослатьКнопкуПривет(Кому)
  Div1=U.СоздатьОбъектCSSDiv("Div1","Это Div1");   Div1.ЦветФона="#EB1434";  Div1.Выравнивание=1;
  Div1.ДекорацияТекста=1; Div1.РазмерШрифта=28;
  Div2=U.СоздатьОбъектCSSDiv("Div2","Это Div2");   Div2.ЦветФона="#D7E61A";  Div2.Выравнивание=1;
  Div2.ДекорацияТекста=1; Div2.РазмерШрифта=18;

  Divheader=U.СоздатьОбъектCSSDiv("header",Div1.СтрокаHTML()+Div2.СтрокаHTML());  
  Divheader.ЦветФона="#eefdfd";  
  Строкаheader=U.Строка_CSSКод(Div1.СтрокаCSS()+Div2.СтрокаCSS())+Divheader.СтрокаДляAjax();
  
  Кнопки = U.СоздатьОбъектHTMLКнопка("Nav");
  КнНачало = Кнопки.СтрокаДляAjax("Кнопка",5,"","PressButton('Кн1');");   
  КнБаза = Кнопки.СтрокаДляAjax("Создать базу данных",5,"","PressButton('Кн2');");
  КнSlaider = Кнопки.СтрокаДляAjax("Слайдер",2,"","PressButton('Кн3');");   
   СтрокаКоманд=U.Строка_СформироватьКомандыКлиенту("baza||New||"+Строкаheader+
                                                  "||baza||Insert||<div id=footer>Это подвал</div>||footer||Insert||"+КнНачало+
												  "||footer||Insert||"+КнБаза+"||footer||Insert||"+КнSlaider+"||header||Insert||"+Телефон_Ajax);
   U.МассивОтветовКлиентам_Добавить(Кому,СтрокаКоманд)
КонецФункции

Функция ОтправитьОтветНаPOSTЗапрос(сч,КодСвязи,ТекстОтвета)
   U.МассивОтветовКлиентам_Добавить(КодСвязи,U.Строка_СформироватьКомандыКлиенту(ТекстОтвета));  U.МассивОтложенныхЗапросовОтКлиентов.Удалить(сч);
КонецФункции

Функция ГенераторОтветовКлиентам();
   Для сч=0 По U.МассивАктивныхКлиентов.Количество()-1 Цикл
      Если U.МассивАктивныхКлиентов[сч][6]=0 Тогда 
	     ПослатьКнопкуПривет(U.МассивАктивныхКлиентов[сч][0]); U.МассивАктивныхКлиентов[сч][6]=1;  
      КонецЕсли;
   КонецЦикла;
   Кол=U.МассивОтложенныхЗапросовОтКлиентов.Количество()-1;
   Для сч=0 По Кол Цикл
      М=СтрРазделить(U.МассивОтложенныхЗапросовОтКлиентов[Кол-сч],"==>");
	  Если М[3]="Кн1" Тогда ОтправитьОтветНаPOSTЗапрос(Кол-сч,М[0],"footer||Insert||Нажата кнопка+"); 
	  ИначеЕсли М[3]="Кн2" Тогда ОтправитьОтветНаPOSTЗапрос(Кол-сч,М[0],"PHP||[php]OpenMySQLRunQuery('CREATE TABLE articles "+
	    "(id smallint unsigned NOT NULL auto_increment,publicationDate date NOT NULL,title varchar(255) NOT NULL, summary text NOT NULL,"+
	    "content mediumtext NOT NULL, PRIMARY KEY (id))','UfaScript','root','');[/php]||"); 
	  ИначеЕсли М[3]="Кн3" Тогда ОтправитьОтветНаPOSTЗапрос(Кол-сч,М[0],"header||Insert||"+Слайдер_Ajax+"||header||Insert||"+Слайдер_Ajax1); 
	  КонецЕсли;
   КонецЦикла;
КонецФункции

Функция Обработка()  
  Каталог=СтрЗаменить(U.КаталогВременныхФайлов,"/","\");
  Пока Истина Цикл
    U.ОбработчикЗапросов(Каталог);
	  U.ОтладкаСерверТранслятора();
	ГенераторОтветовКлиентам();
	Приостановить(U.ЗадержкаВOneScript);  
  КонецЦикла;   
КонецФункции

Функция ДополнительныйJSKodОбъектов()  
   Слайдер=U.СоздатьОбъектHTMLСлайдер();    
   Слайдер.СписокРисунков("if_bar_chart_17217.png|if_calculator_17218.png|if_cash_register_17219.png|if_coins_17220.png|if_invoice_17223.png|"+
		    "if_shopping cart_17227.png|if_bar-code_87412.png|if_credit_card_17221.png|if_credit-card_87486.png|if_microsoft_718952.png|"+
			"|if_calculator_17218.png|if_cash_register_17219.png");
   Слайдер.Ширина=784;
   Слайдер_Ajax=Слайдер.СтрокаAjaxHTML();	Слайдер_JS=Слайдер.СтрокаJS();	
   Слайдер.ИмяОбъекта="Slader1_";
   Слайдер.СписокРисунков("if_bar_chart_17217.png|if_calculator_17218.png|if_cash_register_17219.png|if_coins_17220.png|if_invoice_17223.png|");
   Слайдер.Ширина=384;
   Слайдер_Ajax1=Слайдер.СтрокаAjaxHTML();	Слайдер_JS1=Слайдер.СтрокаJS();	
   
   Телефон=U.СоздатьОбъектHTMLСсылка();  Телефон.СоздатьОбъектCSS();
   Телефон_Ajax=Телефон.СтрокаAjaxHTML();	Телефон_JS=Телефон.СтрокаJS();	
   Возврат Слайдер_JS+Слайдер_JS1+Телефон_JS;
КонецФункции

Joomla=Ложь;  КоличОтветов=0;
U = ЗагрузитьСценарий("UfaScript.osb");  U.БазовыеУстановкиСистемыUfaScript(); U.ОтладкаЗапросов=Ложь;
U.КаталогВременныхФайлов="E:";
U.ДополнительныйJSКод=ДополнительныйJSKodОбъектов();
U.СтартСерверТранслятора(Ложь,500,500,1000);
Сообщить("Сервер запущен");
Обработка();

