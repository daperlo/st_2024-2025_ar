---
## Front matter
title: "Отчёт по лабораторной работе №6"
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

Освоить арифметических инструкций языка ассемблера NASM и написать программы для вычисления арифметических выражений с неизвестной.

# 2)Задание
Написать программы для решения выражений.

# 3)Выполнение лабораторной работы
## 3.1)Создаем каталог для программ ЛБ6, и в нем создаем файл 
![Создаем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab06/image/1.png)
    
## 3.2)Открываем файл в Midnight Commander и заполняем его. Создаем исполняемый файл и проверяем
![Заполняем, проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab06/image/2.png)
    
## 3.3)Меняем файл и проверяем что изменилось 
![Меняем проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab06/image/3.png)

## 3.4)Создаем файл и заполняем его и так же проверяем
![заполняем, проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab06/image/4.png)
    
## 3.5)Изменяем файл файл и снова проверяем вывод
![Изменяем, проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab06/image/5.png)

## 3.6)Меняем iprintLF на iprint и смотрим на разницу
![Скачиваем файл и перемещаем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab06/image/6.png)

Разница лишь в том что iprintLF переводит на новую строку, а iprint не переводит

## 3.7)Создаем файл, заполняем его и проверяем
![Проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab06/image/7.png)
    
## 3.8)Изменяем файл и проверяем
![Меняем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab06/image/8.png)
![Проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab06/image/9.png)
    
## 3.9)Создаем новый файл, заполняем и проверяем
![Проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab06/image/10.png)
    
# 4) Ответы на вопросы
1.	Строка “mov eax,rem” и строка “call sprint” отвечают за вывод на экран сообщения ‘Ваш вариант:’.
2.	Эти инструкции используются для чтения строки с вводом данных от пользователя. Начальный адрес строки сохраняется в регистре ecx, а количество символов в строке (максимальное количество символов, которое может быть считано) сохраняется в регистре edx. Затем вызывается процедура sread, которая выполняет чтение строки.
3.	Инструкция “call atoi” используется для преобразования строки в целое число. Она принимает адрес строки в регистре eax и возвращает полученное число в регистре eax.
4.	Строка “xor edx,edx” обнуляет регистр edx перед выполнением деления. Строка “mov ebx,20” загружает значение 20 в регистр ebx. Строка “div ebx” выполняет деление регистра eax на значение регистра ebx с сохранением частного в регистре eax и остатка в регистре edx.
5.	Остаток от деления записывается в регистр edx.
6.	Инструкция “inc edx” используется для увеличения значения в регистре edx на 1. В данном случае, она увеличивает остаток от деления на 1.
7.	Строка “mov eax,edx” передает значение остатка от деления в регистр eax. Строка “call iprintLF” вызывает процедуру iprintLF для вывода значения на экран вместе с переводом строки.

# 5)Задания для самостоятельной работы
## 5.1)Создаем файл и пиши в него код
![Создаем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab06/image/11.png)
![КОД](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab06/image/12.png)
    
## 5.2)Проверяем
![Проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab06/image/13.png)

# 6)Выводы
Мы приобрели навыки создания исполнительных файлов для решения выражений и освоили арифметические инструкции в NASM.

