rem Производим склеивание двух файлов в итоговый 2.os, чтоб 1 файл = 1 программа
cat UfaScript.osb Kubik.os >2.os
rem oscript ListFile.os >1.os
oscript 2.os
