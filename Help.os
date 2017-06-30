// OneScript-Генератор HTML описания для функций из библиотеки ========================
// Выгружаем в Массив текст помощи по каждой функции
// Строками помощи считаются записи имеющие в начале строки символы "//?"
// Далее через пробел следует ключевое слово:
//?Вызов:     - Как функцию вызвать
//?Параметры: - Объяснение параметров и возвращаемые данные
//?Поиск:     - Ключевые фразы для удобства поиска  (строка PHP JavaScript)
//?Описание:  - Описание функции
//?Далее:     - Если какой-то пункт не умещается в одной строке, то можно продолжить на следующей
// Затем на основе данного массива из OneScript генерируется HTML-файл c аналогичным JavaScript-массивом,
// Формируется HTML-страница с кнопками навигации, нужными функциями на JavaScript и таблицей с данным массивом (Строки и колонки можно копировать в Excell)
// Просмотр локально в браузере.

Перем U, Joomla;

Функция ФормируемСтрокиtableBody(М)
  Строка="";  Для сч=0 По М.Количество()-1 Цикл  Строка = Строка+" tableBody["+сч+"]=new Array("+ФормируемКолонки(М[сч])+"); ";  КонецЦикла;
  Возврат Строка;
КонецФункции

Функция ФормируемКолонки(М)
  Строка="'"+М[0]+"'";  Для сч=1 По М.Количество()-1 Цикл   Строка = Строка+",'"+М[сч]+"'";  КонецЦикла;  Возврат Строка;
КонецФункции

Функция НастройкаКнопокНавигации(Об)
  Об.ОтступСверхуСнизу=3;  Об.ОтступОтТекстаСверху=3; Об.ОтступОтТекстаПоКраям=3; Об.ОтступПоКраям=3; Об.ЦветФона="#6CE11E";  Возврат Об;
КонецФункции

Функция Строка_СозданиеJSТаблицы(МассивФункций)
  Таблица="<style type=""text/css""> .mytable {border: thin solid #CCCCCC;} .mytable td {border: thin solid #CCCCCC; .found {background:#89DAD0;} } </style>"+
    "<script type=""text/javascript"">var tableBody=new Array(); "+ФормируемСтрокиtableBody(МассивФункций)+"</script>"+
    U.Строка_ФункцииDynamicTable()+U.Строка_ФункцииconstructorTable("")+"<script type=""text/javascript"">var topRowNumber=0; var JSPS_PAGE_SIZE=7000; "+
    "var tableHead=new Array(); tableHead[0]=new Array(""Номер"",""Строка"",""Вызов"",""Параметры"",""Описание"",""Слова""); "+
    "var tableFoot=new Array(); tableFoot[0]=new Array(""Итого"","" ""); var tableObject=new DynamicTable(document.body,""Tabl"",""mytable""); "+
    " putTable(0,JSPS_PAGE_SIZE); document.getElementById('KolZap').innerHTML=JSPS_PAGE_SIZE; "+
    "</script>";
  Возврат Таблица;
КонецФункции

Joomla=Ложь;
U = ЗагрузитьСценарий("UfaScript.osb");
U.БазовыеУстановкиСистемыUfaScript();

Текст = Новый ЧтениеТекста("UfaScript.osb", КодировкаТекста.UTF8);
МассивФункций = Новый Массив;  сч=0;  K=0; N=0;
Стр = Текст.ПрочитатьСтроку();  K=K+1;
Пока Стр <> Неопределено  Цикл 
    Стр = СокрЛП(U.ЗаменаОдинарныхКавычек(Стр));
    Если СтрНачинаетсяС(Стр,"//?") Тогда 
	   Если СтрНачинаетсяС(Стр,"//?Вызов: ") Тогда СубМассив=Новый Массив; сч=0; МассивФункций.Добавить(СубМассив); N=N+1;
	             СубМассив.Добавить(N); СубМассив.Добавить(K); Стр=СокрЛП(СтрЗаменить(Стр,"//?Вызов: ",""));  СубМассив.Добавить(Стр);  сч=сч+2;  
	   ИначеЕсли СтрНачинаетсяС(Стр,"//?Далее: ")     Тогда Стр=СокрЛП(СтрЗаменить(Стр,"//?Далее: ",""));     СубМассив[сч] = СубМассив[сч]+Стр; 
	   ИначеЕсли СтрНачинаетсяС(Стр,"//?Параметры: ") Тогда Стр=СокрЛП(СтрЗаменить(Стр,"//?Параметры: ","")); СубМассив.Добавить(Стр);  сч=сч+1;  
	   ИначеЕсли СтрНачинаетсяС(Стр,"//?Описание: ")  Тогда Стр=СокрЛП(СтрЗаменить(Стр,"//?Описание: ",""));  СубМассив.Добавить(Стр);  сч=сч+1;  
	   ИначеЕсли СтрНачинаетсяС(Стр,"//?Поиск: ")     Тогда Стр=СокрЛП(СтрЗаменить(Стр,"//?Поиск: ",""));     СубМассив.Добавить(Стр);  сч=сч+1;  
	   КонецЕсли;
	КонецЕсли;
    Стр = Текст.ПрочитатьСтроку(); K=K+1;  
КонецЦикла;
Текст.Закрыть();   

КнопкаЗаголовок   = U.СоздатьОбъектHTMLКнопка("Zag");  НастройкаКнопокНавигации(КнопкаЗаголовок);  
КнопкаЗаголовок.ПравыйЦветГрадиента="#8DEBE1";  КнопкаЗаголовок.ЛевыйЦветГрадиента="#F0FAD3";  КнопкаЗаголовок.ЦентрЦветГрадиента="#FCCFFE";
Заголовок1  = КнопкаЗаголовок.СтрокаДляAjax("OneScript-документатор библиотеки UfaScript.osb.",1,"","");
КнопкиНавигации   = U.СоздатьОбъектHTMLКнопка("Nav");  НастройкаКнопокНавигации(КнопкиНавигации);
КнНачало = КнопкиНавигации.СтрокаДляAjax("<< В начало",5,"","putTable(0,JSPS_PAGE_SIZE);");  // Строка для Ajax может использоваться и без Ajax
КнНазад  = КнопкиНавигации.СтрокаAjaxHTML("< Назад",5,"","putTable(topRowNumber-JSPS_PAGE_SIZE,JSPS_PAGE_SIZE);");
КнВперед = КнопкиНавигации.СтрокаAjaxHTML("Вперед >",5,"","putTable(topRowNumber+JSPS_PAGE_SIZE,JSPS_PAGE_SIZE);");  
КнВКонец = КнопкиНавигации.СтрокаAjaxHTML("В конец >>",5,"","putTable(tableBody.length-JSPS_PAGE_SIZE,JSPS_PAGE_SIZE);");  
КнопкиНастроек   = U.СоздатьОбъектHTMLКнопка("Op");  НастройкаКнопокНавигации(КнопкиНастроек); КнопкиНастроек.ЦветФона="#50C0D8";
КнНаСтранице = КнопкиНастроек.СтрокаДляAjax("Количество записей на странице<div id=KolZap></div>",5,"",
            "k=ModalSetKolStr(); JSPS_PAGE_SIZE=parseInt(k);  putTable(0,JSPS_PAGE_SIZE); document.getElementById('KolZap').innerHTML = JSPS_PAGE_SIZE;");
КнопкиФильтра=U.СоздатьОбъектHTMLКнопка("Filt");  НастройкаКнопокНавигации(КнопкиФильтра); КнопкиФильтра.ЦветФона="#83DCF5";
КнФильтр=КнопкиФильтра.СтрокаДляAjax("Фильтровать",5,"","jspsFilterTable(tableObject.table,filterTable,'Чтение');");

DivHeader=U.СоздатьОбъектCSSDiv("Header",Заголовок1);                 
    Divheader.ТипВысота=1;  Divheader.Высота=40; Divheader.ЦветФона="#eefdfd"; Divheader.ТипШирина=2; Divheader.Ширина=100;
DivNav=U.СоздатьОбъектCSSDiv("Nav",КнНачало+КнНазад+КнВперед+КнВКонец+КнНаСтранице+КнФильтр);
DivTabl=U.СоздатьОбъектCSSDiv("Tabl");  DivTabl.ЦветФона="#FCCDFA";

  
DivBaza=U.СоздатьОбъектCSSDiv("Baza",Divheader.СтрокаHTML()+DivNav.СтрокаHTML()+Строка_СозданиеJSТаблицы(МассивФункций));      
DivBaza.ТипШирина=2; DivBaza.Ширина=100; 

Шаблон=U.СоздатьОбъектHTMLШаблонCSSDiv();         Шаблон.ИмяФайла="Table.html";
Шаблон.Div(DivBaza).Div(DivHeader).Div(DivNav).Div(DivTabl);
Шаблон.Инициализация();

U.ПРОЦЕСС_Окончание();
 


