#########################################################################
# File Name: test_shell_menu1.sh
# Author: pix
# mail: tpxsky@163.com
# Created Time: 2020年01月20日 星期一 10时54分45秒
# Description: 测试1,shell,菜单
#########################################################################
#!/bin/bash

function diskspace {
    clear
    df -hT
}

function whoseon {
    clear
    who
}

function menusage {
    clear
    cat /proc/meminfo
}

function menu {
    clear
    echo
    echo -e "\t\tSys Admin Menu"
    echo -e "\t1. Display disk space"
    echo -e "\t2. Display logged on users"
    echo -e "\t3. Display memory usage"
    echo -e "\t0. Exit menu\n\n"
    echo -en "\t\tEnter option:"
    read -n 1 option
}

while [ 1 ]
do
    menu
    case $option in
        0)
            break;;
        1)
            diskspace;;
        2)
            whoseon;;
        3)
            menusage;;
        *)
            clear
            echo "Sorry. wrong selection";;
    esac
echo -en "\n\n\t\tHit any key to continue"
read -n 1 line
done
clear
