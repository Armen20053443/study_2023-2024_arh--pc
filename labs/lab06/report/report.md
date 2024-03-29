---
## Front matter
title: "Отчет по лабараторной работе №6"
subtitle: "Архитектура компьютера"
author: "Исаханян Армен Артурович"
## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---



# Цель работы

Цель данной лабораторной работы - освоение арифметческих инструкций
языка ассемблера NASM.

# Теоретическое введение

Большинство инструкций на языке ассемблера требуют обработки операндов.
Адрес операнда предоставляет место, где хранятся данные, подлежащие обра-
ботке. Это могут быть данные хранящиеся в регистре или в ячейке памяти. -
Регистровая адресация – операнды хранятся в регистрах и в команде использу-
ются имена этих регистров, например: mov ax,bx. - Непосредственная адресация
– значение операнда задается непосредственно в команде, Например: mov ax,2.
- Адресация памяти – операнд задает адрес в памяти. В команде указывается
символическое обозначение ячейки памяти, над содержимым которой требуется
выполнить операцию.
Ввод информации с клавиатуры и вывод её на экран осуществляется в символь-
ном виде. Кодирование этой информации производится согласно кодовой табли-
це символов ASCII. ASCII – сокращение от American Standard Code for Information
Interchange (Американский стандартный код для обмена информацией). Соглас-
но стандарту ASCII каждый символ кодируется одним байтом. Среди инструкций
NASM нет такой, которая выводит числа (не в символьном виде). Поэтому, на-
пример, чтобы вывести число, надо предварительно преобразовать его цифры в
ASCII-коды этих цифр и выводить на экран эти коды, а не само число. Если же
выводить число на экран непосредственно, то экран воспримет его не как число,
а как последовательность ASCII-символов – каждый байт числа будет воспринят
как один ASCII-символ – и выведет на экран эти символы. Аналогичная ситу-
ация происходит и при вводе данных с клавиатуры. Введенные данные будут
представлять собой символы, что сделает невозможным получение корректного
результата при выполнении над ними арифметических операций. Для решения
этой проблемы необходимо проводить преобразование ASCII символов в числа
и обратно.
# Выполнение лабораторной работы

Создал каталог lab06 перешел в него и создал файл lab6-1.asm и открыл его (рис. @fig:001).

![Создание каталога, переход в него, создание файла и его открытие](image/1.jpg){#fig:001 width=70%}

Ввел программу в файл (рис. @fig:002).

![Ввод программы](image/2.jpg){#fig:002 width=70%}

Скомпилировал исходный файл передал файл компоновщику(рис. @fig:003).

![Компиляция исходного файла и текста, передача файла компоновщику](image/3.jpg){#fig:003 width=70%}

Редактировал программу в файле lab6-1.asm (рис. @fig:004).

![Редактрирование программы](image/4.jpg){#fig:004 width=70%}


Скомпилировал исходный файл передал файл компоновщику (рис. @fig:005).

![Компиляция файла и передача файла компоновщику](image/5.jpg){#fig:005 width=70%}

Создание файла lab6-2 в том же каталоге (рис. @fig:006).

![Создание файла](image/6.jpg){#fig:006 width=70%}

Ввел программу в файл lab6-2.asm (рис. @fig:007).

![Ввод программы](image/7.jpg){#fig:007 width=70%}

Создал файл variant.asm в том же каталоге ввел программу, затем ввел номер смоего студенческого билета и узнал свой вариант-17. (рис. @fig:008).

![Создание файла, ввод программы, ввод студенческого](image/8.jpg){#fig:008 width=70%}

Узнал номер своего варианта (рис. @fig:009).

![Вариант 17](image/9.jpg){#fig:009 width=70%}





# Ответы на вопросы по программе

1. За вывод сообщения “Ваш вариант” отвечают строки кода:
mov eax,rem
call sprint
2. Инструкция mov ecx, x используется, чтобы положить адрес вводимой стро-
ки x в регистр ecx mov edx, 80 - запись в регистр edx длины вводимой строки
call sread - вызов подпрограммы из внешнего файла, обеспечивающей ввод
сообщения с клавиатуры
3. call atoi используется для вызова подпрограммы из внешнего файла, кото-
рая преобразует ascii-код символа в целое число и записывает результат в
регистр eax
4. За вычисления варианта отвечают строки:
xor edx,edx ; обнуление edx для корректной работы div
mov ebx,20 ; ebx = 20
div ebx ; eax = eax/20, edx - остаток от деления
inc edx ; edx = edx + 1
5. При выполнении инструкции div ebx остаток от деления записывается в
регистр edx
6. Инструкция inc edx увеличивает значение регистра edx на 1
7. За вывод на экран результатов вычислений отвечают строки:
mov eax,edx
call iprintLF




# Выполнение самостоятельной работы

В файле variant.asm очистил предыдущую программу и написал новую программу для выполнения самостоятельной работы(рис. @fig:010).

![C/p](image/10.jpg){#fig:010 width=70%}


Проверил правильность программы(рис. @fig:011).

![Проверка](image/11.jpg){#fig:011 width=70%}




















# Выводы

Освоил арифметические инструкции языка ассемблера NASM

# Список литературы{.unnumbered}

::: {#refs}
:::
