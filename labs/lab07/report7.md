---
## Front matter
title: "Отчёт по лабораторной работе №7"
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

Изучение команд условного и безусловного переходов. Приобретение навыков написания
программ с использованием переходов. Знакомство с назначением и структурой файла
листинга.

# 2)Задание
Написать программы для решения системы выражений.

# 3)Выполнение лабораторной работы
## 3.1)Создаем каталог для программ ЛБ7, и в нем создаем файл 
![Создаем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab07/image/1.png)
    
## 3.2)Открываем файл в Midnight Commander и заполняем его согласно листингу 1. Создаем исполняемый файл и проверяем
![Заполняем, проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab06/image/2.png)
    
## 3.3)Изменяем код в файле согласно листингу 2 и проверяем что изменилось 
![заполняем, проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab07/image/3.png)

## 3.4)Меняем код так, чтобы код работал полностью верно
![изменяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab07/image/4.png)
![Проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab07/image/5.png)
    
## 3.5)Создаем файл и заполняем его согласно листингу 3, проверяем работу файла
![заполняем, проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab07/image/6.png)


## 3.6)Создаем файл листинга для lab7-2.asm
![создаем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab07/image/7.png)


## 3.7)Открываем созданный файл через Midnight Commander
![открываем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab07/image/8.png)
Изучаем файл
Строка 33: 0000001D-адрес в сегменте кода, BB01000000-машинный код, mov
ebx,1-присвоение переменной ecx значения 1
Строка 34: 00000022-адрес в сегменте кода, B804000000-машинный код, mov
eax,4-присвоение переменной eax значения 4
Строка 35 00000027-адрес в сегменте кода, CD80-машинный код, int 80h-
вызов ядра.
    
## 3.8)Удаляем операндум из файла, создаем файл листинга и смотрим ошибки
![удаляем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab07/image/9.png)
![создаем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab07/image/10.png)
не смотря на ошибку файл создается
![просматриваем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab07/image/11.png)


# 4)Задания для самостоятельной работы
ВАРИАНТ 10
## 4.1)Задача 1
Напишите программу нахождения наименьшей из 3 целочисленных переменных 𝑎,𝑏 и .
Значения переменных выбрать из табл. 7.5 в соответствии с вариантом, полученным
при выполнении лабораторной работы № 7. Создайте исполняемый файл и проверьте
его работу.
Создаем файл с помощью touch и пишем в нем код
![код](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab07/image/12.png)
![проверка](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab07/image/13.png)

##4.2)Задача 2
Напишите программу, которая для введенных с клавиатуры значений 𝑥 и 𝑎 вычисляет
значение заданной функции 𝑓(𝑥) и выводит результат вычислений. Вид функции 𝑓(𝑥)
выбрать из таблицы 7.6 вариантов заданий в соответствии с вариантом, полученным
при выполнении лабораторной работы № 7. Создайте исполняемый файл и проверьте
его работу для значений 𝑥 и 𝑎 из 7.6.
Создаем файл и пишем код
![код](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab07/image/14.png)
![код](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab07/image/141.png)
![проверка](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab07/image/15.png)


# 5)Выводы
Мы познакомились с структурой файла листинга, изучили команды условного и безусловного перехода.
