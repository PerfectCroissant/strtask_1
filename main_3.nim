import re, strutils  # ознакомьтесь с функцией findAll библиотеки re

# Дан исходный текст. Найти количество спец.символов (., ,, \, пробелы и т.п.) в тексте. 
# Значение записать в schars. Подсчитать количество букв a в тексте. Значение записать в counter. 
# Найти в тексте все цифры и собрать их в одну строку. Значение записать в numbers.

var text = """English texts for b3ginners to practice read7ng and comprehension online & for fre3. Pr4acticing your comprehension a | of a written En9lish will both improve your vocabulary and understanding of gramma2r and word order; The texts below are des1gned to help you develop: while giving you an instant evaluation of your progre5s."""

# Ниже произведите действия над переменной text

var schars, counter, numbers: int
schars = len(findAll(text, re"\W")) # "\W" обозначает любой "несловесный" символ
counter = len(findAll(text, re"a"))
numbers = parseInt(join(findAll(text, re"\d"))) # "\d" обозначает любую цифру десятиной СС, parseInt преобразует тип string в тип int, join объединяет все строки в одну. метод из библиотеки strutils

# Не изменяйте код ниже
doAssert schars == 57
doAssert counter == 18
doAssert numbers == 37349215