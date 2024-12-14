---
## Front matter
title: "Отчёт по лабораторной работе №10"
subtitle: "дисциплина: Архитектура компьютера"
author: "Попов Даниил Георгиевич"

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
mainfont: FreeSerif
romanfont: FreeSerif
sansfont: FreeSerif
monofont: FreeSerif
mathfont: FreeSerif
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
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

# 1)Цель работы

Приобрести навыки написания программ для работы с файлам, научиться
управлять доступом к файлам.

# 2)Выполнение лабораторной работы
## 2.1)Создаем каталог для программ ЛБ9 и создаем в нем файл
![Создаем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab10/image/1.png)
    
## 2.2)Открываем файл в Midnight Commander и заполняем его согласно листингу 1. Создаем исполняемый файл и проверяем
![Заполняем, проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab10/image/2.png)
    
## 2.3)Изменяем права доступа, запрещаем выполнение и проверяем
![права доступа проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab10/image/3.png)

Используем команду chmod для установки нужных прав, после этого
пытаемся запустить файл
Выдало: отказано в доступе. Значит мы поставили правильный запрет на
выполнение.

## 2.4)Изменяем права доступа к файлу с исходным текстом программы, добавив права на исполнение. Пробуем запустить файл
![разрешаем выполнение](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab10/image/4.png)

Используем команду chmod для установки нужных прав, после этого
пытаемся запустить файл
lab10-1.asm является файлом с исходным кодом программы на языке
ассемблера, искусственно добавление права на исполнение не даст
ожидаемого результата. Такие файлы нужно компилировать или
ассемблировать в машинный код, а затем выполнять.

ВАРИАНТ 10


## 2.5)Предоставляем права доступа к 2 файлам, согласно варианту 10 в символьном и двоичном виде, затем проверяем работу команд.
![запускаем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab10/image/5.png)

# 3)Задания для самостоятельной работы
## 3.1)Создаем файл
![создаем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab10/image/6.png)

## 3.2)Код
![код](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab10/image/7.png)

## 3.3)Проверяем работу
![проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab10/image/8.png)


# 4)Выводы
Мы научились писать программы для работы с файлам и научились предоставлять права доступа к файлам.
