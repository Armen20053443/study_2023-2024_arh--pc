---
## Front matter
title: "Шаблон отчёта по лабораторной работе"
subtitle: "Простейший вариант"
author: "Армен Артурович Исаханян"

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

Ознакомиться с принципами работы средств контроля версий. Настроить git для начала работы. 
Используя git, создать рабочее пространство и репозиторий курса, после чего загрузить файлы на github. 

# Выполнение лабораторной работы

Указал имя и e-mail владельца репозитория  (рис. [-@fig:001]).

![Указал имя и e-mail владельца репозитория ](/image/Снимок экрана от 2023-10-13 20-02-50.png){ #fig:001 width=70% }

Настроил uft-8 в выводе соощений git  (рис. [-@fig:002]).

![Настроил параметры autocrlf и safecrlf](/image/Снимок экрана от 2023-10-13 20-05-33.png){ #fig:002 width=70% }

Сгенерировал пару ключей (приватный и открытый) (рис. [-@fig:003]).

![Сгенерировал пару ключей (приватный и открытый)](/image/Снимок экрана от 2023-10-13 20-07-35.png){ #fig:003 width=70% }

Вставил ключ в появившееся на сайте полу и указал имя для ключа title  (рис. [-@fig:004]).

![Вставил ключ в появившееся на сайте полу и указал имя для ключа title ](/image/Снимок экрана от 2023-10-13 20-15-51.png){ #fig:004 width=70% }








# Выводы

Здесь кратко описываются итоги проделанной работы.

# Список литературы{.unnumbered}

::: {#refs}
:::
