# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    test_ex00.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: idcornua <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/26 23:20:09 by idcornua          #+#    #+#              #
#    Updated: 2019/01/16 17:39:01 by idcornua         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELL='\033[1;33m'
ORNG='\033[0;33m'
BLUE='\033[1;34m'
NC='\033[0m'

U_EX='user_exe'
FLAGS='-Wall -Wextra -Werror'
J_PATH=`cat path`
J="05"
E="17"
S="17"
EX="ft_strncat.c"
COM=""

echo "${ORNG}===================== EX${E} =====================\n"
echo "" > error_log
echo "${BLUE}-- Compilation --${NC}\n"
echo "$> gcc -o user_exe ${FLAGS} m_ex${E}.c ${EX}"

gcc -o ${U_EX} ${FLAGS} m_ex${E}.c ${COM} ~/${J_PATH}/ex${E}/${EX} 2> error_log
ERROR=`cat error_log`
if [ "${ERROR}" != "" ]
then
	echo "${ERROR}"
	echo "\n====> ${RED}FAILURE${NC} <===="
	echo "Does not compile.\n"
	exit
else
	echo "\n====> ${GREEN}SUCCESS${NC} <===="
	echo "Compilation OK.\n"
fi

for i in `seq 1 7`;
do
	echo "${BLUE}-- Test 0${i} --${NC}\n"
	TEST=""
	TEST2=""
	TEST3=0
	if [ "$i" == "1" ];then
		TEST=""
		TEST2=""
		TEST3=0
	fi
	if [ "$i" == "2" ];then
		TEST="0456432"
		TEST2=""
		TEST3=4
	fi
	if [ "$i" == "3" ];then
		TEST=""
		TEST2="hi guys"
		TEST3=4
	fi
	if [ "$i" == "4" ];then
		TEST="hi it's jeff kaplan"
		TEST2=" from the overwatch team"
		TEST3=20
	fi
	if [ "$i" == "5" ];then
		TEST="\t\r\c\n"
		TEST2="ok let's see ..."
		TEST3=1
	fi
	if [ "$i" == "6" ];then
		TEST="what do you think happend if i force overflow"
		TEST2="probably a bad thing, but maybe it's what is supposed to happend"
		TEST3=30
	fi
	if [ "$i" == "7" ];then
		TEST="A"
		TEST2="B"
		TEST3=4
	fi

	echo "$> ./J${J}_ex${E}_exe \"${TEST}\" \"${TEST2}\" \"${TEST3}\" > m_output"
	echo "$> ./${U_EX} \"${TEST}\" \"${TEST2}\" \"${TEST3}\" > u_output"
	echo "\n$>diff -U 10 u_output m_output > m_diff\n"

    ./J${J}_ex${E}_exe "${TEST}" "${TEST2}" "${TEST3}" > m_output
	./${U_EX} "${TEST}" "${TEST2}" "${TEST3}" > u_output

	diff -U 10 u_output m_output > m_diff
	M_DIFF=`cat m_diff`

	if [ "${M_DIFF}" != "" ]
	then
		echo "${M_DIFF}"
		echo "\n====> ${RED}FAILURE${NC} <===="
		echo "Diff KO :(\n"
		exit
	else
		echo "\n====> ${GREEN}SUCCESS${NC} <===="
		echo "Diff OK :D\n"
	fi
done

SCORE_TOTAL=`cat score_total`
echo `expr $SCORE_TOTAL + 1` > score_total
SCORE_MOULI=`cat score_moulinette`
if [ "$SCORE_MOULI" == "${S}" ]
then
	echo `expr $SCORE_MOULI + 1` > score_moulinette
fi
