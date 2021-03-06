// Пример POST-запроса к серверу методом Ajax
Перем U, Joomla;

Функция Сервер()  //===========================  на стороне сервера =============================================
  Если Joomla Тогда ИмяФайла="../../Server.php"; ИначеЕсли  НЕ Joomla Тогда ИмяФайла="Server.php"; КонецЕсли; 
  Запись = Новый ЗаписьТекста;  Запись.Открыть(ИмяФайла);

  Кнопка=U.СоздатьОбъектHTMLКнопка(); Кнопка.ОтступСверхуСнизу=10;  Кнопка.ОтступПоКраям=30;  Кнопка.РадиусУглов=10; Кнопка.Ширина=100;
  Кнопка1=Кнопка.СтрокаДляAjax("Кнопка в заголовке",1,"","SendRequest('POST','Server.php','f=2')");
  Кнопка.Ширина=400;
  Кнопка2=Кнопка.СтрокаДляAjax("Кнопка в Подвале",2,"","SendRequest('POST','Server.php','f=3')");
  Кнопка3=Кнопка.СтрокаДляAjax("Кнопка слева",3,"","SendRequest('POST','Server.php','f=4')");
  Кнопка.ЦветФона="#8DCF65";
  Кнопка4=Кнопка.СтрокаДляAjax("Кнопка справа",4,"","SendRequest('POST','Server.php','f=5')");
  Кнопка5=Кнопка.СтрокаДляAjax("Кнопка в центре",5,"","SendRequest('POST','Server.php','f=6')");
  Кнопка6=Кнопка.СтрокаДляAjax("Кнопка внизу",6,"","SendRequest('POST','Server.php','f=7')");
  Кнопка7=Кнопка.СтрокаДляAjax("Демо POST-запросов",7,"","SendRequest('POST','Server.php','f=8')");
  
  Запись.ЗаписатьСтроку("<?php $AjaxPOST=array(); "+U.СтрокаPHP_ФункцииСервера()+U.СтрокаPHP_СерверВернутьОтвет(1,"header==>"+Кнопка1)+
     U.СтрокаPHP_СерверВернутьОтвет(2,"footer==>"+Кнопка2)+U.СтрокаPHP_СерверВернутьОтвет(3,"leftpanel==>"+Кнопка3)+
	 U.СтрокаPHP_СерверВернутьОтвет(4,"rightpanel==>"+Кнопка4)+U.СтрокаPHP_СерверВернутьОтвет(5,"centerpanel==>"+Кнопка5)+
	 U.СтрокаPHP_СерверВернутьОтвет(6,"footer==>"+Кнопка6)+U.СтрокаPHP_СерверВернутьОтвет(7,"header==>"+Кнопка7)+" ?>");	 
  Запись.Закрыть();
КонецФункции

Функция Клиент()  //==========================================  На стороне клиента ================================
  U.НачатьЗапись();
  Шаблон=U.СоздатьОбъектHTMLШаблонБлочный(); 
  
  Шаблон.Запись(Шаблон.СтрокаНачало(Joomla));
  Шаблон.Запись(Шаблон.СтрокаЗаголовокHTML(Joomla));
  Шаблон.Запись(Шаблон.СтрокаОбщиеПравилаДляСтраницы());
  Шаблон.CSS();  Шаблон.HTML();
  
  U.Запись_ОпределениеФункцийAjax();
  U.Запись_ОпределениеФункцииCallBackRequest(" SubCallBackRequest(request.responseText);");

  U.Запись_ОпределениеФункцииВыводаВКонсоль("print_debug","debug");
  U.Запись.ЗаписатьСтроку("<div id=""debug""></div>");

  U.Запись.ЗаписатьСтроку("<script type=""text/javascript"">function update() { SendRequest('POST','Server.php','f=1'); } </script>");
  U.Запись_ЗапускатьФункцJSПриОбновлении("update");

  U.ПРОЦЕСС_Окончание();
КонецФункции

Joomla=Истина;
U = ЗагрузитьСценарий("UfaScript.osb");
U.БазовыеУстановкиСистемыUfaScript();

Сервер();
Клиент();

