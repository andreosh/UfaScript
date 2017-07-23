// 
Перем U, Joomla;

Функция НастроитьCSS(Знач Об)
    Об.Ширина=140; Об.Высота=90; Об.ТипВысота=1; Об.ТипШирина=1;
КонецФункции

Функция Клиент2() 
   М=Новый Массив;
   М.Добавить("Белый                            | white            | FFFFFF | 1");
   М.Добавить("Черный                           | black            | 000000 | 2");
   М.Добавить("Синий                            | blue             | 0000FF | 1");   
   М.Добавить("Зеленый                          | green            | 008000 | 2");  
   М.Добавить("Голубой                          | cyan             | 00FFFF | 1");  
   М.Добавить("Красный                          | red              | FF0000 | 1");   
   М.Добавить("Сиреневый                        | magenta          | FF00FF | 1");    
   М.Добавить("Коричневый                       | brown            | A52A2A | 2");   
   М.Добавить("Серый                            | gray             | 808080 | 2");    
   М.Добавить("Оттенок синего                   | aliceblue        | F0F8FF | 1");    
   М.Добавить("Оттенок белого                   | antiquewhite     | FAEBD7 | 1");    
   М.Добавить("Аква                             | aqua             | 00FF00 | 1");    
   М.Добавить("Аквамарин                        | aquamarine       | 7FFFD4 | 1");    
   М.Добавить("Очень близкий к белому           | aquamarine       | F0FFFF | 1");    
   М.Добавить("Бежевый                          | beige            | F5F5DC | 1");    
   М.Добавить("Похож на бежевый                 | blanchedalmond   | FFEBCD | 1");    
   М.Добавить("Оттенок фиолетового              | blueviolet       | 8A2BE2 | 2");    
   М.Добавить("Цвет дерева                      | burlywood        | DEB887 | 2");    
   М.Добавить("Оттенок синего                   | cadetblue        | 5F9EA0 | 2");    
   М.Добавить("Оттенок зеленого                 | chartreuse       | 7FFF00 | 1");    
   М.Добавить("Шоколадный                       | chocolate        | D2691E | 2");    
   М.Добавить("Коралловый                       | coral            | FF7F50 | 2");    
   М.Добавить("Оттенок синего                   | cornflowerblue   | 6495ED | 2");      
   М.Добавить("Шелковый                         | cornsilk         | FFF8DC | 1");      
   М.Добавить("Темно-синий                      | darkblue         | 00008B | 2");      
   М.Добавить("Темно-голубой                    | darkcyan         | 008B8B | 2");      
   М.Добавить("Темное золото                    | darkgoldenrod    | B8860B | 2");      
   М.Добавить("Темно-серый                      | darkgoldenrod    | A9A9A9 | 2");      
   М.Добавить("Темно-зеленый                    | darkdarkgreen    | 006400 | 2");      
   М.Добавить("Темный хаки                      | darkkhaki        | BDB76B | 2");      
   М.Добавить("Темно-сиреневый                  | darkmagenta      | 8B008E | 2");      
   М.Добавить("ТемноОливковый                   | darkolivegreen   | 556B2F | 2");      
   М.Добавить("Темно-оранжевый                  | darkorange       | FF8C00 | 2");      
   М.Добавить("Похож на blueviolet              | darkorchid       | 9932CC | 2");      
   М.Добавить("Темно-красный                    | darkred          | 8B0000 | 2");      
   М.Добавить("Лососевый                        | darksalmon       | E9967A | 2");     
   М.Добавить("Оттенок зеленого                 | darkseagreen     | 8FBC8F | 2");      
   М.Добавить("Темно-фиолетовый                 | darkviolet       | 483D8B | 2");     
   М.Добавить("Насыщенный розовый               | deeppink         | FF1493 | 2");     
   М.Добавить("Небесно-голубой темный           | deepskyblue      | 00BFFF | 2");     
   М.Добавить("Зеленый лес                      | forestgreen      | 228B22 | 2");     
   М.Добавить("Привидение                       | ghostwhite       | F8F8FF | 1");    
   М.Добавить("Золотой                          | gold             | FFD700 | 1");    
   М.Добавить("Зелено-желтый                    | greenyellow      | ADFF2F | 1");    
   М.Добавить("Оттенок розового                 | hotpink          | FF69B4 | 1");    
   М.Добавить("Индеец                           | indianred        | CD5C5C | 1");    
   М.Добавить("Индиго                           | indigo           | 430082 | 2");    
   М.Добавить("Слоновой кости                   | ivory            | FFFFF0 | 1");    
   М.Добавить("Хаки                             | khaki            | F0E68C | 1");    
   М.Добавить("Зеленый с желтым оттенком        | yellowgreen      | 9ACD32 | 1");    
   М.Добавить("Дымчатый                         | whitesmoke       | F5F5F5 | 1");    
   М.Добавить("Лужайка                          | lawngreen        | 7CFC00 | 1");    
   М.Добавить("Светло-синий                     | lightblue        | ADD8E6 | 1");    
   М.Добавить("Светло-коралловый                | lightcoral       | F08080 | 1");    
   М.Добавить("Светло-голубой                   | lightcyan        | ECFFFF | 1");    
   М.Добавить("Светло-зеленый                   | lightgreen       | 90EE90 | 1");    
   М.Добавить("Светло-серый                     | lightgrey        | D3D3D3 | 1");    
   М.Добавить("Светло-розовый                   | lightpink        | FF36C1 | 1");    
   М.Добавить("Небесно-голубой, светлый         | lightskyblue     | 87CEFA | 1");    
   М.Добавить("Синяя сталь                      | lightsteelblue   | B0C4DE | 1");    
   М.Добавить("Светло-желтый (близкий к белому) | lightyellow      | FFFFE0 | 1");    
   М.Добавить("Кислотно-зеленый                 | lime             | 00FF00 | 1");    
   М.Добавить("Более темный, чем lime           | limegreen        | 32CD32 | 1");    
   М.Добавить("Марон                            | maroon           | 800000 | 2");     
   М.Добавить("Аквамарин средней насыщенности   | mediumauqamarine | 66CDAA | 1");     
   М.Добавить("Синий средней насыщенности       | mediumblue       | 000CCD | 2");     
   М.Добавить("Пурпурный средней насыщенности   | meidiumpurple    | 9370D8 | 2");     
   М.Добавить("Полночь                          | midnightblue     | 191970 | 2");     
   М.Добавить("Цвет ВМФ                         | navy             | 000080 | 2");     
   М.Добавить("Оливковый                        | olive            | 808000 | 2");     
   М.Добавить("Оранжевый                        | orange           | FFA500 | 2");     
   М.Добавить("Пурпурный                        | purple           | 800080 | 2");     
   М.Добавить("Серебряный                       | silver           | C0C0C0 | 2");     
   М.Добавить("Небесно-голубой                  | skyblue          | 87CEE3 | 2");     
   М.Добавить("Снег                             | snow             | FFFAFA | 1");    
   М.Добавить("Фиолетовый                       | violet           | EE82EE | 1");    
   М.Добавить("Томат                            | tomato           | FF6347 | 1");     
   М.Добавить("Голубая сталь                    | steelblue        | 468234 | 2");    
   Div1=U.СоздатьОбъектCSSDiv("","");    СтрокиCSS="";  СтрокиHTML="";
   НастроитьCSS(Div1);
   Для сч=0 По М.Количество()-1 Цикл
      М1=СтрРазделить(М[сч],"|");
      Div1.ИмяОбъекта=СокрЛП(М1[1]); 
	  Div1.Вложение=СокрЛП(М1[0])+" "+СокрЛП(М1[1])+" "+СокрЛП(М1[2]);
	  Div1.ЦветФона="#"+СокрЛП(М1[2]);  
	  Если СокрЛП(М1[3])="2" Тогда Div1.ЦветТекста="#FFFFFF"; Иначе Div1.ЦветТекста="#000000"; КонецЕсли; 
	  СтрокиCSS=СтрокиCSS+Div1.СтрокаCSS();
	  СтрокиHTML=СтрокиHTML+Div1.СтрокаHTML();
   КонецЦикла;
   Шаблон=U.СоздатьОбъектHTMLШаблонCSSDiv();   Шаблон.ИмяФайла="Color.html";
   Шаблон.ИнициализацияНачальная();
   Шаблон.ЗаписатьСтроку("<style type=""text/css"">"+СтрокиCSS+"</style><body><div>"+СтрокиHTML);
   U.ПРОЦЕСС_Окончание();
КонецФункции

Функция Клиент()  
  DivWhite=U.СоздатьОбъектCSSDiv(  "DivWhite",  "Белый white FFFFFF  _");         
     DivWhite.ЦветФона=  "#FFFFFF";  НастроитьCSS(DivWhite); 
  Divblack=U.СоздатьОбъектCSSDiv(  "Divblack",  "Черный black 000000  _");        
     Divblack.ЦветФона=  "#000000";  Divblack.ЦветТекста="#FFFFFF";  НастроитьCSS(Divblack); 
  Divblue=U.СоздатьОбъектCSSDiv(   "Divblue",   "Синий blue 0000FF  _");          
     Divblue.ЦветФона=   "#0000FF";  НастроитьCSS(Divblue); 
  Divgreen=U.СоздатьОбъектCSSDiv(  "Divgreen",  "Зеленый green 008000  _");       
     Divgreen.ЦветФона=  "#008000";  Divgreen.ЦветТекста="#FFFFFF"; НастроитьCSS(Divgreen); 
  Divcyan=U.СоздатьОбъектCSSDiv(   "Divcyan",   "Голубой cyan 00FFFF  _");        
     Divcyan.ЦветФона=   "#00FFFF";  НастроитьCSS(Divcyan); 
  Divred=U.СоздатьОбъектCSSDiv(    "Divred",    "Красный red FF0000  _");        
     Divred.ЦветФона=    "#FF0000";  НастроитьCSS(Divred); 
  Divmagenta=U.СоздатьОбъектCSSDiv("Divmagenta","Сиреневый magenta FF00FF  _");   
     Divmagenta.ЦветФона="#FF00FF";  НастроитьCSS(Divmagenta);
  Divbrown=U.СоздатьОбъектCSSDiv(  "Divbrown",  "Коричневый brown A52A2A  _");    
     Divbrown.ЦветФона=  "#A52A2A";  НастроитьCSS(Divbrown);  Divbrown.ЦветТекста="#FFFFFF"; 
  Divgray=U.СоздатьОбъектCSSDiv(   "Divgray",   "Серый gray 808080  _");          
     Divgray.ЦветФона=   "#808080"; НастроитьCSS(Divgray);  Divgray.ЦветТекста="#FFFFFF"; 
  Divaliceblue=U.СоздатьОбъектCSSDiv("Divaliceblue","Оттенок синего aliceblue F0F8FF  _");  
     Divaliceblue.ЦветФона="#F0F8FF"; НастроитьCSS(Divaliceblue); 
  Divantiquewhite=U.СоздатьОбъектCSSDiv("Divantiquewhite","Оттенок белого antiquewhite FAEBD7  _");  
     Divantiquewhite.ЦветФона="#FAEBD7"; НастроитьCSS(Divantiquewhite); 
  Divaqua=U.СоздатьОбъектCSSDiv(   "Divaqua",   "Аква aqua 00FF00  _");           
     Divaqua.ЦветФона=   "#00FF00"; НастроитьCSS(Divaqua);
  Divaquamarine=U.СоздатьОбъектCSSDiv("Divaquamarine","Аквамарин aquamarine 7FFFD4  _"); 
     Divaquamarine.ЦветФона="#7FFFD4"; НастроитьCSS(Divaquamarine);
  Divazure=U.СоздатьОбъектCSSDiv(  "Divazure",  "Очень близкий к белому aquamarine F0FFFF  _"); 
     Divazure.ЦветФона="#F0FFFF";   НастроитьCSS(Divazure);
  Divbeige=U.СоздатьОбъектCSSDiv(  "Divbeige",  "Бежевый beige F5F5DC  _");       
     Divbeige.ЦветФона=  "#F5F5DC";   НастроитьCSS(Divbeige);
  Divblanchedalmond=U.СоздатьОбъектCSSDiv("Divblanchedalmond","Похож на бежевый blanchedalmond FFEBCD  _"); 
     Divblanchedalmond.ЦветФона="#FFEBCD"; НастроитьCSS(Divblanchedalmond);
  Divblueviolet=U.СоздатьОбъектCSSDiv("Divblueviolet","Оттенок фиолетового blueviolet 8A2BE2  _"); 
     Divblueviolet.ЦветФона="#8A2BE2"; Divblueviolet.ЦветТекста="#FFFFFF";  НастроитьCSS(Divblueviolet);
  Divburlywood=U.СоздатьОбъектCSSDiv("Divburlywood","Цвет дерева burlywood DEB887  _"); 
     Divburlywood.ЦветФона="#DEB887"; Divburlywood.ЦветТекста="#FFFFFF";  НастроитьCSS(Divburlywood);
  Divcadetblue=U.СоздатьОбъектCSSDiv("Divcadetblue","Оттенок синего cadetblue 5F9EA0  _"); 
     Divcadetblue.ЦветФона="#5F9EA0"; Divcadetblue.ЦветТекста="#FFFFFF";  НастроитьCSS(Divcadetblue);
  Divchartreuse=U.СоздатьОбъектCSSDiv("Divchartreuse","Оттенок зеленого chartreuse 7FFF00  _"); 
     Divchartreuse.ЦветФона="#7FFF00";   НастроитьCSS(Divchartreuse);
  Divchocolate=U.СоздатьОбъектCSSDiv("Divchocolate","Шоколадный chocolate D2691E  _"); 
     Divchocolate.ЦветФона="#D2691E"; Divchocolate.ЦветТекста="#FFFFFF";  НастроитьCSS(Divchocolate);
  Divcoral=U.СоздатьОбъектCSSDiv("Divcoral","Коралловый coral FF7F50  _"); 
     Divcoral.ЦветФона="#FF7F50"; Divcoral.ЦветТекста="#FFFFFF";   НастроитьCSS(Divcoral);
  Divcornflowerblue=U.СоздатьОбъектCSSDiv("Divcornflowerblue","Оттенок синего cornflowerblue 6495ED  _"); 
     Divcornflowerblue.ЦветФона="#6495ED"; Divcornflowerblue.ЦветТекста="#FFFFFF";  НастроитьCSS(Divcornflowerblue);
  Divcornsilk=U.СоздатьОбъектCSSDiv("Divcornsilk","Шелковый cornsilk FFF8DC  _"); 
     Divcornsilk.ЦветФона="#FFF8DC"; НастроитьCSS(Divcornsilk);
  Divdarkblue=U.СоздатьОбъектCSSDiv("Divdarkblue","Темно-синий darkblue 00008B  _"); 
     Divdarkblue.ЦветФона="#00008B"; Divdarkblue.ЦветТекста="#FFFFFF";  НастроитьCSS(Divdarkblue);
  Divdarkcyan=U.СоздатьОбъектCSSDiv("Divdarkcyan","Темно-голубой darkcyan 008B8B  _"); 
     Divdarkcyan.ЦветФона="#008B8B"; Divdarkcyan.ЦветТекста="#FFFFFF";  НастроитьCSS(Divdarkcyan);
  Divdarkgoldenrod=U.СоздатьОбъектCSSDiv("Divdarkgoldenrod","Темное золото darkgoldenrod B8860B  _"); 
     Divdarkgoldenrod.ЦветФона="#B8860B"; НастроитьCSS(Divdarkgoldenrod);
  Divdarkgray=U.СоздатьОбъектCSSDiv("Divdarkgray","Темно-серый darkgoldenrod A9A9A9  _"); 
     Divdarkgray.ЦветФона="#A9A9A9"; Divdarkgray.ЦветТекста="#FFFFFF";  НастроитьCSS(Divdarkgray);
  Divdarkgreen=U.СоздатьОбъектCSSDiv("Divdarkgreen","Темно-зеленый darkdarkgreen 006400  _"); 
     Divdarkgreen.ЦветФона="#006400"; Divdarkgreen.ЦветТекста="#FFFFFF";  НастроитьCSS(Divdarkgreen);
  Divdarkkhaki=U.СоздатьОбъектCSSDiv("Divdarkkhaki","Темный хаки darkkhaki BDB76B  _"); 
     Divdarkkhaki.ЦветФона="#BDB76B"; Divdarkkhaki.ЦветТекста="#FFFFFF";  НастроитьCSS(Divdarkkhaki);
  Divdarkmagenta=U.СоздатьОбъектCSSDiv("Divdarkmagenta","Темно-сиреневый darkmagenta 8B008E  _"); 
     Divdarkmagenta.ЦветФона="#8B008E"; Divdarkmagenta.ЦветТекста="#FFFFFF";  НастроитьCSS(Divdarkmagenta);
  Divdarkolivegreen=U.СоздатьОбъектCSSDiv("Divdarkolivegreen","ТемноОливковый darkolivegreen 556B2F  _"); 
     Divdarkolivegreen.ЦветФона="#556B2F"; Divdarkolivegreen.ЦветТекста="#FFFFFF";  НастроитьCSS(Divdarkolivegreen);
  Divdarkorange=U.СоздатьОбъектCSSDiv("Divdarkorange","Темно-оранжевый darkorange FF8C00  _"); 
     Divdarkorange.ЦветФона="#FF8C00"; Divdarkorange.ЦветТекста="#FFFFFF";  НастроитьCSS(Divdarkorange);
  Divdarkorchid=U.СоздатьОбъектCSSDiv("Divdarkorchid","Похож на blueviolet darkorchid 9932CC  _"); 
     Divdarkorchid.ЦветФона="#9932CC"; Divdarkorchid.ЦветТекста="#FFFFFF";  НастроитьCSS(Divdarkorchid);
  Divdarkred=U.СоздатьОбъектCSSDiv("Divdarkred","Темно-красный darkred 8B0000  _"); 
     Divdarkred.ЦветФона="#8B0000"; Divdarkred.ЦветТекста="#FFFFFF";  НастроитьCSS(Divdarkred);
  Divdarksalmon=U.СоздатьОбъектCSSDiv("Divdarksalmon","Лососевый darksalmon E9967A  _"); 
     Divdarksalmon.ЦветФона="#E9967A"; Divdarksalmon.ЦветТекста="#FFFFFF";  НастроитьCSS(Divdarksalmon);
  Divdarkseagreen=U.СоздатьОбъектCSSDiv("Divdarkseagreen","Оттенок зеленого darkseagreen 8FBC8F  _"); 
     Divdarkseagreen.ЦветФона="#8FBC8F"; Divdarkseagreen.ЦветТекста="#FFFFFF";  НастроитьCSS(Divdarkseagreen);
  Divdarkviolet=U.СоздатьОбъектCSSDiv("Divdarkviolet","Темно-фиолетовый darkviolet 483D8B  _"); 
     Divdarkviolet.ЦветФона="#483D8B"; Divdarkviolet.ЦветТекста="#FFFFFF";  НастроитьCSS(Divdarkviolet);
  Divdeeppink=U.СоздатьОбъектCSSDiv("Divdeeppink","Насыщенный розовый deeppink FF1493  _"); 
     Divdeeppink.ЦветФона="#FF1493"; Divdeeppink.ЦветТекста="#FFFFFF";  НастроитьCSS(Divdeeppink);
  Divdeepskyblue=U.СоздатьОбъектCSSDiv("Divdeepskyblue","Небесно-голубой, темный deepskyblue 00BFFF  _"); 
     Divdeepskyblue.ЦветФона="#00BFFF"; Divdeepskyblue.ЦветТекста="#FFFFFF";  НастроитьCSS(Divdeepskyblue);
  Divforestgreen=U.СоздатьОбъектCSSDiv("Divforestgreen","Зеленый лес forestgreen 228B22  _"); 
     Divforestgreen.ЦветФона="#228B22"; Divforestgreen.ЦветТекста="#FFFFFF";  НастроитьCSS(Divforestgreen);
  Divghostwhite=U.СоздатьОбъектCSSDiv("Divghostwhite","Привидение ghostwhite F8F8FF  _"); 
     Divghostwhite.ЦветФона="#F8F8FF"; НастроитьCSS(Divghostwhite);
  Divgold=U.СоздатьОбъектCSSDiv("Divgold","Золотой gold FFD700  _"); 
     Divgold.ЦветФона="#FFD700"; НастроитьCSS(Divgold);
  Divgreenyellow=U.СоздатьОбъектCSSDiv("Divgreenyellow","Зелено-желтый greenyellow ADFF2F  _"); 
     Divgreenyellow.ЦветФона="#ADFF2F"; НастроитьCSS(Divgreenyellow);
  Divhotpink=U.СоздатьОбъектCSSDiv("Divhotpink","Оттенок розового hotpink FF69B4  _"); 
     Divhotpink.ЦветФона="#FF69B4"; НастроитьCSS(Divhotpink);
  Divindianred=U.СоздатьОбъектCSSDiv("Divindianred","Индеец indianred CD5C5C  _"); 
     Divindianred.ЦветФона="#CD5C5C"; НастроитьCSS(Divindianred);
  Divindigo=U.СоздатьОбъектCSSDiv("Divindigo","Индиго indigo 430082  _"); 
     Divindigo.ЦветФона="#430082"; Divindigo.ЦветТекста="#FFFFFF";  НастроитьCSS(Divindigo);
  Divivory=U.СоздатьОбъектCSSDiv("Divivory","Слоновой кости ivory FFFFF0  _"); 
     Divivory.ЦветФона="#FFFFF0"; НастроитьCSS(Divivory);
  Divkhaki=U.СоздатьОбъектCSSDiv("Divkhaki","Хаки khaki F0E68C  _"); 
     Divkhaki.ЦветФона="#F0E68C"; НастроитьCSS(Divkhaki);
  Divyellowgreen=U.СоздатьОбъектCSSDiv("Divyellowgreen","Зеленый с желтым оттенком yellowgreen 9ACD32  _"); 
     Divyellowgreen.ЦветФона="#9ACD32"; НастроитьCSS(Divyellowgreen);
  Divwhitesmoke=U.СоздатьОбъектCSSDiv("Divwhitesmoke","Дымчатый whitesmoke F5F5F5  _"); 
     Divwhitesmoke.ЦветФона="#F5F5F5"; НастроитьCSS(Divwhitesmoke);
  Divlawngreen=U.СоздатьОбъектCSSDiv("Divlawngreen","Лужайка lawngreen 7CFC00  _"); 
     Divlawngreen.ЦветФона="#7CFC00"; НастроитьCSS(Divlawngreen);
  Divlightblue=U.СоздатьОбъектCSSDiv("Divlightblue","Светло-синий lightblue ADD8E6  _"); 
     Divlightblue.ЦветФона="#ADD8E6"; НастроитьCSS(Divlightblue);
  Divlightcoral=U.СоздатьОбъектCSSDiv("Divlightcoral","Светло-коралловый lightcoral F08080  _"); 
     Divlightcoral.ЦветФона="#F08080";   НастроитьCSS(Divlightcoral);
  Divlightcyan=U.СоздатьОбъектCSSDiv("Divlightcyan","Светло-голубой lightcyan ECFFFF  _"); 
     Divlightcyan.ЦветФона="#ECFFFF";   НастроитьCSS(Divlightcyan);
  Divlightgreen=U.СоздатьОбъектCSSDiv("Divlightgreen","Светло-зеленый lightgreen 90EE90 _"); 
     Divlightgreen.ЦветФона="#90EE90"; НастроитьCSS(Divlightgreen);
  Divlightgrey=U.СоздатьОбъектCSSDiv("Divlightgrey","Светло-серый lightgrey D3D3D3  _"); 
     Divlightgrey.ЦветФона="#D3D3D3"; НастроитьCSS(Divlightgrey);
  Divlightpink=U.СоздатьОбъектCSSDiv("Divlightpink","Светло-розовый lightpink FF36C1  _"); 
     Divlightpink.ЦветФона="#FF36C1"; НастроитьCSS(Divlightpink);
  Divlightskyblue=U.СоздатьОбъектCSSDiv("Divlightskyblue","Небесно-голубой, светлый lightskyblue 87CEFA  _"); 
     Divlightskyblue.ЦветФона="#87CEFA"; НастроитьCSS(Divlightskyblue);
  Divlightsteelblue=U.СоздатьОбъектCSSDiv("Divlightsteelblue","Синяя сталь lightsteelblue B0C4DE  _"); 
     Divlightsteelblue.ЦветФона="#B0C4DE"; НастроитьCSS(Divlightsteelblue);
  Divlightyellow=U.СоздатьОбъектCSSDiv("Divlightyellow","Светло-желтый (близкий к белому) lightyellow FFFFE0  _"); 
     Divlightyellow.ЦветФона="#FFFFE0"; НастроитьCSS(Divlightyellow);
  Divlime=U.СоздатьОбъектCSSDiv("Divlime","Кислотно-зеленый lime 00FF00  _"); 
     Divlime.ЦветФона="#00FF00"; НастроитьCSS(Divlime);
  Divlimegreen=U.СоздатьОбъектCSSDiv("Divlimegreen","Более темный, чем lime limegreen 32CD32  _"); 
     Divlimegreen.ЦветФона="#32CD32"; НастроитьCSS(Divlimegreen);
  Divmaroon=U.СоздатьОбъектCSSDiv("Divmaroon","Марон maroon 800000  _"); 
     Divmaroon.ЦветФона="#800000"; Divmaroon.ЦветТекста="#FFFFFF";  НастроитьCSS(Divmaroon);
  Divmediumauqamarine=U.СоздатьОбъектCSSDiv("Divmediumauqamarine","Аквамарин средней насыщенности mediumauqamarine 66CDAA  _"); 
     Divmediumauqamarine.ЦветФона="#66CDAA"; НастроитьCSS(Divmediumauqamarine);
  Divmediumblue=U.СоздатьОбъектCSSDiv("Divmediumblue","Синий средней насыщенности mediumblue 000CCD  _"); 
     Divmediumblue.ЦветФона="#000CCD"; Divmediumblue.ЦветТекста="#FFFFFF"; НастроитьCSS(Divmediumblue);
  Divmeidiumpurple=U.СоздатьОбъектCSSDiv("Divmeidiumpurple","Пурпурный средней насыщенности meidiumpurple 9370D8  _"); 
     Divmeidiumpurple.ЦветФона="#9370D8"; Divmeidiumpurple.ЦветТекста="#FFFFFF"; НастроитьCSS(Divmeidiumpurple);
  Divmidnightblue=U.СоздатьОбъектCSSDiv("Divmidnightblue","Полночь midnightblue 191970  _"); 
     Divmidnightblue.ЦветФона="#191970"; Divmidnightblue.ЦветТекста="#FFFFFF";  НастроитьCSS(Divmidnightblue);
  Divnavy=U.СоздатьОбъектCSSDiv("Divnavy","Цвет ВМФ navy 000080  _"); 
     Divnavy.ЦветФона="#000080"; Divnavy.ЦветТекста="#FFFFFF";  НастроитьCSS(Divnavy);
  Divolive=U.СоздатьОбъектCSSDiv("Divolive","Оливковый olive 808000  _"); 
     Divolive.ЦветФона="#808000"; Divolive.ЦветТекста="#FFFFFF";   НастроитьCSS(Divolive);
  Divorange=U.СоздатьОбъектCSSDiv("Divorange","Оранжевый orange FFA500  _"); 
     Divorange.ЦветФона="#FFA500"; Divorange.ЦветТекста="#FFFFFF";   НастроитьCSS(Divorange);
  Divpurple=U.СоздатьОбъектCSSDiv("Divpurple","Пурпурный purple 800080  _"); 
     Divpurple.ЦветФона="#800080"; Divpurple.ЦветТекста="#FFFFFF";   НастроитьCSS(Divpurple);
  Divsilver=U.СоздатьОбъектCSSDiv("Divsilver","Серебряный silver C0C0C0  _"); 
     Divsilver.ЦветФона="#C0C0C0"; Divsilver.ЦветТекста="#FFFFFF";  НастроитьCSS(Divsilver);
  Divskyblue=U.СоздатьОбъектCSSDiv("Divskyblue","Небесно-голубой skyblue 87CEE3  _"); 
     Divskyblue.ЦветФона="#87CEE3"; Divskyblue.ЦветТекста="#FFFFFF";  НастроитьCSS(Divskyblue);
  Divsnow=U.СоздатьОбъектCSSDiv("Divsnow","Снег snow FFFAFA  _"); 
     Divsnow.ЦветФона="#FFFAFA"; НастроитьCSS(Divsnow);
  Divviolet=U.СоздатьОбъектCSSDiv("Divviolet","Фиолетовый violet EE82EE  _"); 
     Divviolet.ЦветФона="#EE82EE";   НастроитьCSS(Divviolet);
  Divtomato=U.СоздатьОбъектCSSDiv("Divtomato","Томат tomato FF6347  _"); 
     Divtomato.ЦветФона="#FF6347";   НастроитьCSS(Divtomato);
  Divsteelblue=U.СоздатьОбъектCSSDiv("Divsteelblue","Голубая сталь steelblue 468234  _"); 
     Divsteelblue.ЦветФона="#468234"; Divsteelblue.ЦветТекста="#FFFFFF";  НастроитьCSS(Divsteelblue);
  
  DivБаза=U.СоздатьОбъектCSSDiv("baza",DivWhite.СтрокаHTML()+Divblack.СтрокаHTML()+Divblue.СтрокаHTML()+Divgreen.СтрокаHTML()+Divcyan.СтрокаHTML()+
    Divred.СтрокаHTML()+Divmagenta.СтрокаHTML()+Divbrown.СтрокаHTML()+Divgray.СтрокаHTML()+Divaliceblue.СтрокаHTML()+Divantiquewhite.СтрокаHTML()+
	Divaqua.СтрокаHTML()+Divaquamarine.СтрокаHTML()+Divazure.СтрокаHTML()+Divbeige.СтрокаHTML()+Divblanchedalmond.СтрокаHTML()+Divblueviolet.СтрокаHTML()+
	Divburlywood.СтрокаHTML()+Divcadetblue.СтрокаHTML()+Divchartreuse.СтрокаHTML()+Divchocolate.СтрокаHTML()+Divcoral.СтрокаHTML()+Divcornflowerblue.СтрокаHTML()+
	Divcornsilk.СтрокаHTML()+Divdarkblue.СтрокаHTML()+Divdarkcyan.СтрокаHTML()+Divdarkgoldenrod.СтрокаHTML()+Divdarkgray.СтрокаHTML()+Divdarkgreen.СтрокаHTML()+
	Divdarkkhaki.СтрокаHTML()+Divdarkmagenta.СтрокаHTML()+Divdarkolivegreen.СтрокаHTML()+Divdarkorange.СтрокаHTML()+Divdarkorchid.СтрокаHTML()+
	Divdarkred.СтрокаHTML()+Divdarksalmon.СтрокаHTML()+Divdarkseagreen.СтрокаHTML()+Divdarkviolet.СтрокаHTML()+Divdeeppink.СтрокаHTML()+
	Divdeepskyblue.СтрокаHTML()+Divforestgreen.СтрокаHTML()+Divghostwhite.СтрокаHTML()+Divgold.СтрокаHTML()+Divgreenyellow.СтрокаHTML()+
	Divhotpink.СтрокаHTML()+Divindianred.СтрокаHTML()+Divindigo.СтрокаHTML()+Divivory.СтрокаHTML()+Divkhaki.СтрокаHTML()+Divyellowgreen.СтрокаHTML()+
	Divwhitesmoke.СтрокаHTML()+Divlawngreen.СтрокаHTML()+Divlightblue.СтрокаHTML()+Divlightcoral.СтрокаHTML()+Divlightcyan.СтрокаHTML()+
	Divlightgreen.СтрокаHTML()+Divlightgrey.СтрокаHTML()+Divlightpink.СтрокаHTML()+Divlightskyblue.СтрокаHTML()+Divlightsteelblue.СтрокаHTML()+
	Divlightyellow.СтрокаHTML()+Divlime.СтрокаHTML()+Divlimegreen.СтрокаHTML()+Divmaroon.СтрокаHTML()+Divmediumauqamarine.СтрокаHTML()+
	Divmediumblue.СтрокаHTML()+Divmeidiumpurple.СтрокаHTML()+Divmidnightblue.СтрокаHTML()+Divnavy.СтрокаHTML()+Divolive.СтрокаHTML()+
	Divorange.СтрокаHTML()+Divpurple.СтрокаHTML()+Divsilver.СтрокаHTML()+Divskyblue.СтрокаHTML()+Divsnow.СтрокаHTML()+Divviolet.СтрокаHTML()+
	Divtomato.СтрокаHTML()+Divsteelblue.СтрокаHTML());  
  
  Шаблон=U.СоздатьОбъектHTMLШаблонCSSDiv();   Шаблон.ИмяФайла="Color.html";
  Шаблон.Div(DivБаза).Div(DivWhite).Div(Divblack).Div(Divblue).Div(Divgreen).Div(Divcyan).Div(Divred).Div(Divmagenta).Div(Divbrown).Div(Divgray); 
  Шаблон.Div(Divaliceblue).Div(Divantiquewhite).Div(Divaqua).Div(Divaquamarine).Div(Divazure).Div(Divbeige).Div(Divblanchedalmond).Div(Divblueviolet); 
  Шаблон.Div(Divburlywood).Div(Divcadetblue).Div(Divchartreuse).Div(Divchocolate).Div(Divcoral).Div(Divcornflowerblue).Div(Divcornsilk).Div(Divdarkgreen); 
  Шаблон.Div(Divdarkblue).Div(Divdarkcyan).Div(Divdarkgoldenrod).Div(Divdarkgray).Div(Divdarkkhaki).Div(Divdarkmagenta).Div(Divdarkolivegreen).Div(Divdarkorange); 
  Шаблон.Div(Divdarkblue).Div(Divdarkorchid).Div(Divdarkred).Div(Divdarksalmon).Div(Divdarkseagreen).Div(Divdarkviolet).Div(Divdeeppink).Div(Divdeepskyblue); 
  Шаблон.Div(Divforestgreen).Div(Divghostwhite).Div(Divgold).Div(Divgreenyellow).Div(Divhotpink).Div(Divindianred).Div(Divindigo).Div(Divivory); 
  Шаблон.Div(Divkhaki).Div(Divyellowgreen).Div(Divwhitesmoke).Div(Divlawngreen).Div(Divlightblue).Div(Divlightcoral).Div(Divlightcyan).Div(Divlightgreen); 
  Шаблон.Div(Divlightgrey).Div(Divlightpink).Div(Divlightskyblue).Div(Divlightsteelblue).Div(Divlightyellow).Div(Divlime).Div(Divlimegreen).Div(Divmaroon); 
  Шаблон.Div(Divmediumauqamarine).Div(Divmediumblue).Div(Divmeidiumpurple).Div(Divmidnightblue).Div(Divnavy).Div(Divolive).Div(Divorange).Div(Divpurple); 
  Шаблон.Div(Divsilver).Div(Divskyblue).Div(Divsnow).Div(Divviolet).Div(Divtomato).Div(Divsteelblue); 
  Шаблон.Инициализация();
  U.ПРОЦЕСС_Окончание();
КонецФункции

U = ЗагрузитьСценарий("UfaScript.osb");
U.БазовыеУстановкиСистемыUfaScript();
Клиент2();

