Перем U;

Процедура СтартПрограммы()
  U = ЗагрузитьСценарий("UfaScript.osb");
  U.НачальныеУстановкиСистемыUfaScript(10,10);
  
 // Создание первого объекта
 М = Новый Массив;  М.Добавить("Перем Свойство1 экспорт; Перем Свойство2;");
 М.Добавить("Функция СуммаСвойств(Парам) экспорт   Возврат Парам+Свойство1+Свойство2; КонецФункции");
 М.Добавить("Функция Конструктор() экспорт Свойство1=15; Свойство2=3;  КонецФункции ");
 О = U.СоздатьООПОбъект("Object1",М);  
 
 Сообщить("2) "+О.СуммаСвойств(4));  Сообщить("3) "+О.Свойство1); 
 
// Создание наследника от первого 
 М = Новый Массив;  М.Добавить("Перем Свойство11 экспорт; Перем Свойство12;");
 М.Добавить("Функция НоваяФункция() экспорт   Свойство1 = 120; КонецФункции");
 М.Добавить("Функция ВозвратСвойства2() экспорт   Возврат Свойство2; КонецФункции");
 М.Добавить("#Переименовать Конструктор СтарыйКонструктор");
 М.Добавить("Функция Конструктор() экспорт  СтарыйКонструктор(); Свойство11=115; Свойство12=113; КонецФункции");
 
 О2 = U.СоздатьНаследникаООПОбъекта("Object1","Object2",М);

 Сообщить("4) "+О2.Свойство1);  Сообщить("5) "+О2.ВозвратСвойства2()); Сообщить("6) "+О2.СуммаСвойств(7)); 
 
Сложение  = "А+Б";    Умножение = "А*Б";     Деление   = "А/Б";
 
Сообщить("10) "+Арифметика(3,2,"А+Б").Результат());
Сообщить("11) "+Арифметика(3,2,Умножение).Результат());

//Передаем функцию в качестве параметра.  Из-за неправильной отработки функции ЗагрузитьСценарий
//  Функцию нельзя размещать в модулях с исполняемым скриптом, а только в модулях с функциями.
// ВызватьФункцию см.ниже    Итог(3)  см.в конце ufascript.osb
 Сообщить("12) "+ВызватьФункцию("Итог(7)",ЭтотОбъект).Результат());
 
U.Консоль.Прочитать();

U.НарисоватьРамкуНаВесьЭкран();    U.Консоль.Прочитать();

 // Удобнее объекты хранить ввиде образов в функциях типа  ОбразОбъектЭкрана
 Ф = U.СоздатьООПОбъект("ОбъектЭкрана",U.ОбразОбъектЭкрана(Новый Массив));    
 Ф.РегистрацияНаЭкране(U,ЭтотОбъект);   //  передаем U- указатель на подключенный UfaScript  По нему объект сможет обращаться
//  к методам и общим с главной прогой свойствам библиотеки.  Регистрируем объект в массиве экранных объектов 
 Ф.Нарисовать();  // Рисуем объект

 // Меняем свойства у объекта и еще раз рисуем.
 Ф.Y = 20;   Ф.X = 21; Ф.ЦветТекста = ЦветКонсоли.Синий;  Ф.Нарисовать(); 
 
 //  Создаем наследника от ОбъектЭкрана
    Ф1=U.СоздатьНаследникаООПОбъекта("ОбъектЭкрана","Котик",ОбразОбъектКотик(Новый Массив));    
    Ф1.РегистрацияНаЭкране(U,ЭтотОбъект);
  Ф1.Нарисовать();  

 //  Создаем наследника подобие Котика  удобнее способом из образов объектов, тогда родителя не надо создавать
   Ф2=U.СоздатьООПОбъектИзМассива("Собачка",ОбразОбъектКотик(U.ОбразОбъектЭкрана(Новый Массив)));
    Ф2.РегистрацияНаЭкране(U,ЭтотОбъект);   Ф2.Y = 23;   Ф2.Нарисовать();  
U.Консоль.Прочитать();

 Ф.Текст="Для выхода нажимай Esc";  Ф.Y = 5;  Ф.Нарисовать(); 

   Г1=U.СоздатьООПОбъектИзМассива("ГруппаКнопок",U.ОбразОбъектГруппы(Новый Массив));
        Г1.РегистрацияНаЭкране(U,ЭтотОбъект);  
   Г1.ДобавитьЭлементВГруппу(СоздатьКнопку(10,40,"    ПриЖми !     ","Кнопка2"));
   Г1.ДобавитьЭлементВГруппу(СоздатьКнопку(20,40,"     НаЖми !     ","Кнопка3"));
   Г1.ДобавитьЭлементВГруппу(СоздатьКнопку(30,40,"     Жми !       ","Кнопка1"));
U.Консоль.Прочитать();
  
   Г1.МассивГруппы[0].X = 70;   Г1.МассивГруппы[1].X = 70;  Г1.МассивГруппы[2].X = 70;  // Меняем координаты у кнопок
   Г1.МассивГруппы[0].Текст = "     ПоЖми !     ";    Г1.МассивГруппы[0].Изобразить();
   Г1.Нарисовать();   // Нарисовать все элементы группы, то есть все кнопки.
 U.Консоль.Прочитать();

 Г1.АктивироватьЭлемент(1);
  
 	Клавиша = U.Консоль.Прочитать();
 	Пока Г1.ОбработатьНажатия(Клавиша) Цикл
 		Клавиша = U.Консоль.Прочитать();
 	КонецЦикла;

	U.Консоль.Прочитать();
Сообщить("   К О Н Е Ц     П Р О Г Р А М М Ы  ");  
  
U.Консоль.Прочитать();
 
КонецПроцедуры

Функция Итог(Пар)  экспорт;
  Возврат 10+Пар;
КонецФункции

Функция СоздатьКнопку(Y,X,Текст,Имя)
  Кн1=U.СоздатьООПОбъектИзМассива(Имя,U.ОбразОбъектКнопка(Новый Массив));
  Кн1.СоздатьМассивКнопки(Y,X,Текст,U,ЭтотОбъект);    Кн1.Нарисовать();  
  Возврат Кн1;
КонецФункции

Функция Привет() экспорт
   Сообщить("  Я функция Привет  !!!");
КонецФункции






Функция ОбразОбъектКотик(М)
  М.Добавить("#Переименовать Конструктор СтарыйКонструктор");
  М.Добавить("Функция Конструктор() экспорт  СтарыйКонструктор(); Y=13; X=15;  КонецФункции ");
  Возврат М;
КонецФункции

Функция Арифметика(А,Б,Функ)
  М = Новый Массив;    М.Добавить("А="+А+"; Б="+Б+"; С="+Функ+";");  М.Добавить("Возврат С");
  Возврат U.ВыполнитьКодИзМассива(М,0);
КонецФункции

Функция ВызватьФункцию(Функ,Где)
  М = Новый Массив;    М.Добавить("Возврат ТотОбъект."+Функ+";");  Возврат U.ВыполнитьКодИзМассива(М,Где);
КонецФункции


      СтартПрограммы();
