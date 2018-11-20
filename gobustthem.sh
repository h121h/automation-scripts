#Local PC
#Discription: It bruteforces the everyhost in hosts.txt with words in word.txt
#Location : Anywhere
#Requirements:
#hosts.txt and words.txt
#usage: sh script.sh hosts.txt words.txt
#==============================================================================


if [ -z "$1" ]
then
echo "\e[1;31m[!]  Please Enter the Target Domain list and word list:\e[0m";
echo "\e[1;32m[!]  Example:\e[0m" "\e[1;32msh gobustthem.sh hosts.txt list.txt \e[0m";
	exit
fi

while read LINE
echo "\e[1;32m|-  Bruteforcing $LINE... \e[0m";
do gobuster -u $LINE -w $2 >> output.txt
echo "" > output.txt
echo "" > output.txt
echo "" > output.txt
echo "" > output.txt
echo "" > output.txt
echo "" > output.txt
echo "" > output.txt
done<$1
