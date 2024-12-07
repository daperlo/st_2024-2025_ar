---
## Front matter
title: "Отчёт по лабораторной работе №9"
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

Приобрести навыки написания программ с использованием подпрограмм. Знакомство с методом отладки при помощи GDB и его основными возможностями.


# 2)Выполнение лабораторной работы
## 2.1)Создаем каталог для программ ЛБ9 и создаем в нем файл
![Создаем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/1.png)
    
## 2.2)Открываем файл в Midnight Commander и заполняем его согласно листингу 1. Создаем исполняемый файл и проверяем
![Заполняем, проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/2.png)
    
## 2.3)Изменяем код в файле и проверяем что изменилось 
![изменяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/3.png)

![проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/4.png)


## 2.4)Создаем файл, заполняем в соответствии с листингом 2 и получаем исходный файл с использованием отладчика gdb
![gdb отладчик](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/5.png)

    
## 2.5)Запускаем программу командой run
![запускаем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/6.png)


## 2.6)Устанавливаем брейкпоинт на метку _start и запускаем программу
![запускаем программу с брейкпоинтом](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/7.png)


## 2.7)Смотрим дисассимилированный код программы с помощью команды disassemble, начиная с метку _start
![запускаем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/8.png)

## 2.8)Переключаем на отображение команд с Intel синтаксисом
![intel синтаксис](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/9.png)

Различия отображения синтаксиса машинных команд в режимах ATT и Intel:
1.Порядок операндов: В ATT синтаксисе порядок операндов обратный, сначала
указывается исходный операнд, а затем - результирующий операнд. В Intel син-
таксисе порядок обычно прямой, результирующий операнд указывается первым,
а исходный - вторым.
2.Разделители: В ATT синтаксисе разделители операндов - запятые. В Intel
синтаксисе разделители могут быть запятые или косые черты (/).
3.Префиксы размера операндов: В ATT синтаксисе размер операнда указывается перед операндом с использованием префиксов, таких как “b” (byte), “w” (word),
“l” (long) и “q” (quadword). В Intel синтаксисе размер операнда указывается после
операнда с использованием суффиксов, таких как “b”, “w”, “d” и “q”.
4.Знак операндов: В ATT синтаксисе операнды с позитивными значениями
предваряются символом “".𝐼𝑛𝑡𝑒𝑙"”.
5.Обозначение адресов: В ATT синтаксисе адреса указываются в круглых скоб-
ках. В Intel синтаксисе адреса указываются без скобок.
6.Обозначение регистров: В ATT синтаксисе обозначение регистра начинается
с символа “%”. В Intel синтаксисе обозначение регистра может начинаться с
символа “R” или “E” (например, “%eax” или “RAX”).

## 2.9)Включаем отображение регистров, их значений и результат дисассимилирования программы
![включаем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/10.png)

## 2.10)Проверяем была ли установлена точка остановки и устанавливаем точку остановки последней инструкции
![проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/11.png)

## 2.11)Смотрим информацию о всех установленных точках остановки
![смотрим](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/12.png)

## 2.12)Выполняем 5 команд si
![si](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/13.png)

Во время выполнения команд менялись регистры: ebx, ecx, edx, eax, eip

## 2.13)Смотрим значение переменной msg1 и переменной msg2
![si](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/14.png)

## 2.14)Меняем первый символ переменной msg1 и msg2
![меняем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/15.png)

## 2.15)Смотрим значение регистра edx в разных форматах
![смотрим](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/16.png)

## 2.16)Изменяем регистр ebx
![изменяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/17.png)

## 2.17)Прописываем команды для завершения программы и выхода из GBD
![Прописываем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/18.png)

## 2.18)Копируем файл lab8-2.asm в файл с именем lab9-3.asm создаем и запускаем в отладчике файл
![Прописываем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/19.png)

## 2.19)Установим точку останова перед первой инструкцией в программе и запустим ее
![Прописываем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/20.png)

## 2.20)Смотрите позиции стека по разным адресам
![Прописываем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/21.png)

Шаг изменения адреса равен 4 потому что адресная регистрация имеют размерность 32 бита(4байта)

# 3)Задания для самостоятельной работы
ВАРИАНТ 10
##Задание 1
### 3.1.1)Копируем файл lab8-4.asm в файл с именем lab9-3.asm
![копируем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/23.png)

### 3.1.2)Открываем файл и пишем код
![код](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/22.png)

### 3.1.3)Проверяем
![проверка](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/24.png)

##Задание 2
### 3.2.1)Создаем файл и заполняем файл в соответствии с листингом и проверяем работу
![проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/27.png)
Работает неправильно
### 3.2.2)Создаем исполняем файл и запускаем его в отладке GDB и смотрим на изменение решистров командой si
![проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/26.png)
### 3.2.3)Ищем ошибку
![ищем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/25.png)
### 3.2.4)Изменяем код для корректной работы
![код](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/28.png)
### 3.2.4)Проверяем
![проверяем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab09/image/29.png)



# 4)Выводы
Мы познакомились с методом отладки при помощи GBD и его возможности
