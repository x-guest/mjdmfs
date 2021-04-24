#!/bin/bash
# Codepage UTF-8

# Очищаем экран от ранее выполненных команд
clear

# Дополнительные свойства для текта:
# Пример вывода: echo -e "${BOLD} Текст ${NORMAL}"
# ----------------------------------------------------------------------
BOLD='\033[1m'         #  ${BOLD}        # жирный шрифт (интенсивный цвет)
DBOLD='\033[2m'        #  ${DBOLD}       # полу яркий цвет (тёмно-серый, независимо от цвета)
NBOLD='\033[22m'       #  ${NBOLD}       # установить нормальную интенсивность
UNDERLINE='\033[4m'    #  ${UNDERLINE}   # подчеркивание
NUNDERLINE='\033[4m'   #  ${NUNDERLINE}  # отменить подчеркивание
BLINK='\033[5m'        #  ${BLINK}       # мигающий
NBLINK='\033[5m'       #  ${NBLINK}      # отменить мигание
INVERSE='\033[7m'      #  ${INVERSE}     # реверсия (знаки приобретают цвет фона, а фон -- цвет знаков)
NINVERSE='\033[7m'     #  ${NINVERSE}    # отменить реверсию
BREAK='\033[m'         #  ${BREAK}       # все атрибуты по умолчанию
NORMAL='\033[0m'       #  ${NORMAL}      # все атрибуты по умолчанию

# Цвет текста
# Пример вывода: echo -e "${BLACK} Текст ${NORMAL}"
# ----------------------------------------------------------------------
BLACK='\033[0;30m'     #  ${BLACK}       # чёрный цвет знаков
RED='\033[0;31m'       #  ${RED}         # красный цвет знаков
GREEN='\033[0;32m'     #  ${GREEN}       # зелёный цвет знаков
YELLOW='\033[0;33m'    #  ${YELLOW}      # желтый цвет знаков
BLUE='\033[0;34m'      #  ${BLUE}        # синий цвет знаков
MAGENTA='\033[0;35m'   #  ${MAGENTA}     # фиолетовый цвет знаков
CYAN='\033[0;36m'      #  ${CYAN}        # цвет морской волны знаков
GRAY='\033[0;37m'      #  ${GRAY}        # серый цвет знаков

# Цветом текста (жирным) (bold)
# Пример вывода: echo -e "${LGREEN} Текст ${NORMAL}"
# ----------------------------------------------------------------------
DEF='\033[0;39m'       #  ${DEF}         # Цветом текста по умолчанию, жирным шрифтом
DGRAY='\033[1;30m'     #  ${DGRAY}       # Цветом текста серый, жирным шрифтом
LRED='\033[1;31m'      #  ${LRED}        # Цветом текста красный, жирным шрифтом
LGREEN='\033[1;32m'    #  ${LGREEN}      # Цветом текста зелёный, жирным шрифтом
LYELLOW='\033[1;33m'   #  ${LYELLOW}     # Цветом текста желтый, жирным шрифтом
LBLUE='\033[1;34m'     #  ${LBLUE}       # Цветом текста синий, жирным шрифтом
LMAGENTA='\033[1;35m'  #  ${LMAGENTA}    # Цветом текста фиолетовый, жирным шрифтом
LCYAN='\033[1;36m'     #  ${LCYAN}       # Цветом текста морской волны, жирным шрифтом
WHITE='\033[1;37m'     #  ${WHITE}       # Цветом текста белый, жирным шрифтом

# Цвет фона
# Пример вывода: echo -e "${BGGREEN} Текст ${NORMAL}"
# ----------------------------------------------------------------------
BGBLACK='\033[40m'     #  ${BGBLACK}      # Цвет фона чёрный
BGRED='\033[41m'       #  ${BGRED}        # Цвет фона красный
BGGREEN='\033[42m'     #  ${BGGREEN}      # Цвет фона зелёный
BGBROWN='\033[43m'     #  ${BGBROWN}      # Цвет фона желтый
BGBLUE='\033[44m'      #  ${BGBLUE}       # Цвет фона синий
BGMAGENTA='\033[45m'   #  ${BGMAGENTA}    # Цвет фона фиолетовый
BGCYAN='\033[46m'      #  ${BGCYAN}       # Цвет фона морской волны
BGGRAY='\033[47m'      #  ${BGGRAY}       # Цвет фона серый
BGDEF='\033[49m'       #  ${BGDEF}        # Цвет фона по умолчанию

# Выводим меню установки
mainmenu () {
echo
echo -e "${GRAY}           Скрипт автоматической установки         ${NORMAL}"
echo -e "${GRAY}      системы домашней автоматизации ${LCYAN}MajorDoMo     ${NORMAL}"
echo -e "${GRAY}                        и/или                      ${NORMAL}"
echo -e "${GRAY}           сервера IP телефонии ${LCYAN}FreeSWITCH         ${NORMAL}"
echo -e "${GRAY}          на операционную систему ${LRED}D${WHITE}ebian 10        ${NORMAL}"
echo
echo -e "${YELLOW}┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓${NORMAL}"
echo -e "${YELLOW}┃                                        ${NORMAL}${BOLD}${BGGREEN}${WHITE} v. 1.0 ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} Обратите внимание!                             ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} Установка начнется сразу после ввода значения  ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} без подтверждения действия.                    ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} После выполнения выбранного действия,          ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} система будет перезагружена автоматически.     ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» Для просмотра описания, нажмите клавишу.  ${BGGREEN}${WHITE} 1 ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
if [ $(systemctl list-units --type=service --state=active,running,dead,exited | awk '/.*\.service/ {print $1}' | grep -c "majordomo.service") -eq 1 ];then
echo -e "${YELLOW}┃ ${GRAY}» Для переустановки ${LCYAN}MajorDoMo${GRAY}, нажмите.     ${BGBROWN}${WHITE} 2 ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGBROWN}${WHITE} ${NORMAL}${YELLOW} В системе обнаружен сервис ${LCYAN}MajorDoMo${YELLOW}.     ${BGBROWN}${WHITE}   ${YELLOW}  ┃${NORMAL}"
else
echo -e "${YELLOW}┃ ${GRAY}» Для установки ${LCYAN}MajorDoMo${GRAY}, нажмите клавишу. ${BGGREEN}${WHITE} 2 ${YELLOW}  ┃${NORMAL}"
fi
if [ $(dpkg-query -W -f='${Status}' freeswitch 2>/dev/null | grep -c "ok installed") -eq 1 ];then
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» Для переустановки ${LCYAN}FreeSWTCH${GRAY}, нажмите.     ${BGBROWN}${WHITE} 3 ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGBROWN}${WHITE} ${NORMAL}${YELLOW} В системе уже установлен пакет ${LCYAN}FreeSWTCH${YELLOW}. ${BGBROWN}${WHITE}   ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
if [ -e /usr/share/freeswitch/htdocs/portal/index.html ] ;then 
echo -e "${YELLOW}┃ ${GRAY}» Для перенастройки ${LCYAN}FreeSWTCH${GRAY}, нажмите.     ${BGBROWN}${WHITE} 4 ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGBROWN}${WHITE} ${NORMAL}${YELLOW} Сервер IP телефонии ${LCYAN}FreeSWTCH${YELLOW} настроен.   ${BGBROWN}${WHITE}   ${YELLOW}  ┃${NORMAL}"
else
echo -e "${YELLOW}┃ ${GRAY}» Для настройки ${LCYAN}FreeSWTCH${GRAY}, нажмите клавишу. ${BGGREEN}${WHITE} 4 ${YELLOW}  ┃${NORMAL}"
fi
else
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» Для установки ${LCYAN}FreeSWTCH${GRAY}, нажмите клавишу. ${BGGREEN}${WHITE} 3 ${YELLOW}  ┃${NORMAL}"
fi
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» Для выхода из скрипта, нажмите клавишу.   ${BGGREEN}${WHITE} 0 ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${LRED}» Для перезагрузки, нажмите клавишу.        ${BGRED}${WHITE} 9 ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${NORMAL}"
echo
read -n 1 -p "Введите значение:" mainmenuinput
echo
if [ "$mainmenuinput" = "1" ]; then
clear
# Начало вывода справки
# Выводим подменю для справки
submenu () {
echo
echo -e "${GRAY}           Данный скрипт предназначен для${NORMAL}"
echo -e "${GRAY}     автоматизации процесса установки и настройки,${NORMAL}"
echo -e "${GRAY}       системы домашней автоматизации ${LCYAN}MajorDoMo.${NORMAL}"
echo -e "${GRAY}            Так же установки и настройки,${NORMAL}"
echo -e "${GRAY}       платформы для VoIP телефонии ${LCYAN}FreeSWITCH.${NORMAL}"
echo
echo -e "${LGREEN}┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓${NORMAL}"
echo -e "${LGREEN}┃ ${GRAY}                                                     ${LGREEN}┃${NORMAL}"
echo -e "${LGREEN}┃ ${GRAY}» Справочная информация по установки ${LCYAN}MajorDoMo  ${BGGREEN}${WHITE} 1 ${NORMAL}${LGREEN}  ┃${NORMAL}"
echo -e "${LGREEN}┃ ${GRAY}                                                     ${LGREEN}┃${NORMAL}"
echo -e "${LGREEN}┃ ${GRAY}» Справочная информация по установки ${LCYAN}FreeSWITCH ${BGGREEN}${WHITE} 2 ${NORMAL}${LGREEN}  ┃${NORMAL}"
echo -e "${LGREEN}┃ ${GRAY}                                                     ${LGREEN}┃${NORMAL}"
echo -e "${LGREEN}┃ ${GRAY}» Справочная информация по настройки ${LCYAN}FreeSWITCH ${BGGREEN}${WHITE} 3 ${NORMAL}${LGREEN}  ┃${NORMAL}"
echo -e "${LGREEN}┃ ${GRAY}                                                     ${LGREEN}┃${NORMAL}"
echo -e "${LGREEN}┃ ${GRAY}» Для перехода в главное меню, нажмите клавишу  ${BGBROWN}${WHITE} 0 ${NORMAL}${LGREEN}  ┃${NORMAL}"
echo -e "${LGREEN}┃ ${GRAY}                                                     ${LGREEN}┃${NORMAL}"
echo -e "${LGREEN}┃ ${LRED}» Для выхода из скрипта, нажмите клавишу        ${BGRED}${WHITE} 9 ${NORMAL}${LGREEN}  ┃${NORMAL}"
echo -e "${LGREEN}┃ ${GRAY}                                                     ${LGREEN}┃${NORMAL}"
echo -e "${LGREEN}┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${NORMAL}"
echo
echo -e "${BGCYAN} ${NORMAL}${GRAY} Обратите внимание!${NORMAL}"
echo -e "${BGCYAN} ${NORMAL}${GRAY} Приведенные данные в разделах информации${NORMAL}"
echo -e "${BGCYAN} ${NORMAL}${GRAY} о времени установки, являются справочными,${NORMAL}"
echo -e "${BGCYAN} ${NORMAL}${GRAY} могут отличатся от Ваших.${NORMAL}"
echo -e "${BGCYAN} ${NORMAL}${GRAY} Работоспособность скрипта была протестирована на${NORMAL}"
echo -e "${BGCYAN} ${NORMAL}${GRAY} виртуальной машине следующей конфигурации:${NORMAL}"
echo -e "${BGCYAN} ${NORMAL}${GRAY} Тактовая частота процессора................. 3 GHz${NORMAL}"
echo -e "${BGCYAN} ${NORMAL}${GRAY} Количество ядер / потоков................... 1 / 1${NORMAL}"
echo -e "${BGCYAN} ${NORMAL}${GRAY} Оперативная память.......................... 2 Gb ${NORMAL}"
echo -e "${BGCYAN} ${NORMAL}${GRAY} с установленной операционной системой Debian 10.${NORMAL}"
echo
read -n 1 -p "Введите значение:" submenuinput
echo
if [ "$submenuinput" = "1" ]; then
clear
# Начало
echo
echo -e "${LGREEN}        Справочная информация по установки ${NORMAL}"
echo -e "${LGREEN}     системы домашней автоматизации ${LCYAN}MajorDoMo${NORMAL}"
echo -e "${LGREEN}  .............................................. ${NORMAL}"
echo
echo -e "${GRAY}На начальном экране, представлено главное меню,${NORMAL}"
echo -e "${GRAY}пример отображения приведен ниже.${NORMAL}"
echo
echo -e "${YELLOW}┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓${NORMAL}"
echo -e "${YELLOW}┃                                        ${NORMAL}${BOLD}${BGGREEN}${WHITE} v. 1.0 ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} Обратите внимание!                             ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} Установка начнется сразу после ввода значения  ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} без подтверждения действия.                    ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} После выполнения выбранного действия,          ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} система будет перезагружена автоматически.     ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» Для установки MajorDoMo, нажмите клавишу. ${BGGREEN}${WHITE} 2 ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${LRED}» ........................................  ${BGRED}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${NORMAL}"
echo
echo -e "${GRAY}Введите значение:${BGGREEN} ${NORMAL}"
echo
echo -e "${GRAY}                Нажимаем клавишу ${BGGREEN}${WHITE} 2 ${NORMAL}" 
echo -e "${GRAY}                запускаем установку, ${NORMAL}"
echo -e "${GRAY}      системы домашней автоматизации ${LCYAN}MajorDoMo${NORMAL}"
echo
echo -e "${GRAY}       Если ранее устанавливали ${LCYAN}MajorDoMo${NORMAL}"
echo -e "${GRAY}                на начальном экране, ${NORMAL}"
echo -e "${GRAY}      главное меню будет иметь следующий вид.${NORMAL}"
echo
echo -e "${YELLOW}┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓${NORMAL}"
echo -e "${YELLOW}┃                                        ${NORMAL}${BOLD}${BGGREEN}${WHITE} v. 1.0 ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} Обратите внимание!                             ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} Установка начнется сразу после ввода значения  ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} без подтверждения действия.                    ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} После выполнения выбранного действия,          ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} система будет перезагружена автоматически.     ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» Для переустановки MajorDoMo, нажмите.     ${BGBROWN}${WHITE} 2 ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGBROWN}${WHITE} ${NORMAL}${YELLOW} В системе обнаружен сервис MajorDoMo.     ${BGBROWN}${WHITE}   ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${LRED}» ........................................  ${BGRED}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${NORMAL}"
echo
echo -e "${GRAY}Введите значение:${BGGREEN} ${NORMAL}"
echo
echo -e "${GRAY}                Нажимаем клавишу ${BGBROWN}${WHITE} 2 ${NORMAL}" 
echo -e "${GRAY}              запускаем переустановку, ${NORMAL}"
echo -e "${GRAY}      системы домашней автоматизации ${LCYAN}MajorDoMo${NORMAL}"
echo
echo -e "${GRAY}       В случае ввода не правильного значения,${NORMAL}"
echo -e "${GRAY}              на начальном экране, ${NORMAL}"
echo -e "${GRAY}       главное меню будет иметь следующий вид.${NORMAL}"
echo
echo -e "${YELLOW}┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓${NORMAL}"
echo -e "${YELLOW}┃                                        ${NORMAL}${BOLD}${BGGREEN}${WHITE} v. 1.0 ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} Обратите внимание!                             ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} Установка начнется сразу после ввода значения  ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} без подтверждения действия.                    ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} После выполнения выбранного действия,          ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} система будет перезагружена автоматически.     ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» Для установки MajorDoMo, нажмите клавишу. ${BGGREEN}${WHITE} 2 ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${LRED}» ........................................  ${BGRED}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${NORMAL}"
echo
echo -e "${GRAY}Введите значение:5${NORMAL}"
echo
echo -e "${BGRED} ${NORMAL}${LRED} Ошибка${NORMAL}"
echo -e "${BGRED} ${NORMAL}${LRED} Набор значений ограничен,${NORMAL}"
echo -e "${BGRED} ${NORMAL}${LRED} введите одно из значений предложенных в меню.${NORMAL}"
echo -e "${BGRED} ${NORMAL}${LGREEN} Нажмите любую клавишу чтобы продолжить.${NORMAL}"
echo
echo -e "${GRAY}               Нажимаем любую клавишу,${NORMAL}"
echo -e "${GRAY}      затем, нужное нам значение ${BGGREEN}${WHITE} 2 ${NORMAL}${GRAY} или ${BGBROWN}${WHITE} 2 ${NORMAL}" 
echo -e "${GRAY}      запускаем установку или переустановку, ${NORMAL}"
echo -e "${GRAY}     системы домашней автоматизации ${LCYAN}MajorDoMo${NORMAL}"
echo
echo -e "${LGREEN}Для визуального представления работы скрипта,${NORMAL}"
echo -e "${LGREEN}ниже приведён в пример ${NORMAL}"
echo -e "${LGREEN}графическое отображение процесса установки и настройки.${NORMAL}"
echo -e "${LGREEN}Весь процесс установки автоматический и займет ~30 минут.${NORMAL}"
echo
echo -e "${LGREEN}┏${BGGREEN}${WHITE} 1 из 93  ${NORMAL}${WHITE} Обновляем пакеты ОС ${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           На данном этапе никакие ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           действия не требуются вплоть до ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           ~20-й минуты установки. ${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┠${BGGREEN}${WHITE} 55 из 93 ${NORMAL}${WHITE} Устанавливаем vlc ${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           Здесь тоже никакие действия ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           предпринимать не требуется.${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${LRED}           Запомните важную информацию:${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${LYELLOW}           Web интерфейс vlc плейера,${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${LYELLOW}           будет доступен по адресу:${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${LYELLOW}           http://ваш.ip.адрес.сервера${LGREEN}:7070${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${LYELLOW}           Логин:${LGREEN} пустой${NORMAL}${LYELLOW} Пароль:${LGREEN} password${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┠${BGGREEN}${WHITE} 59 из 93 ${NORMAL}${WHITE} Устанавливаем mcrypt-1.0.3 ${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${LRED}           ~20-я минута, на данном этапе,${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${LYELLOW}           установка приостановится${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           и будет ожидать ввода с клавиатуры.${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           Пример сообщения ниже.${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${BGBROWN} ${NORMAL}${LYELLOW} Внимание!${NORMAL}"
echo -e "${BGBROWN} ${NORMAL}${LYELLOW} Ожидания ввода с клавиатуры libmcrypt prefix.${NORMAL}"
echo -e "${BGBROWN} ${NORMAL}${LGREEN} Нажмите ${BGGREEN}${WHITE} ENTER ${NORMAL}${LGREEN} чтобы продолжить.${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           следуем указаниям в сообщении выше,${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           установка продолжится.${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┠${BGGREEN}${WHITE} 71 из 93 ${NORMAL}${WHITE} Устанавливаем MQTT сервер. ${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┠${BGGREEN}${WHITE} 72 из 93 ${NORMAL}${WHITE} Устанавливаем MQTT клиент. ${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┠${BGGREEN}${WHITE} 80 из 93 ${NORMAL}${WHITE} Исправляем ошибку компиляции RHVoice. ${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           Здесь тоже никакие действия ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           предпринимать не требуется,${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           примите во внимание информацию:${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           Сервис генерации речи при компиляции${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           выдает ошибку, проблема связана${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           с отсутствием необходимых библиотек,${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           мы их установили выше вместе со всеми пакетами.${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           Не мало важно является отсутствие звуковых файлов:${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           Проверяем usr»src»RHVoice»data»voices»victoria/*${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           если файлы отсутствуют, то копируем${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           из usr»src»RHVoice»data»voices»anna/*${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           в usr»src»RHVoice»data»voices»victoria/*${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           на этот случай в скрипте вставлена проверка${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           ошибка исправляется автоматически.${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┠${BGGREEN}${WHITE} 87 из 93 ${NORMAL}${WHITE} Добавляем главный цикл системы в автозагрузку. ${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${LRED}           ~25-я минута, на данном этапе,${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${LYELLOW}           установка приостановится${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           будет ожидать ввода,${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           придуманного вами супер-пароля.${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           Пример сообщения ниже.${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${BGBROWN} ${NORMAL}${LYELLOW} Настраиваем базу данных MySQL.${NORMAL}"
echo -e "${BGBROWN} ${NORMAL}${LYELLOW} Пожалуйста введите ниже пароль для пользователя ${LGREEN}root${NORMAL}${LYELLOW},${NORMAL}"
echo -e "${BGBROWN} ${NORMAL}${LGREEN} нажмите ${BGGREEN}${WHITE} ENTER ${NORMAL}${LGREEN} для подтверждения действия.${NORMAL}"
echo -e "${BGBROWN} ${NORMAL}"
echo -e "${BGBROWN} ${NORMAL}${LYELLOW} Введите пароль MySQL ${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           следуем указаниям в сообщении выше,${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           установка продолжится.${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${LRED}           Запомните важную информацию:${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${LYELLOW}           Для подключения к базе данных MySQL${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${LYELLOW}           Логин:${LGREEN} root${NORMAL}${LYELLOW} Пароль:${LGREEN} введенный выше${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┠${BGGREEN}${WHITE} 88 из 93 ${NORMAL}${WHITE} Настраиваем подключение к базе данных MySQL. ${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┗${BGGREEN}${WHITE} 93 из 93 ${NORMAL}${WHITE} Обновляем систему MajorDoMo. ${NORMAL}"
echo
echo -e "${LRED}            ~30-я минута, на данном этапе,${NORMAL}"
echo -e "${LYELLOW}            установка завершена.${NORMAL}"
echo -e "${GRAY}            Будет отображено сообщение, пример ниже.${NORMAL}"
echo
echo -e "${YELLOW}┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}                                                ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}                  Поздравляем !                 ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}             установка и настройка              ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}   системы домашней автоматизации MajorDoMo     ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}                   завершена.                   ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}                                                ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${NORMAL}"
echo
echo -e "${BGGREEN} ${NORMAL}${WHITE} Система перезагрузится автоматически через - 10 сек."
echo
# Конец
echo
echo -e "${BGBROWN}${WHITE} i ${NORMAL}${YELLOW} Для перехода в главное меню, нажмите любую клавишу.${NORMAL}"
echo
read -n 1
clear
submenu
elif [ "$submenuinput" = "2" ]; then
clear
# Начало
echo
echo -e "${LGREEN}        Справочная информация по установки ${NORMAL}"
echo -e "${LGREEN}         сервера IP телефонии ${LCYAN}FreeSWITCH${NORMAL}"
echo -e "${LGREEN}  .............................................. ${NORMAL}"
echo
echo -e "${GRAY}На начальном экране, представлено главное меню,${NORMAL}"
echo -e "${GRAY}пример отображения приведен ниже.${NORMAL}"
echo
echo -e "${YELLOW}┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓${NORMAL}"
echo -e "${YELLOW}┃                                        ${NORMAL}${BOLD}${BGGREEN}${WHITE} v. 1.0 ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} Обратите внимание!                             ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} Установка начнется сразу после ввода значения  ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} без подтверждения действия.                    ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} После выполнения выбранного действия,          ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} система будет перезагружена автоматически.     ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» Для установки FreeSWTCH, нажмите клавишу. ${BGGREEN}${WHITE} 3 ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${LRED}» ........................................  ${BGRED}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${NORMAL}"
echo
echo -e "${GRAY}Введите значение:${BGGREEN} ${NORMAL}"
echo
echo -e "${GRAY}                Нажимаем клавишу ${BGGREEN}${WHITE} 3 ${NORMAL}" 
echo -e "${GRAY}                запускаем установку, ${NORMAL}"
echo -e "${GRAY}           сервера IP телефонии ${LCYAN}FreeSWITCH${NORMAL}"
echo
echo -e "${GRAY}         Если ранее устанавливали ${LCYAN}FreeSWITCH${NORMAL}"
echo -e "${GRAY}                на начальном экране, ${NORMAL}"
echo -e "${GRAY}      главное меню будет иметь следующий вид.${NORMAL}"
echo
echo -e "${YELLOW}┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓${NORMAL}"
echo -e "${YELLOW}┃                                        ${NORMAL}${BOLD}${BGGREEN}${WHITE} v. 1.0 ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} Обратите внимание!                             ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} Установка начнется сразу после ввода значения  ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} без подтверждения действия.                    ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} После выполнения выбранного действия,          ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} система будет перезагружена автоматически.     ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» Для переустановки FreeSWTCH, нажмите.     ${BGBROWN}${WHITE} 3 ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGBROWN}${WHITE} ${NORMAL}${YELLOW} В системе уже установлен пакет FreeSWTCH. ${BGBROWN}${WHITE}   ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${LRED}» ........................................  ${BGRED}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${NORMAL}"
echo
echo -e "${GRAY}Введите значение:${BGGREEN} ${NORMAL}"
echo
echo -e "${GRAY}                Нажимаем клавишу ${BGBROWN}${WHITE} 3 ${NORMAL}" 
echo -e "${GRAY}              запускаем переустановку, ${NORMAL}"
echo -e "${GRAY}          сервера IP телефонии ${LCYAN}FreeSWITCH${NORMAL}"
echo
echo -e "${GRAY}       В случае ввода не правильного значения,${NORMAL}"
echo -e "${GRAY}              на начальном экране, ${NORMAL}"
echo -e "${GRAY}       главное меню будет иметь следующий вид.${NORMAL}"
echo
echo -e "${YELLOW}┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓${NORMAL}"
echo -e "${YELLOW}┃                                        ${NORMAL}${BOLD}${BGGREEN}${WHITE} v. 1.0 ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} Обратите внимание!                             ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} Установка начнется сразу после ввода значения  ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} без подтверждения действия.                    ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} После выполнения выбранного действия,          ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} система будет перезагружена автоматически.     ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» Для установки FreeSWTCH, нажмите клавишу. ${BGGREEN}${WHITE} 3 ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${LRED}» ........................................  ${BGRED}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${NORMAL}"
echo
echo -e "${GRAY}Введите значение:5${NORMAL}"
echo
echo -e "${BGRED} ${NORMAL}${LRED} Ошибка${NORMAL}"
echo -e "${BGRED} ${NORMAL}${LRED} Набор значений ограничен,${NORMAL}"
echo -e "${BGRED} ${NORMAL}${LRED} введите одно из значений, предложенных в меню.${NORMAL}"
echo -e "${BGRED} ${NORMAL}${LGREEN} Нажмите любую клавишу чтобы продолжить.${NORMAL}"
echo
echo -e "${GRAY}               Нажимаем любую клавишу,${NORMAL}"
echo -e "${GRAY}      затем, нужное нам значение ${BGGREEN}${WHITE} 3 ${NORMAL}${GRAY} или ${BGBROWN}${WHITE} 3 ${NORMAL}" 
echo -e "${GRAY}      запускаем установку или переустановку, ${NORMAL}"
echo -e "${GRAY}          сервера IP телефонии ${LCYAN}FreeSWITCH${NORMAL}"
echo
echo -e "${LGREEN}Для визуального представления работы скрипта,${NORMAL}"
echo -e "${LGREEN}ниже приведён в пример ${NORMAL}"
echo -e "${LGREEN}графическое отображение процесса установки и настройки.${NORMAL}"
echo -e "${LGREEN}Весь процесс установки автоматический и займет ~20 минут.${NORMAL}"
echo
echo -e "${LGREEN}┏${BGGREEN}${WHITE}  1 из 2  ${NORMAL}${WHITE} Обновляем пакеты ОС ${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           На данном этапе никакие ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           действия не требуются, ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           на ~20-й минуте после установки, ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           система перезагрузится автоматически. ${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┗${BGGREEN}${WHITE}  2 из 2  ${NORMAL}${WHITE} Установка FreeSWITCH завершена. ${NORMAL}"
echo
echo -e "${LRED}            ~20-я минута, на данном этапе,${NORMAL}"
echo -e "${LYELLOW}            установка завершена.${NORMAL}"
echo -e "${GRAY}            Будет отображено сообщение, пример ниже.${NORMAL}"
echo
echo -e "${YELLOW}┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}                                                ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}                  Поздравляем !                 ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}                   установка                    ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}   сервера IP телефонии FreeSWITCH завершена.   ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}                                                ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${NORMAL}"
echo
echo -e "${BGGREEN} ${NORMAL}${WHITE} Система перезагрузится автоматически через - 10 сек."
echo
# Конец
echo
echo -e "${BGBROWN}${WHITE} i ${NORMAL}${YELLOW} Для перехода в главное меню, нажмите любую клавишу.${NORMAL}"
echo
read -n 1
clear
submenu
elif [ "$submenuinput" = "3" ]; then
clear
# Начало
echo
echo -e "${LGREEN}        Справочная информация по настройки ${NORMAL}"
echo -e "${LGREEN}         сервера IP телефонии ${LCYAN}FreeSWITCH${NORMAL}"
echo -e "${LGREEN}  .............................................. ${NORMAL}"
echo
echo -e "${GRAY}На начальном экране, представлено главное меню,${NORMAL}"
echo -e "${GRAY}пример отображения приведен ниже.${NORMAL}"
echo -e "${LRED}Обратите внимание.${NORMAL}"
echo -e "${LRED}Данный пункт меню, будет доступен${NORMAL}"
echo -e "${LRED}только если в системе будет установлен,${NORMAL}"
echo -e "${LRED}сервер IP телефонии ${LCYAN}FreeSWITCH${NORMAL}"
echo
echo -e "${YELLOW}┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓${NORMAL}"
echo -e "${YELLOW}┃                                        ${NORMAL}${BOLD}${BGGREEN}${WHITE} v. 1.0 ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} Обратите внимание!                             ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} Установка начнется сразу после ввода значения  ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} без подтверждения действия.                    ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} После выполнения выбранного действия,          ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} система будет перезагружена автоматически.     ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» Для переустановки FreeSWTCH, нажмите.     ${BGBROWN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGBROWN}${WHITE} ${NORMAL}${YELLOW} В системе уже установлен пакет FreeSWTCH. ${BGBROWN}${WHITE}   ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» Для настройки FreeSWTCH, нажмите клавишу. ${BGGREEN}${WHITE} 4 ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${LRED}» ........................................  ${BGRED}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${NORMAL}"
echo
echo -e "${GRAY}Введите значение:${BGGREEN} ${NORMAL}"
echo
echo -e "${GRAY}                Нажимаем клавишу ${BGGREEN}${WHITE} 4 ${NORMAL}" 
echo -e "${GRAY}                запускаем настройку, ${NORMAL}"
echo -e "${GRAY}           сервера IP телефонии ${LCYAN}FreeSWITCH${NORMAL}"
echo
echo -e "${GRAY}         Если ранее настраивали ${LCYAN}FreeSWITCH${NORMAL}"
echo -e "${GRAY}                на начальном экране, ${NORMAL}"
echo -e "${GRAY}      главное меню будет иметь следующий вид.${NORMAL}"
echo
echo -e "${YELLOW}┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓${NORMAL}"
echo -e "${YELLOW}┃                                        ${NORMAL}${BOLD}${BGGREEN}${WHITE} v. 1.0 ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} Обратите внимание!                             ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} Установка начнется сразу после ввода значения  ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} без подтверждения действия.                    ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} После выполнения выбранного действия,          ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} система будет перезагружена автоматически.     ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» Для переустановки FreeSWTCH, нажмите.     ${BGBROWN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGBROWN}${WHITE} ${NORMAL}${YELLOW} В системе уже установлен пакет FreeSWTCH. ${BGBROWN}${WHITE}   ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» Для перенастройки FreeSWTCH, нажмите.     ${BGBROWN}${WHITE} 4 ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGBROWN}${WHITE} ${NORMAL}${YELLOW} Сервер IP телефонии FreeSWTCH настроен.   ${BGBROWN}${WHITE}   ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${LRED}» ........................................  ${BGRED}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${NORMAL}"
echo
echo -e "${GRAY}Введите значение:${BGGREEN} ${NORMAL}"
echo
echo -e "${GRAY}                Нажимаем клавишу ${BGBROWN}${WHITE} 4 ${NORMAL}" 
echo -e "${GRAY}              запускаем перенастройку, ${NORMAL}"
echo -e "${GRAY}          сервера IP телефонии ${LCYAN}FreeSWITCH${NORMAL}"
echo
echo -e "${GRAY}       В случае ввода не правильного значения,${NORMAL}"
echo -e "${GRAY}              на начальном экране, ${NORMAL}"
echo -e "${GRAY}       главное меню будет иметь следующий вид.${NORMAL}"
echo
echo -e "${YELLOW}┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓${NORMAL}"
echo -e "${YELLOW}┃                                        ${NORMAL}${BOLD}${BGGREEN}${WHITE} v. 1.0 ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} Обратите внимание!                             ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} Установка начнется сразу после ввода значения  ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} без подтверждения действия.                    ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} После выполнения выбранного действия,          ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGRED} ${NORMAL}${LRED} система будет перезагружена автоматически.     ${YELLOW}┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» Для переустановки FreeSWTCH, нажмите.     ${BGBROWN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGBROWN}${WHITE} ${NORMAL}${YELLOW} В системе уже установлен пакет FreeSWTCH. ${BGBROWN}${WHITE}   ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» Для настройки FreeSWTCH, нажмите клавишу. ${BGGREEN}${WHITE} 4 ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${GRAY}» ........................................  ${BGGREEN}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┃ ${LRED}» ........................................  ${BGRED}${WHITE} x ${YELLOW}  ┃${NORMAL}"
echo -e "${YELLOW}┃                                                  ┃${NORMAL}"
echo -e "${YELLOW}┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${NORMAL}"
echo
echo -e "${GRAY}Введите значение:5${NORMAL}"
echo
echo -e "${BGRED} ${NORMAL}${LRED} Ошибка${NORMAL}"
echo -e "${BGRED} ${NORMAL}${LRED} Набор значений ограничен,${NORMAL}"
echo -e "${BGRED} ${NORMAL}${LRED} введите одно из значений, предложенных в меню.${NORMAL}"
echo -e "${BGRED} ${NORMAL}${LGREEN} Нажмите любую клавишу чтобы продолжить.${NORMAL}"
echo
echo -e "${GRAY}               Нажимаем любую клавишу,${NORMAL}"
echo -e "${GRAY}      затем, нужное нам значение ${BGGREEN}${WHITE} 4 ${NORMAL}${GRAY} или ${BGBROWN}${WHITE} 4 ${NORMAL}" 
echo -e "${GRAY}      запускаем настройку или перенастройку, ${NORMAL}"
echo -e "${GRAY}          сервера IP телефонии ${LCYAN}FreeSWITCH${NORMAL}"
echo
echo -e "${LGREEN}Для визуального представления работы скрипта,${NORMAL}"
echo -e "${LGREEN}ниже приведён в пример ${NORMAL}"
echo -e "${LGREEN}графическое отображение процесса установки и настройки.${NORMAL}"
echo -e "${LGREEN}Весь процесс установки автоматический и займет ~1 минуту.${NORMAL}"
echo
echo -e "${LYELLOW}Обратите внимание!${NORMAL}"
echo -e "${LRED}При настройке конфигурации FreeSWITCH${NORMAL}"
echo -e "${LRED}будут добавлены новые файлы на сервер,${NORMAL}"
echo -e "${LRED}предыдущие версии файлов не будут удалены,${NORMAL}"
echo -e "${LRED}они остаются на месте помеченными ${LYELLOW}файл.noload${NORMAL}"
echo
echo -e "${LGREEN}┏${BGGREEN}${WHITE}  1 из 7  ${NORMAL}${WHITE} Создаем директорию usr»share»freeswitch/htdocs/portal ${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           На чистом FreeSWITCH по умолчанию${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           web интерфейс управления отсутствует, ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           на данном этапе создаем директорию:${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           usr»share»freeswitch/htdocs/portal ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           в ней будут находится ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           системные файлы web интерфейса. ${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┠${BGGREEN}${WHITE}  2 из 7  ${NORMAL}${WHITE} Скачиваем файлы PORTAL в ранее созданную директорию ${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           На данном этапе клонируем с GitHub ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           в ранее созданную директорию, ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           системные файлы web интерфейса. ${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┠${BGGREEN}${WHITE}  3 из 7  ${NORMAL}${WHITE} Настраиваем vars.xml. ${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           Устраняем задержку в 10 секунд${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           при наборе номера, ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           в этом же файле устанавливаем ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           Русский язык по умолчанию ${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┠${BGGREEN}${WHITE}  4 из 7  ${NORMAL}${WHITE} Настраиваем internal.xml. ${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           На данном этапе завершаем исправление ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           ошибки с 10 секундной задержкой${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           при вызове внутренних номеров. ${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┠${BGGREEN}${WHITE}  5 из 7  ${NORMAL}${WHITE} Настраиваем modules.conf.xml. ${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           Настраиваем необходимые модули${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           для корректной работы ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           web интерфейса. ${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┠${BGGREEN}${WHITE}  6 из 7  ${NORMAL}${WHITE} Настраиваем xml_rpc.conf.xml. ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           Настраиваем модуль отдающий данные ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           в web интерфейс, ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           активируем web сокеты, ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           убираем ввод логина и пароля, ${NORMAL}"
echo -e "${LGREEN}┃${NORMAL}${GRAY}           при входе в web интерфейс. ${NORMAL}"
echo -e "${LGREEN}┃ ${NORMAL}"
echo -e "${LGREEN}┗${BGGREEN}${WHITE}  7 из 7  ${NORMAL}${WHITE} Завершаем настройку FreeSWITCH. ${NORMAL}"
echo
echo -e "${LRED}            ~1-я минута, на данном этапе,${NORMAL}"
echo -e "${LYELLOW}            установка завершена.${NORMAL}"
echo -e "${GRAY}            Будет отображено сообщение, пример ниже.${NORMAL}"
echo
echo -e "${YELLOW}┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}                                                ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}                  Поздравляем !                 ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}                   настройка                    ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}   сервера IP телефонии FreeSWITCH завершена.   ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}                                                ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${NORMAL}"
echo
echo -e "${BGGREEN} ${NORMAL}${WHITE} Система перезагрузится автоматически через - 10 сек."
echo
# Конец
echo
echo -e "${BGBROWN}${WHITE} i ${NORMAL}${YELLOW} Для перехода в главное меню, нажмите любую клавишу.${NORMAL}"
echo
read -n 1
clear
submenu
elif [ "$submenuinput" = "0" ];then
clear
mainmenu
elif [ "$submenuinput" = "9" ];then
clear
exit
#sudo systemctl reboot
else
echo
echo -e "${BGRED} ${NORMAL}${LRED} Ошибка${NORMAL}"
echo -e "${BGRED} ${NORMAL}${LRED} Набор значений ограничен,${NORMAL}"
echo -e "${BGRED} ${NORMAL}${LRED} введите одно из значений, предложенных в меню.${NORMAL}"
echo -e "${BGRED} ${NORMAL}${LGREEN} Нажмите любую клавишу чтобы продолжить.${NORMAL}"
echo
read -n 1
clear
submenu
 fi
}
submenu
# Конец вывода справки
elif [ "$mainmenuinput" = "2" ]; then
clear
echo -e "${BGGREEN}${WHITE} ${NORMAL}${WHITE} Устанавливаем cистему домашней автоматизации MajorDoMo ${NORMAL}"
echo
# Начало установки cистемы домашней автоматизации MajorDoMo
sudo apt update
echo
# Проверяем если Русская локализация в системе присутствует
echo -e "${BGGREEN}${WHITE} 1 из 93 ${NORMAL}${WHITE} Проверяем если Русская локализация в системе присутствует ${NORMAL}"
echo
loc2=ru_RU.UTF-8
echo $loc2
loc=$(locale -a | grep ru_RU)
echo $loc
if [[ $loc == *"ru"* ]]; then
echo -e "${BGGREEN}${WHITE} 2 из 93 ${NORMAL}${WHITE} Русская локализация в системе присутствует, установка не требуется. ${NORMAL}"
else
echo -e "${BGBROWN}${WHITE} 2 из 93 ${NORMAL}${WHITE} Русская локализация отсутствует, запускаем установку. ${NORMAL}"
sudo apt install -y locales
sudo cp /etc/locale.gen /etc/locale.gen-$(date +%Y-%m-%d:%k:%M:%S)
sudo sed -i '/ru_RU.UTF-8 UTF-8/s/# ru_RU.UTF-8 UTF-8/ru_RU.UTF-8 UTF-8/' /etc/locale.gen
sudo locale-gen
fi
echo
# Устанавливаем необходимые утилиты и библиотеки.
echo -e "${BGGREEN}${WHITE} 3 из 93 ${NORMAL}${WHITE} Устанавливаем необходимые утилиты и библиотеки. ${NORMAL}"
echo
echo -e "${BGGREEN}${WHITE} 4 из 93 ${NORMAL}${WHITE} Устанавливаем alsa-tools ${NORMAL}"
sudo apt install -y alsa-tools
echo
echo -e "${BGGREEN}${WHITE} 5 из 93 ${NORMAL}${WHITE} Устанавливаем alsa-utils ${NORMAL}"
sudo apt install -y alsa-utils
echo
echo -e "${BGGREEN}${WHITE} 6 из 93 ${NORMAL}${WHITE} Устанавливаем apache2 ${NORMAL}"
sudo apt install -y apache2
echo
echo -e "${BGGREEN}${WHITE} 7 из 93 ${NORMAL}${WHITE} Устанавливаем apache2-bin ${NORMAL}"
sudo apt install -y apache2-bin
echo
echo -e "${BGGREEN}${WHITE} 8 из 93 ${NORMAL}${WHITE} Устанавливаем apache2-data ${NORMAL}"
sudo apt install -y apache2-data
echo
echo -e "${BGGREEN}${WHITE} 9 из 93 ${NORMAL}${WHITE} Устанавливаем apache2-utils ${NORMAL}"
sudo apt install -y apache2-utils
echo
echo -e "${BGGREEN}${WHITE} 10 из 93 ${NORMAL}${WHITE} Устанавливаем autoconf ${NORMAL}"
sudo apt install -y autoconf
echo
echo -e "${BGGREEN}${WHITE} 11 из 93 ${NORMAL}${WHITE} Устанавливаем dbconfig-mysql ${NORMAL}"
sudo apt install -y dbconfig-mysql
echo
echo -e "${BGGREEN}${WHITE} 12 из 93 ${NORMAL}${WHITE} Устанавливаем ffmpeg ${NORMAL}"
sudo apt install -y ffmpeg
echo
echo -e "${BGGREEN}${WHITE} 13 из 93 ${NORMAL}${WHITE} Устанавливаем g++ ${NORMAL}"
sudo apt install -y g++
echo
echo -e "${BGGREEN}${WHITE} 14 из 93 ${NORMAL}${WHITE} Устанавливаем gcc ${NORMAL}"
sudo apt install -y gcc
echo
echo -e "${BGGREEN}${WHITE} 15 из 93 ${NORMAL}${WHITE} Устанавливаем git ${NORMAL}"
sudo apt install -y git
echo
echo -e "${BGGREEN}${WHITE} 16 из 93 ${NORMAL}${WHITE} Устанавливаем libao4 ${NORMAL}"
sudo apt install -y libao4
echo
echo -e "${BGGREEN}${WHITE} 17 из 93 ${NORMAL}${WHITE} Устанавливаем libao-common ${NORMAL}"
sudo apt install -y libao-common
echo
echo -e "${BGGREEN}${WHITE} 18 из 93 ${NORMAL}${WHITE} Устанавливаем libao-dev ${NORMAL}"
sudo apt install -y libao-dev
echo
echo -e "${BGGREEN}${WHITE} 19 из 93 ${NORMAL}${WHITE} Устанавливаем libapache2-mod-php7.3 ${NORMAL}"
sudo apt install -y libapache2-mod-php7.3
echo
echo -e "${BGGREEN}${WHITE} 20 из 93 ${NORMAL}${WHITE} Устанавливаем libc6-dev ${NORMAL}"
sudo apt install -y libc6-dev
echo
echo -e "${BGGREEN}${WHITE} 21 из 93 ${NORMAL}${WHITE} Устанавливаем libcurl4 ${NORMAL}"
sudo apt install -y libcurl4
echo
echo -e "${BGGREEN}${WHITE} 22 из 93 ${NORMAL}${WHITE} Устанавливаем libmcrypt-dev ${NORMAL}"
sudo apt install -y libmcrypt-dev
echo
echo -e "${BGGREEN}${WHITE} 23 из 93 ${NORMAL}${WHITE} Устанавливаем libtool ${NORMAL}"
sudo apt install -y libtool
echo
echo -e "${BGGREEN}${WHITE} 24 из 93 ${NORMAL}${WHITE} Устанавливаем libudev-dev ${NORMAL}"
sudo apt install -y libudev-dev
echo
echo -e "${BGGREEN}${WHITE} 25 из 93 ${NORMAL}${WHITE} Устанавливаем lshw ${NORMAL}"
sudo apt install -y lshw
echo
echo -e "${BGGREEN}${WHITE} 26 из 93 ${NORMAL}${WHITE} Устанавливаем make ${NORMAL}"
sudo apt install -y make
echo
echo -e "${BGGREEN}${WHITE} 27 из 93 ${NORMAL}${WHITE} Устанавливаем mc ${NORMAL}"
sudo apt install -y mc
echo
echo -e "${BGGREEN}${WHITE} 28 из 93 ${NORMAL}${WHITE} Устанавливаем mpd ${NORMAL}"
sudo apt install -y mpd
echo
echo -e "${BGGREEN}${WHITE} 29 из 93 ${NORMAL}${WHITE} Устанавливаем mplayer ${NORMAL}"
sudo apt install -y mplayer
echo
echo -e "${BGGREEN}${WHITE} 30 из 93 ${NORMAL}${WHITE} Устанавливаем php7.3-bcmath ${NORMAL}"
sudo apt install -y php7.3-bcmath
echo
echo -e "${BGGREEN}${WHITE} 31 из 93 ${NORMAL}${WHITE} Устанавливаем php7.3-bz2 ${NORMAL}"
sudo apt install -y php7.3-bz2
echo
echo -e "${BGGREEN}${WHITE} 32 из 93 ${NORMAL}${WHITE} Устанавливаем php7.3-cli ${NORMAL}"
sudo apt install -y php7.3-cli
echo
echo -e "${BGGREEN}${WHITE} 33 из 93 ${NORMAL}${WHITE} Устанавливаем php7.3-common ${NORMAL}"
sudo apt install -y php7.3-common
echo
echo -e "${BGGREEN}${WHITE} 34 из 93 ${NORMAL}${WHITE} Устанавливаем php7.3-curl ${NORMAL}"
sudo apt install -y php7.3-curl
echo
echo -e "${BGGREEN}${WHITE} 35 из 93 ${NORMAL}${WHITE} Устанавливаем php7.3-dev ${NORMAL}"
sudo apt install -y php7.3-dev
echo
echo -e "${BGGREEN}${WHITE} 36 из 93 ${NORMAL}${WHITE} Устанавливаем php7.3-gd ${NORMAL}"
sudo apt install -y php7.3-gd
echo
echo -e "${BGGREEN}${WHITE} 37 из 93 ${NORMAL}${WHITE} Устанавливаем php7.3-json ${NORMAL}"
sudo apt install -y php7.3-json
echo
echo -e "${BGGREEN}${WHITE} 38 из 93 ${NORMAL}${WHITE} Устанавливаем php7.3-mbstring ${NORMAL}"
sudo apt install -y php7.3-mbstring
echo
echo -e "${BGGREEN}${WHITE} 39 из 93 ${NORMAL}${WHITE} Устанавливаем php7.3-mysql ${NORMAL}"
sudo apt install -y php7.3-mysql
echo
echo -e "${BGGREEN}${WHITE} 40 из 93 ${NORMAL}${WHITE} Устанавливаем php7.3-opcache ${NORMAL}"
sudo apt install -y php7.3-opcache
echo
echo -e "${BGGREEN}${WHITE} 41 из 93 ${NORMAL}${WHITE} Устанавливаем php7.3-readline ${NORMAL}"
sudo apt install -y php7.3-readline
echo
echo -e "${BGGREEN}${WHITE} 42 из 93 ${NORMAL}${WHITE} Устанавливаем php7.3-xml ${NORMAL}"
sudo apt install -y php7.3-xml
echo
echo -e "${BGGREEN}${WHITE} 43 из 93 ${NORMAL}${WHITE} Устанавливаем php7.3-xmlrpc ${NORMAL}"
sudo apt install -y php7.3-xmlrpc
echo
echo -e "${BGGREEN}${WHITE} 44 из 93 ${NORMAL}${WHITE} Устанавливаем php7.3-xsl ${NORMAL}"
sudo apt install -y php7.3-xsl
echo
echo -e "${BGGREEN}${WHITE} 45 из 93 ${NORMAL}${WHITE} Устанавливаем php7.3-zip ${NORMAL}"
sudo apt install -y php7.3-zip
echo
echo -e "${BGGREEN}${WHITE} 46 из 93 ${NORMAL}${WHITE} Устанавливаем php-http ${NORMAL}"
sudo apt install -y php-http
echo
echo -e "${BGGREEN}${WHITE} 47 из 93 ${NORMAL}${WHITE} Устанавливаем php-pear ${NORMAL}"
sudo apt install -y php-pear
echo
echo -e "${BGGREEN}${WHITE} 48 из 93 ${NORMAL}${WHITE} Устанавливаем pkg-config ${NORMAL}"
sudo apt install -y pkg-config
echo
echo -e "${BGGREEN}${WHITE} 49 из 93 ${NORMAL}${WHITE} Устанавливаем pulseaudio ${NORMAL}"
sudo apt install -y pulseaudio
echo
echo -e "${BGGREEN}${WHITE} 50 из 93 ${NORMAL}${WHITE} Устанавливаем python-dev ${NORMAL}"
sudo apt install -y python-dev
echo
echo -e "${BGGREEN}${WHITE} 51 из 93 ${NORMAL}${WHITE} Устанавливаем python-lxml ${NORMAL}"
sudo apt install -y python-lxml
echo
echo -e "${BGGREEN}${WHITE} 52 из 93 ${NORMAL}${WHITE} Устанавливаем scons ${NORMAL}"
sudo apt install -y scons
echo
echo -e "${BGGREEN}${WHITE} 53 из 93 ${NORMAL}${WHITE} Устанавливаем unzip ${NORMAL}"
sudo apt install -y unzip
echo
echo -e "${BGGREEN}${WHITE} 54 из 93 ${NORMAL}${WHITE} Устанавливаем util-linux ${NORMAL}"
sudo apt install -y util-linux
echo
echo -e "${BGGREEN}${WHITE} 55 из 93 ${NORMAL}${WHITE} Устанавливаем vlc ${NORMAL}"
sudo apt install -y vlc
echo
echo -e "${BGGREEN}${WHITE} 56 из 93 ${NORMAL}${WHITE} Устанавливаем zip ${NORMAL}"
sudo apt install -y zip
echo
echo -e "${BGGREEN}${WHITE} 57 из 93 ${NORMAL}${WHITE} Обновляем pear channels ${NORMAL}"
sudo pear update-channels
echo
echo -e "${BGGREEN}${WHITE} 58 из 93 ${NORMAL}${WHITE} Обновляем pecl channels ${NORMAL}"
sudo pecl update-channels
echo
# Ожидание ввода libmcrypt prefix - просто нажмите ENTER.
echo -e "${BGGREEN}${WHITE} 59 из 93 ${NORMAL}${WHITE} Устанавливаем mcrypt-1.0.3 ${NORMAL}"
echo
echo -e "${BGBROWN} ${NORMAL}${LYELLOW} Внимание!${NORMAL}"
echo -e "${BGBROWN} ${NORMAL}${LYELLOW} Ожидания ввода с клавиатуры libmcrypt prefix.${NORMAL}"
echo -e "${BGBROWN} ${NORMAL}${LGREEN} Нажмите ${BGGREEN}${WHITE} ENTER ${NORMAL}${LGREEN} чтобы продолжить.${NORMAL}"
sudo pecl install mcrypt-1.0.3
echo
echo -e "${BGGREEN}${WHITE} 60 из 93 ${NORMAL}${WHITE} Устанавливаем dbconfig-mysql ${NORMAL}"
sudo apt install -y dbconfig-mysql
echo
echo -e "${BGGREEN}${WHITE} 61 из 93 ${NORMAL}${WHITE} Устанавливаем mariadb-common ${NORMAL}"
sudo apt install -y mariadb-common
echo
echo -e "${BGGREEN}${WHITE} 62 из 93 ${NORMAL}${WHITE} Устанавливаем mariadb-client-10.3 ${NORMAL}"
sudo apt install -y mariadb-client-10.3
echo
echo -e "${BGGREEN}${WHITE} 63 из 93 ${NORMAL}${WHITE} Устанавливаем mariadb-server-10.3 ${NORMAL}"
sudo apt install -y mariadb-server-10.3
echo
# Проверяем последнюю версию пакета phpmyadmin https://www.phpmyadmin.net/files/ и поправить ссылку для wget.
echo -e "${BGGREEN}${WHITE} 64 из 93 ${NORMAL}${WHITE} Устанавливаем phpMyAdmin-5.0.4-all-languages. ${NORMAL}"
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.zip
unzip phpMyAdmin-5.0.4-all-languages.zip
sudo mv phpMyAdmin-5.0.4-all-languages /var/www/phpmyadmin
sudo chown -R www-data:www-data /var/www/phpmyadmin/
echo
# Настраиваем PHP для Apache.
echo -e "${BGGREEN}${WHITE} 65 из 93 ${NORMAL}${WHITE} Настраиваем PHP для Apache ${NORMAL}"
echo "extension=mcrypt.so" | sudo tee -a /etc/php/7.3/apache2/conf.d/mcrypt.ini
sudo sed -i '/short_open_tag/s/Off/On/' /etc/php/7.3/apache2/php.ini
sudo sed -i '/error_reporting/s/~E_DEPRECATED & ~E_STRICT/~E_NOTICE/' /etc/php/7.3/apache2/php.ini
sudo sed -i '/max_execution_time/s/30/90/' /etc/php/7.3/apache2/php.ini
sudo sed -i '/max_input_time/s/60/180/' /etc/php/7.3/apache2/php.ini
sudo sed -i '/post_max_size/s/8/200/' /etc/php/7.3/apache2/php.ini
sudo sed -i '/upload_max_filesize/s/2/50/' /etc/php/7.3/apache2/php.ini
sudo sed -i '/max_file_uploads/s/20/150/' /etc/php/7.3/apache2/php.ini
echo
# Настраиваем PHP для коммандной строки.
echo -e "${BGGREEN}${WHITE} 66 из 93 ${NORMAL}${WHITE} Настраиваем PHP для коммандной строки. ${NORMAL}"
sudo sed -i '/short_open_tag/s/Off/On/' /etc/php/7.3/cli/php.ini
echo
# Создаем симлинк для PHPMyAdmin.
echo -e "${BGGREEN}${WHITE} 67 из 93 ${NORMAL}${WHITE} Создаем симлинк для PHPMyAdmin ${NORMAL}"
sudo ln -s /usr/share/phpmyadmin /var/www/phpmyadmin
echo
# Настраиваем Apache.
echo -e "${BGGREEN}${WHITE} 68 из 93 ${NORMAL}${WHITE} Настраиваем Apache. ${NORMAL}"
sudo sed -i 's/None/All/g' /etc/apache2/apache2.conf
echo "ServerName localhost" | sudo tee -a /etc/apache2/apache2.conf
sudo sed -i 's/\/html//' /etc/apache2/sites-available/000-default.conf
echo
# Включаем мод rewrite для Apache.
echo -e "${BGGREEN}${WHITE} 69 из 93 ${NORMAL}${WHITE} Включаем мод rewrite для Apache. ${NORMAL}"
sudo a2enmod rewrite
echo
# Обновляем и перезапускаем службы.
echo -e "${BGGREEN}${WHITE} 70 из 93 ${NORMAL}${WHITE} Обновляем и перезапускаем службы. ${NORMAL}"
sudo systemctl daemon-reload
sudo apache2ctl restart
sudo service mysql restart
echo
# Устанавливаем MQTT клиент и сервер.
echo -e "${BGGREEN}${WHITE} 71 из 93 ${NORMAL}${WHITE} Устанавливаем MQTT сервер. ${NORMAL}"
sudo apt-get -qq install -y mosquitto
echo
echo -e "${BGGREEN}${WHITE} 72 из 93 ${NORMAL}${WHITE} Устанавливаем MQTT клиент. ${NORMAL}"
sudo apt-get -qq install -y mosquitto-clients
echo
# Запускаем mosquitto в качестве сервиса и добавляем в автозапуск.
echo -e "${BGGREEN}${WHITE} 73 из 93 ${NORMAL}${WHITE} Запускаем mosquitto в качестве сервиса и добавляем в автозапуск. ${NORMAL}"
mosquitto -d
sudo systemctl enable mosquitto.service
echo
# Настраиваем сервисы поддержки звука и видео.
echo -e "${BGGREEN}${WHITE} 74 из 93 ${NORMAL}${WHITE} Настраиваем сервисы поддержки звука и видео. ${NORMAL}"
sudo tee /etc/systemd/system/vlcd.service << EOF
[Unit]
Description=VLCDaemon
[Service]
Requires=majordomo.service
Type=simple
WorkingDirectory=/var/www
ExecStart=/usr/bin/vlc -I http --http-password=password --http-port 7070
Restart=always
User=www-data
Group=www-data

[Install]
WantedBy=multi-user.target
EOF
echo
# Добавляем vlc в автозагрузку.
echo -e "${BGGREEN}${WHITE} 75 из 93 ${NORMAL}${WHITE} Добавляем vlc в автозагрузку. ${NORMAL}"
sudo systemctl daemon-reload
sudo systemctl enable vlcd
echo
# Настраиваем vlc чтобы запускался от root.
echo -e "${BGGREEN}${WHITE} 76 из 93 ${NORMAL}${WHITE} Настраиваем vlc чтобы запускался от root. ${NORMAL}"
sed -i 's/geteuid/getppid/' /usr/bin/vlc
echo
# Исправляем pulse проглатывание начала фраз.
echo -e "${BGGREEN}${WHITE} 77 из 93 ${NORMAL}${WHITE} Исправляем pulse проглатывание начала фраз. ${NORMAL}"
sudo sed -i '/load-module module-suspend-on-idle/s/load-module module-suspend-on-idle/\#load-module module-suspend-on-idle/' /etc/pulse/default.pa
echo
# Устанавливаем и настраиваем сервис генерации речи RHVoice.
echo -e "${BGGREEN}${WHITE} 78 из 93 ${NORMAL}${WHITE} Устанавливаем и настраиваем сервис генерации речи RHVoice. ${NORMAL}"
sudo tee -a /etc/pulse/daemon.conf << EOF
high-priority = no
nice-level = -1
realtime-scheduling = yes
realtime-priority = 5
flat-volumes = no
resample-method = speex-float-1
default-sample-rate = 48000
default-fragments = 4
default-fragment-size-msec = 25
EOF
echo
# Скачиваем сервис генерации речи RHVoice.
echo -e "${BGGREEN}${WHITE} 79 из 93 ${NORMAL}${WHITE} Скачиваем сервис генерации речи RHVoice. ${NORMAL}"
cd /usr/src
sudo git clone https://github.com/Olga-Yakovleva/RHVoice
echo
# Исправляем ошибку компиляции сервиса RHVoice.
echo -e "${BGGREEN}${WHITE} 80 из 93 ${NORMAL}${WHITE} Исправляем ошибку компиляции сервиса RHVoice. ${NORMAL}"
if [ -e /usr/src/RHVoice/data/voices/victoria/16000 ] && [ -e /usr/src/RHVoice/data/voices/victoria/24000 ] ; then 
echo "Все голосовые файлы в системе присутствуют, копирование не требуется !"
else
sudo cp -rp /usr/src/RHVoice/data/voices/anna/* /usr/src/RHVoice/data/voices/victoria/
fi
cd RHVoice
sudo scons
sudo scons install
sudo ldconfig
echo
# Скачиваем и устанавливаем cистему домашней автоматизации MajorDoMo с GitHab.
echo -e "${BGGREEN}${WHITE} 81 из 93 ${NORMAL}${WHITE} Скачиваем cистему MajorDoMo. ${NORMAL}"
cd /usr/src
sudo git clone https://github.com/sergejey/majordomo.git
echo
# Переносим систему в директорию WEB-сервера.
echo -e "${BGGREEN}${WHITE} 82 из 93 ${NORMAL}${WHITE} Переносим систему в директорию var»www. ${NORMAL}"
sudo cp -rp /usr/src/majordomo/* /var/www
sudo cp -rp /usr/src/majordomo/.htaccess /var/www
echo
# Создаем конфигурационный файл для системы.
echo -e "${BGGREEN}${WHITE} 83 из 93 ${NORMAL}${WHITE} Создаем конфигурационный файл. ${NORMAL}"
sudo cp /var/www/config.php.sample /var/www/config.php
echo
# Назначаем права и владельца для директории с системой.
echo -e "${BGGREEN}${WHITE} 84 из 93 ${NORMAL}${WHITE} Назначаем права и владельца www-data для директории с системой. ${NORMAL}"
sudo chown -R www-data:www-data /var/www
sudo find /var/www/ -type f -exec sudo chmod 0666 {} \;
sudo find /var/www/ -type d -exec sudo chmod 0777 {} \;
echo
# Создаем описание сервиса для запуска основного цикла системы.
echo -e "${BGGREEN}${WHITE} 85 из 93 ${NORMAL}${WHITE} Создаем описание сервиса для запуска основного цикла системы. ${NORMAL}"
sudo tee /etc/systemd/system/majordomo.service << EOF
[Unit]
Description=MajorDoMo
Requires=network.target mysql.service apache2.service
After=dhcpcd.service mysql.service apache2.service

[Service]
Type=simple
User=www-data
Group=www-data
ExecStart=/usr/bin/php /var/www/cycle.php
ExecStop=/usr/bin/pkill -f cycle_*
KillSignal=SIGKILL
KillMode=control-group
RestartSec=1min
Restart=on-failure

[Install]
WantedBy=multi-user.target
EOF
# Отключаем режим "Strict mode" для MySQL (для избавления от наследственных ошибок).
echo -e "${BGGREEN}${WHITE} 86 из 93 ${NORMAL}${WHITE} Отключаем режим Strict mode для MySQL. ${NORMAL}"
sudo tee /etc/mysql/conf.d/disable_strict_mode.cnf << EOF
[mysqld]
sql_mode=IGNORE_SPACE,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION
EOF
echo
# Добавляем главный цикл системы в автозагрузку.
echo -e "${BGGREEN}${WHITE} 87 из 93 ${NORMAL}${WHITE} Добавляем главный цикл системы в автозагрузку. ${NORMAL}"
sudo systemctl enable majordomo
echo
# Запрашиваем у пользователя пароль для MySQL.
echo -e "${BGBROWN} ${NORMAL}${LYELLOW} Настраиваем базу данных MySQL.${NORMAL}"
echo -e "${BGBROWN} ${NORMAL}${LYELLOW} Пожалуйста введите ниже пароль для пользователя ${LGREEN}root${NORMAL}${LYELLOW},${NORMAL}"
echo -e "${BGBROWN} ${NORMAL}${LGREEN} нажмите ${BGGREEN}${WHITE} ENTER ${NORMAL}${LGREEN} для подтверждения действия.${NORMAL}"
echo
echo -e "${BGBROWN} ${NORMAL}${LYELLOW} Введите пароль MySQL ${NORMAL}"
echo
read pass
echo
# Настраиваем подключение к базе данных MySQL.
echo -e "${BGGREEN}${WHITE} 88 из 93 ${NORMAL}${WHITE} Настраиваем подключение к базе данных MySQL. ${NORMAL}"
sudo sed -i "/DB_PASSWORD/s/''/'$pass'/" /var/www/config.php
echo
# Создаем базу данных db_terminal и импортируем содержимое из дистрибутива.
echo -e "${BGGREEN}${WHITE} 89 из 93 ${NORMAL}${WHITE} Создаем базу данных db_terminal и импортируем содержимое из дистрибутива. ${NORMAL}"
mysql -u root << EOF
CREATE DATABASE db_terminal CHARACTER SET utf8 COLLATE utf8_general_ci;
USE db_terminal;
EOF
mysql -u root db_terminal < /var/www/db_terminal.sql
echo
# Настраиваем доступ root к MariaDB и устанавливаем начальные настройки интерфейса MajorDoMo.
echo -e "${BGGREEN}${WHITE} 90 из 93 ${NORMAL}${WHITE} Настраиваем доступ root к MariaDB и устанавливаем начальные настройки интерфейса MajorDoMo. ${NORMAL}"
mysql -u root -p$pass << EOF
use mysql;
update user set password=PASSWORD("$pass") where User='root';
flush privileges;
update user set plugin='' where User='root';
use db_terminal;
update settings set VALUE='dark' where NAME='THEME';
#update settings set VALUE='Europe/Moscow' where NAME='SITE_TIMEZONE';
#update layouts set HIDDEN='1' where TITLE='<#LANG_WELCOME_GREETING#>';
#insert into settings (TITLE,NAME,TYPE,VALUE,DEFAULTVALUE) VALUES ('Language','SITE_LANGUAGE','text','ru','ru');
insert into settings (TITLE,NAME,TYPE,NOTES,VALUE,DEFAULTVALUE,DATA) VALUES ('Language','SITE_LANGUAGE','text','','ru','ru','');
insert into settings (TITLE,NAME,TYPE,NOTES,VALUE,DEFAULTVALUE,DATA) VALUES ('Time zone','SITE_TIMEZONE','text','','Europe/Moscow','Europe/Moscow','');
EOF
echo
# Перезагружаем сервис баз данных MySQL.
echo -e "${BGGREEN}${WHITE} 91 из 93 ${NORMAL}${WHITE} Перезагружаем сервис баз данных MySQL. ${NORMAL}"
sudo service mysql restart
echo
# Запускаем основной цикл системы MajorDoMo.
echo -e "${BGGREEN}${WHITE} 92 из 93 ${NORMAL}${WHITE} Запускаем основной цикл системы MajorDoMo. ${NORMAL}"
sudo systemctl start majordomo
echo
# Обновляем систему MajorDoMo.
echo -e "${BGGREEN}${WHITE} 93 из 93 ${NORMAL}${WHITE} Обновляем систему MajorDoMo. ${NORMAL}"
wget -q http://localhost/modules/saverestore/update_iframe.php
wget -q http://localhost/modules/market/update_iframe.php?mode2=update_all
find . -name '*update_iframe*' -delete
echo
# Выводим сообщение об успешной установки cистемы домашней автоматизации MajorDoMo
echo -e "${YELLOW}┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}                                                ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}                  Поздравляем !                 ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}             установка и настройка              ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}   cистемы домашней автоматизации MajorDoMo     ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}                   завершена.                   ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}                                                ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${NORMAL}"
echo
# Устанавливаем таймер 10 сек для перезагрузки
seconds=10; date1=$((`date +%s` + $seconds)); 
while [ "$date1" -ge `date +%s` ]; do
# Выводим предупреждение о пезагрузки
echo -ne "${BGGREEN} ${NORMAL}${WHITE} Система перезагрузится автоматически через -" "$(date -u --date @$(($date1 - `date +%s` )) +%S) сек.\r";
done
# Очищаем терминал и пезагружаем систему
clear
sudo systemctl reboot
# Конец установки cистемы домашней автоматизации MajorDoMo
elif [ "$mainmenuinput" = "3" ]; then
clear
echo -e "${BGGREEN}${WHITE}  ${NORMAL}${WHITE} Устанавливаем сервер IP телефонии FreeSWITCH ${NORMAL}"
echo
# Начало установки сервера IP телефонии FreeSWITCH
apt-get update && apt-get install -y gnupg2 wget lsb-release
wget -O - https://files.freeswitch.org/repo/deb/debian-release/fsstretch-archive-keyring.asc | apt-key add - 
echo "deb http://files.freeswitch.org/repo/deb/debian-release/ `lsb_release -sc` main" > /etc/apt/sources.list.d/freeswitch.list
echo "deb-src http://files.freeswitch.org/repo/deb/debian-release/ `lsb_release -sc` main" >> /etc/apt/sources.list.d/freeswitch.list
apt-get update && apt-get install -y freeswitch-meta-all
echo
# Выводим сообщение об успешной установки сервера IP телефонии FreeSWITCH
echo -e "${YELLOW}┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}                                                ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}                  Поздравляем !                 ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}                   установка                    ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}   сервера IP телефонии FreeSWITCH завершена.   ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}                                                ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${NORMAL}"
echo
# Устанавливаем таймер 10 сек для перезагрузки
seconds=10; date1=$((`date +%s` + $seconds)); 
while [ "$date1" -ge `date +%s` ]; do
# Выводим предупреждение о пезагрузки
echo -ne "${BGGREEN} ${NORMAL}${WHITE} Система перезагрузится автоматически через -" "$(date -u --date @$(($date1 - `date +%s` )) +%S) сек.\r";
done
# Очищаем терминал и пезагружаем систему
clear
sudo systemctl reboot
# Конец установки сервера IP телефонии FreeSWITCH
elif [ $(dpkg-query -W -f='${Status}' freeswitch 2>/dev/null | grep -c "ok installed") -eq 1 ] && [ "$mainmenuinput" = "4" ]; then
clear
# Начало настройки сервера IP телефонии FreeSWITCH
echo -e "${BGGREEN}${WHITE} ${NORMAL}${WHITE} Настраиваем систему IP телефонии FreeSWITCH ${NORMAL}"
echo
# Создаем директорию usr»share»freeswitch/htdocs/portal
echo -e "${BGGREEN}${WHITE} 1 из 8 ${NORMAL}${WHITE} Создаем директорию usr»share»freeswitch/htdocs/portal ${NORMAL}"
mkdir /usr/share/freeswitch/htdocs/portal
echo
# Скачиваем файлы PORTAL в директорию usr»share»freeswitch»htdocs»portal
echo -e "${BGGREEN}${WHITE} 2 из 8 ${NORMAL}${WHITE} Скачиваем файлы PORTAL в директорию usr»share»freeswitch»htdocs»portal ${NORMAL}"
git clone https://github.com/seven1240/FreeSWITCH-Portal.git /usr/share/freeswitch/htdocs/portal
echo
# Настраиваем vars.xml.
echo -e "${BGGREEN}${WHITE} 3 из 8 ${NORMAL}${WHITE} Настраиваем vars.xml. ${NORMAL}"
mv /etc/freeswitch/vars.xml /etc/freeswitch/vars.xml.noload
cp ./freeswitch/vars.xml /etc/freeswitch/vars.xml
echo
# Настраиваем internal.xml.
echo -e "${BGGREEN}${WHITE} 4 из 8 ${NORMAL}${WHITE} Настраиваем internal.xml. ${NORMAL}"
mv /etc/freeswitch/sip_profiles/internal.xml /etc/freeswitch/sip_profiles/internal.xml.noload
cp ./freeswitch/sip_profiles/internal.xml /etc/freeswitch/sip_profiles/internal.xml
echo
# Настраиваем modules.conf.xml.
echo -e "${BGGREEN}${WHITE} 5 из 8 ${NORMAL}${WHITE} Настраиваем modules.conf.xml. ${NORMAL}"
mv /etc/freeswitch/autoload_configs/modules.conf.xml /etc/freeswitch/autoload_configs/modules.conf.xml.noload
cp ./freeswitch/autoload_configs/modules.conf.xml /etc/freeswitch/autoload_configs/modules.conf.xml
echo
# Настраиваем xml_rpc.conf.xml.
echo -e "${BGGREEN}${WHITE} 6 из 8 ${NORMAL}${WHITE} Настраиваем xml_rpc.conf.xml. ${NORMAL}"
mv /etc/freeswitch/autoload_configs/xml_rpc.conf.xml /etc/freeswitch/autoload_configs/xml_rpc.conf.xml.noload
cp ./freeswitch/autoload_configs/xml_rpc.conf.xml /etc/freeswitch/autoload_configs/xml_rpc.conf.xml
echo
# Исправляем ошибку IVR меню.
echo -e "${BGGREEN}${WHITE} 7 из 8 ${NORMAL}${WHITE} Исправляем ошибку IVR меню. ${NORMAL}"
mv /etc/freeswitch/lang/ru/ru.xml /etc/freeswitch/lang/ru/ru.xml.noload
echo
sudo tee /etc/freeswitch/lang/ru/ru.xml << EOF
<include>
  <language name="ru" sound-prefix="$${sounds_dir}/ru/RU/vika" tts-engine="cepstral" tts-voice="elena">
    <phrases>
      <macros>
        <X-PRE-PROCESS cmd="include" data="demo/*.xml"/> <!-- Note: this now grabs whole subdir, previously grabbed only demo.xml -->
        <!--voicemail_en_tts is purely implemented with tts, we have the files based one that is the default. -->
        <X-PRE-PROCESS cmd="include" data="vm/sounds.xml"/>  <!-- vm/tts.xml if you want to use tts and have cepstral -->
      </macros>
    </phrases>
  </language>
</include>
EOF
echo
echo -e "${BGGREEN}${WHITE} 8 из 8 ${NORMAL}${WHITE} Завершаем настройку FreeSWITCH. ${NORMAL}"
# Выводим сообщение об успешной настройки сервера IP телефонии FreeSWITCH
echo -e "${YELLOW}┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}                                                ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}                  Поздравляем !                 ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}                   настройка                    ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}   сервера IP телефонии FreeSWITCH завершена.   ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┃ ${BGGREEN}${WHITE}                                                ${NORMAL}${YELLOW} ┃${NORMAL}"
echo -e "${YELLOW}┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${NORMAL}"
echo
# Устанавливаем таймер 10 сек для перезагрузки
seconds=10; date1=$((`date +%s` + $seconds)); 
while [ "$date1" -ge `date +%s` ]; do
# Выводим предупреждение о пезагрузки
echo -ne "${BGGREEN} ${NORMAL}${WHITE} Система перезагрузится автоматически через -" "$(date -u --date @$(($date1 - `date +%s` )) +%S) сек.\r";
done
# Очищаем терминал и пезагружаем систему
clear
sudo systemctl reboot
# Конец настройки сервера IP телефонии FreeSWITCH
elif [ "$mainmenuinput" = "0" ];then
clear
exit
elif [ "$mainmenuinput" = "9" ];then
clear
sudo systemctl reboot
else
echo
echo -e "${BGRED} ${NORMAL}${LRED} Ошибка${NORMAL}"
echo -e "${BGRED} ${NORMAL}${LRED} Набор значений ограничен,${NORMAL}"
echo -e "${BGRED} ${NORMAL}${LRED} введите одно из значений, предложенных в меню.${NORMAL}"
echo -e "${BGRED} ${NORMAL}${LGREEN} Нажмите любую клавишу чтобы продолжить.${NORMAL}"
echo
read -n 1
clear
mainmenu
 fi
}
mainmenu
