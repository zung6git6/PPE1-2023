#!/usr/bin/env bash

# 赋值脚本路径
script1="/Users/zhongjie/Desktop/miniprojet_supp/miniprojet_supp_exo1.sh"

if [ -z "$1" ];
then
    echo "Give me the first argument plz, which should be a file path"
    read file_path

    # 运行脚本
    "$script1"

    if [ -z "$2" ];
        # 如果$2是空的
    then
        # 获取排名前25的行并保存到变量中
        classement=$(sort "$file_path" | uniq -c | sort -rn | head -n 25)
    elif ! [[ "$2" =~ [1-9][0-9]* ]];
        # 当$2不是一个正数时
    then
        echo "the second argument shoule be a number !!!"
        echo "Give me a positive number plz"
        read nombre
        classement=$(sort "$file_path" | uniq -c | sort -rn | head -n "$nombre")
    else
        # 否则使用$2提供的正数
        classement=$(sort "$file_path" | uniq -c | sort -rn | head -n "$2")
    fi
else
    # 运行脚本
    "$script1"

    if [ -z "$2" ];
        # 如果$2是空的
    then
        # 获取排名前25的行并保存到变量中
        classement=$(sort "$1" | uniq -c | sort -rn | head -n 25)
    elif ! [[ "$2" =~ [1-9][0-9]* ]];
        # 当$2不是一个正数时
    then
        echo "the second argument shoule be a number !!!"
        echo "Give me a positive number plz"
        read nombre
        classement=$(sort "$1" | uniq -c | sort -rn | head -n "$nombre")
    else
        # 否则使用$2提供的正数
        classement=$(sort "$1" | uniq -c | sort -rn | head -n "$2")
    fi
fi
# 显示排名
    echo "$classement"