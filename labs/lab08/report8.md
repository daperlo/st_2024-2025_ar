---
## Front matter
title: "Отчёт по лабораторной работе №8"
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

Приобретение навыков написания программ с использованием циклов и обработкой
аргументов командной строки.

# 2)Задание
Написать программу с использование циклов и обработки аргументов командной строки.

# 3)Выполнение лабораторной работы
## 3.1)Создаем каталог для программ ЛБ8, и в нем создаем файл 
![Создаем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab08/image/1.png)
    
## 3.2)Открываем файл в Midnight Commander и заполняем его согласно листингу 1. Создаем исполняемый файл и проверяем
![Заполняем, проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab08/image/2.png)
    
## 3.3)Изменяем код в файле и проверяем что изменилось 
![изменяем, проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab08/image/3.png)
Регистр ecx принимает значения 9,7,5,3,1(на вход подается число 10, в цикле
label данный регистр уменьшается на 2 командой sub и loop).
Число проходов цикла не соответсвует числу N, так как уменьшается на 2.

## 3.4)Еще раз меняем код и проверяем что изменилось
![изменяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab08/image/4.png)
В данном случае число проходов цикла равна числу N.

    
## 3.5)Создаем файл и заполняем его согласно листингу 2, проверяем работу файла
![заполняем, проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab08/image/5.png)
Программой было обработано 3 аргумента.


## 3.6)Создаем файл и заполняем его согласно листингу 3, проверяем работу файла
![создаем, проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab08/image/6.png)


## 3.7)Снова открываем файл для редактирования и изменяем его, чтобы вычислялось произведение вводимых значений
![код](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab08/image/7.png)
![проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab08/image/8.png)



# 4)Задания для самостоятельной работы
ВАРИАНТ 10
##Задача: 
Напишите программу, которая находит сумму значений функции 𝑓(𝑥) для
𝑥 = 𝑥1, 𝑥2, ..., 𝑥𝑛, т.е. программа должна выводить значение 𝑓(𝑥1) + 𝑓(𝑥2) + ... + 𝑓(𝑥𝑛).
Значения 𝑥𝑖 передаются как аргументы. Вид функции 𝑓(𝑥) выбрать из таблицы
8.1 вариантов заданий в соответствии с вариантом, полученным при выполнении
лабораторной работы № 7. Создайте исполняемый файл и проверьте его работу на
нескольких наборах 𝑥 = 𝑥1, 𝑥2, ..., 𝑥𝑛.

## 4.1)Создаем файл и открываем его через Midnight Commander
![проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab08/image/9.png)

## 4.2)Открываем файл и пишем код
![код](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab08/image/10.png)

## 4.3)Проверяем
![проверка](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab08/image/11.png)


# 5)Выводы
Мы научились решать программы с использованием циклов и обработкой аргументов командной строки.
