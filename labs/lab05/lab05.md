---
## Front matter
title: "Отчёт по лабораторной работе №5"
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

#1) Цель работы

Освоить инструкции языка ассемблера mov.Приобрести знания использования Midnight Commander.

#2) Задание
Написать 2 программы по примеру и впоследствии изменить их по условию.

#3) Выполнение лабораторной работы
    3.1) Заходим в Midnight Commander
    ![Рис. 1 используем команду mc](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab05/image/1.png)
    3.2) Переходим в каталог созданный при выполнении лабораторной работы №4 и создаем там каталог lab05
    ![Рис. 2 Используем клавишу f7 для создания каталога](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab05/image/2.png)
    3.3) Создаем файл lab05-1.asm с помощью команды touch в командной строке в midnight commander
    ![Рис. 3 Создаем lab05-1.asm](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab05/image/3.png)
    3.4) Редактируем файл
    ![Рис. 4 Редактируем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab05/image/4.png)
    3.5) Транслируем текст и запускаем исполняемый файл
    ![Рис. 5 Проверяем как работает программа](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab05/image/5.png)
    3.6) Скачиваем файл и перемещаем его в нужный каталог 
    ![Рис. 6 Скачиваем файл и перемещаем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab05/image/6.png)
    3.7) Копируем с помощью f5
    ![Рис. 7 Копируем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab05/image/7.png)
    3.8) Создаем копию с помощью f6
    ![Рис. 8 Скачиваем файл и перемещаем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab05/image/8.png)
    3.9) Редактируем файл lab05-2.asm 
    ![Рис. 9 Редактируем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab05/image/9.png)
    3.10) Транслируем и запускаем исполняемый файл для проверки того как работает код
    ![Рис. 10 Запускаем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab05/image/10.png)
    3.11) Снов открываем файл и редактируем, после проверяем как он работает
    ![Рис. 11 Запускаем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab05/image/11.png)
    Заметим, что если мы меняем sprintLF на sprint, то текст не переносится на новую строку
#4) Задания для самостоятельной работы
    4.1) Создаем копию файла lab05-1.asm и называем lab5-1cop.asm
    ![Рис. 12 Копируем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab05/image/12.png)
    4.2) Редактируем файл так, чтобы текст с клавиатуры выводился в консоль
    ![Рис. 13 Редактируем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab05/image/13.png)
    ![Рис. 14 Проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab05/image/14.png)
    4.3) Создаем копию, редактируем, проверяем
    ![Рис. 15 Проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab05/image/15.png)
    ![Рис. 16 Проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab05/image/16.png)
    ![Рис. 17 Проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab05/image/17.png)

#5) Выводы
Мы приобрели навыки работы с Midnight Commander и освоили инструкцию mov.


