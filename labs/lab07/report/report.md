---
## Front matter
title: "Отчет по лабараторной работе №7"
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

Изучение команд условного и бузусловного переходов. Приобретение навыков написания программ с использованием переходов. Знакомство с назначением и структурой файла листинга
# Задание

Здесь приводится описание задания в соответствии с рекомендациями
методического пособия и выданным вариантом.

# Теоретическое введение

Для реализации в ассемблере используются так называемые команды передачи управления или команды перехода. Можно выделить только 2 типа переходов:

1) Условный преход - выполнение или не выполнение перехода в определенную точку программы в зависимости от проверки условия.
2) Безусловный переход - выполнение передачи управления в определенную точку программы без каких-либо условий.

# Выполнение лабораторной работы

Создаю каталог и перехожу в него. (рис. @fig:001).

![Создание каталога и переход в него](image/1.jpg){#fig:001 width=70%}


Создал файл lab7-1.asm и открываю его.  (рис. @fig:002).

![Создание и открытие файла](image/2.jpg){#fig:002 width=70%}


Ввел в файл программу  (рис. @fig:003).

![Ввод программы в файл](image/3.jpg){#fig:003 width=70%}


Создал исполняемый файл и запустил его (рис. @fig:004).

![Запуск файла](image/4.jpg){#fig:004 width=70%}


Редактировал программу в файле lab7-1.asm (рис. @fig:005).

![Редактирование программы](image/5.jpg){#fig:005 width=70%}


Создаю исполняемый файл с редактированной программой и запускаю его  (рис. @fig:006).

![Запуск файла](image/6.jpg){#fig:006 width=70%}


Создал файл lab7-2.asm в том же каталоге  (рис. @fig:007).

![Создание файла](image/7.jpg){#fig:007 width=70%}


Ввел программу в этот файл (рис. @fig:008).

![Ввод программы](image/8.jpg){#fig:008 width=70%}


Создал файл листинга для программы из файла lab7-2.asm указав ключ -l и задав имя файла листинга в командной строке  (рис. @fig:009).

![Создание файла листинга](image/9.jpg){#fig:009 width=70%}


Открыл файл листинга (рис. @fig:010).

![Открытие файла листинга](image/10.jpg){#fig:010 width=70%}


# Объяснение трех строк

Из регистра eax перетаскиваю значение в регистр ebx (рис. @fig:011).

![Переход значения](image/11.jpg){#fig:011 width=70%}


Сравниванию число из регистра eax с нулем (рис. @fig:012).

![Сравнение числа из регистра с 0](image/12.jpg){#fig:012 width=70%}


Вызываю функцию вычисления длины сообщения  (рис. @fig:013).

![Вызов функции](image/13.jpg){#fig:013 width=70%}




# Выводы

Изучил команды условного и бузусловного переходов. Приобрел навыки написания программ с использованием переходов. Познакомился с назначением и структурой файла листинга.

# Список литературы{.unnumbered}

::: {#refs}
:::
