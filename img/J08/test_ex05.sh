# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    test_ex00.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: idcornua <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/26 23:20:09 by idcornua          #+#    #+#              #
#    Updated: 2019/02/06 12:22:25 by idcornua         ###   ########.fr        #
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
J="08"
E="05"
S="5"
EX="ft_param_to_tab.c"
COM="../common/ft_putchar.c ../common/ft_show_tab.c ../common/ft_split_whitespaces.c"

echo "${ORNG}===================== EX${E} =====================\n"
echo "" > error_log
echo "${BLUE}-- Compilation --${NC}\n"
echo "$> gcc -o user_exe ${FLAGS} m_ex${E}.c ${EX}"

cp ~/${J_PATH}/ex${E}/ft_stock_par.h ./ 2> error_log
gcc -o ${U_EX} ${FLAGS} ${COM} m_ex${E}.c ~/${J_PATH}/ex${E}/${EX} 2>> error_log
rm ft_stock_par.h
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

for i in `seq 1 4`;
do
	echo "${BLUE}-- Test 0${i} --${NC}\n"
	if [ "$i" == "1" ];then
		echo "$> ./J${J}_ex${E}_exe > m_output"
		echo "$> ./${U_EX} > u_output"
		echo "\n$>diff -U 10 u_output m_output > m_diff\n"

    	./J${J}_ex${E}_exe > m_output
		./${U_EX} > u_output
	fi
	if [ "$i" == "2" ];then
		echo "$> ./J${J}_ex${E}_exe \"c\" > m_output"
		echo "$> ./${U_EX} \"c\" > u_output"
		echo "\n$>diff -U 10 u_output m_output > m_diff\n"

    	./J${J}_ex${E}_exe "c" > m_output
		./${U_EX} "c" > u_output
	fi
	if [ "$i" == "3" ];then
		echo "$> ./J${J}_ex${E}_exe \"hi guys\" \"what's\" \"up ?\" > m_output"
		echo "$> ./${U_EX} \"hi guys\" \"what's\" \"up ?\" > u_output"
		echo "\n$>diff -U 10 u_output m_output > m_diff\n"

    	./J${J}_ex${E}_exe "hi guys" "what's" "up ?" > m_output
		./${U_EX} "hi guys" "what's" "up ?" > u_output
	fi
	if [ "$i" == "4" ];then
		echo "$> ./J${J}_ex${E}_exe \"i everyone\" \"it's\" \"Jeff Kaplan\" \"from the\" \"overwatch team\" \"ur still\" \"bronze ?\" \";D\" > m_output"
		echo "$> ./${U_EX} \"i everyone\" \"it's\" \"Jeff Kaplan\" \"from the\" \"overwatch team\" \"ur still\" \"bronze ?\" \";D\" > u_output"
		echo "\n$>diff -U 10 u_output m_output > m_diff\n"

    	./J${J}_ex${E}_exe "i everyone" "it's" "Jeff Kaplan" "from the" "overwatch team" "ur still" "bronze ?" ";D" > m_output
		./${U_EX} "i everyone" "it's" "Jeff Kaplan" "from the" "overwatch team" "ur still" "bronze ?" ";D" > u_output
	fi

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
