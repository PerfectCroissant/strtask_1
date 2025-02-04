import sequtils, strutils, os  # Все нужные библиотеки уже подключены
import utils  # Рекомендуем ознакомиться для выполнения задания :)

# Дана структура папок. Запишите в переменную dirs названия всех папок, заменив пробелы на _. 
# Запишите в переменную files все имена файлов, которые находятся в каждой из папок, без названия самих папок. 
# Запишите в переменную exts все расширения файлов (даже повторы).

const RootDir = "folder"
# Ниже реализуйте требуемую задачу

var dirs, files, exts: seq[string]
dirs.add(getDirs(RootDir))
dirs = map(dirs, proc(item: string): string = item.replace(" ", "_")) # Заменяем в названии всех папок пробелы на _
files.add(getFiles(RootDir))
exts.add(getFiles(RootDir))
exts = map(exts, proc(item: string): string = splitFile(item).ext) # splitFile "делит" строку с расположением файла на путь, имя файла и его расширение. Нам нужно только расширение файла, поэтому обращаемся к нему, указывая ".ext"

# Не изменяйте код ниже
import sets
doAssert(
    len(@["folder/f_4/ff1", "folder/f_3/ff1", "folder/f_5", "folder/f_5/ff1", "folder/f_8", "folder/f_1", "folder/f_3", "folder", "folder/f_3/ff2", "folder/f_4", "folder/f_7", "folder/f_2", "folder/f_4/ff_2", "folder/f_6", "folder/f_9"].toHashSet - dirs.toHashSet) == 0 or
    len(@["folder\\f_4\\ff1", "folder\\f_3\\ff1", "folder\\f_5", "folder\\f_5\\ff1", "folder\\f_8", "folder\\f_1", "folder\\f_3", "folder", "folder\\f_3\\ff2", "folder\\f_4", "folder\\f_7", "folder\\f_2", "folder\\f_4\\ff_2", "folder\\f_6", "folder\\f_9"].toHashSet - dirs.toHashSet) == 0
)
doAssert len(@["file.4.some", "ff1.txt", "1.dat", "ff2.ext", "f3.text", "123.klm", "file.1.txt", "file.1.txt", "file.3.txt", "file.1.txt", "file.2.txt", "file 2.txt"].toHashSet - files.toHashSet) == 0
doAssert len(@[".some", ".txt", ".dat", ".txt", ".txt", ".txt", ".txt", ".text", ".klm", ".txt", ".ext", ".txt"].toHashSet - exts.toHashSet) == 0
