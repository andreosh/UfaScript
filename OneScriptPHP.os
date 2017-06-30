// Пример веб-интерфейса для OneScript ========================

Перем U, Joomla, КоличОтветов;

Функция ПослатьКнопкуПривет(Кому)
  Div1=U.СоздатьОбъектCSSDiv("Div1","Пример настройки произвольного шаблона. Это Div1");   Div1.ЦветФона="#EB1434";  Div1.Выравнивание=1;
  Div1.ДекорацияТекста=1; Div1.РазмерШрифта=28;
  Div2=U.СоздатьОбъектCSSDiv("Div2","Это Div2");   Div2.ЦветФона="#D7E61A";  Div2.Выравнивание=1;
  Div2.ДекорацияТекста=1; Div2.РазмерШрифта=18;

  Divheader=U.СоздатьОбъектCSSDiv("header",Div1.СтрокаHTML()+"<br/><br/><br/>В данном элементе Div ""header"" мы задали ЦветФона=""#eefdfd"" "+
     "Divheader.ТипШирина=4  4-Это значит, что ширина = ширине родителя, а ширина родителя = 100% ширины экрана.<br/>"+Div2.СтрокаHTML());  
  Divheader.ЦветФона="#eefdfd";  
  Строкаheader=U.Строка_CSSКод(Div1.СтрокаCSS()+Div2.СтрокаCSS())+Divheader.СтрокаДляAjax();
  
  Кнопки = U.СоздатьОбъектHTMLКнопка("Nav");
  КнНачало = Кнопки.СтрокаДляAjax("Кнопка",5,"","PressButton('Кн1');");
   СтрокаКоманд=U.Строка_СформироватьКомандыКлиенту("baza||New||"+Строкаheader+
                                                  "||baza||Insert||<div id=footer>Это подвал</div>||footer||Insert||"+КнНачало);
   U.МассивОтветовКлиентам_Добавить(Кому,СтрокаКоманд)
КонецФункции

Функция ГенераторОтветовКлиентам();
   Для сч=0 По U.МассивАктивныхКлиентов.Количество()-1 Цикл
      Если U.МассивАктивныхКлиентов[сч][6]=0 Тогда 
	     ПослатьКнопкуПривет(U.МассивАктивныхКлиентов[сч][0]); U.МассивАктивныхКлиентов[сч][6]=1;  
      КонецЕсли;
   КонецЦикла;
   Для сч=0 По U.МассивОтложенныхЗапросовОтКлиентов.Количество()-1 Цикл
      М=СтрРазделить(U.МассивОтложенныхЗапросовОтКлиентов[сч],"==>");
	  Если М[3]="Кн1" Тогда U.МассивОтветовКлиентам_Добавить(М[0],U.Строка_СформироватьКомандыКлиенту("footer||Insert||Нажата кнопка+"));
	    U.МассивОтложенныхЗапросовОтКлиентов.Удалить(сч); КонецЕсли;
   КонецЦикла;
КонецФункции

Функция Обработка()  
  Каталог=СтрЗаменить(U.КаталогВременныхФайлов,"/","\");
  Пока Истина Цикл
    U.ОбработчикЗапросов(Каталог);
	//U.ОтладкаСерверТранслятора();
	ГенераторОтветовКлиентам();
	Приостановить(U.ЗадержкаВOneScript);  
  КонецЦикла;   
КонецФункции

Joomla=Ложь;  КоличОтветов=0;
U = ЗагрузитьСценарий("UfaScript.osb");  U.БазовыеУстановкиСистемыUfaScript();
U.КаталогВременныхФайлов="C:/tmp/";
U.СтартСерверТранслятора(Ложь,500,500,1000);
Сообщить("Сервер запущен");
Обработка();
