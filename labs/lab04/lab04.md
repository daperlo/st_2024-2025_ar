---
## Front matter
title: "Отчёт по лабораторной работе №4"
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
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
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

# Цель работы

Освоение процедуры компиляции и сборки программ,написанных на ассемблере NASM.

# Задание

- Программа Hello world!
- Задание для самостоятельной работы

# Теоретическое введение

 Основнымифункциональнымиэлементамилюбойэлектронно-вычислительной машины
 (ЭВМ) являются центральный процессор,памятьи периферийные устройства (рис.4.1).
 Взаимодействиеэтихустройствосуществляетсячерезобщуюшину,ккоторойониподклю
чены.Физически шинапредставляетсобой большое количество проводников,соединяющих
 устройства друг с другом.В современных компьютерах проводники выполнены в виде элек
тропроводящихдорожек на материнской (системной) плате.
 Основной задачей процессора является обработка информации, а также организация
 координации всех узлов компьютера. В состав центрального процессора (ЦП) входят
 следующие устройства: 

# Выполнение лабораторной работы

## Программа Hello world!
Создаем каталог для работы с программами на языке ассемблера NASM
1: Создаем каталоги с помощью команды mkdir
Переходим в созданный каталог 
![Создаем каталог и переходим в него](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab04/image/1.png)
2: Создаем текстовый файл hello.asm 
![Создаем текстовый файл hello.asm ](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab04/image/2.png)
3: С помощью команды gedit открываем файл в редакторе и пишем код
![код](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab04/image/3.png)
4: Прописываем команды для создания объектного файла и передачи его компилятору
![cod](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab04/image/4.png)
5: Проверяем работоспособность
![Проверка](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab04/image/5.png)
## Задания для самостоятельной работы

 1. В каталоге ~/work/arch-pc/lab04 с помощью команды cp создайте копию файла
 hello.asm с именем lab4.asm
 2. С помощью любого текстового редактора внесите изменения в текст программы в
 файле lab4.asm так,чтобы вместо Hello world!на экран выводилась строка с вашими
 фамилией и именем.
 3. От транслируйте полученный текст программы lab4.asm в объектный файл. Выполните
 компоновку объектного файла и запустите получившийся исполняемый файл.
 4. Скопируйте файлы hello.asm и lab4.asm в Ваш локальный репозиторий в ката
лог
 ~/work/study/2023-2024/"Архитектура компьютера"/arch-pc/labs/lab04/.
 Загрузите файлы на Github.

1) Копируем файл с изменением названия
![Копируем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab04/image/6.png)
2) Заходим в редактор и меняем код так чтобы выводилась имя и фамилия
![Редактируем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab04/image/7.png)
3) Прописываем те же команды для создания объектного файла и отправки в компилятор и проверяем
![gggg](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab04/image/12.png)
4) Копируем файлы в репозиторий и отправляем на github
![копируем и отправляем](/home/dpopov/work/study/2024-2025/Arhe_pc/arch-pc/labs/lab04/image/9.png)
# Выводы
Мы познакомились с языком ассемблера NASM и создали две работающих
программы.


