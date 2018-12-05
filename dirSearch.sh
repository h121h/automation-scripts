if [ -z "$t" ]
then
echo "\e[1;31m[!]  Please Export the Target Domain:\e[0m";
echo "\e[1;32m[!]  Example:\e[0m" "\e[1;32m export t='target.com' \e[0m";
	exit
fi

echo "1-content_discovery_all.txt -[373535]"
echo "2-Top10000-RobotsDisallowed.txt-[10000]"
echo "3-Big.txt-[20k]"                   
echo "4-Parameters.txt -[2.5K] "             
echo "6-cgis.txt [1k]"                
echo "7-quickhits.txt -[2.5K] "             
echo "8-combined.txt [9k]"             
echo "9-raft-large-directories.txt [62K] "
echo "10-Common_PHP_Filenames.txt [5k]"  
echo "11-raft-large-files.txt  [37K]"
echo "12-Apache.txt [9k]" 

		echo "\e[1;32m-----------------------------------------------\e[0m";
		echo "\e[1;32m|-  Usage: sh dirSearch.sh extension exculde- |\e[0m";
		echo "\e[1;32m-----------------------------------------------\e[0m";

		echo "\e[1;32m--------------------------------------\e[0m";
		echo "\e[1;32m|-  Eg: sh dirSearch.sh php 302,301- |\e[0m";
		echo "\e[1;32m--------------------------------------\e[0m";

		echo "\e[1;32m-----------------------------\e[0m";
		echo "\e[1;32m|-  Enter the List Number - |\e[0m";
		echo "\e[1;32m-----------------------------\e[0m";
read choice
case $choice in
     1)      
          python3 tools/dirsearch/dirsearch.py  -u $t -w tools/web-discovery/content_discovery_all.txt -e php -e $1 -x $2

          ;;
     2)      
          python3 tools/dirsearch/dirsearch.py  -u $t -w tools/web-discovery/Top10000-RobotsDisallowed.txt -e $1 -x $2
          ;;
     3)      
          python3 tools/dirsearch/dirsearch.py  -u $t -w tools/web-discovery/big.txt -e $1 -x $2
          ;;
     4)      
          python3 tools/dirsearch/dirsearch.py  -u $t -w tools/web-discovery/Parameters.txt -e $1 -x $2
          ;; 
     5)      
          python3 tools/dirsearch/dirsearch.py  -u $t -w tools/web-discovery/cgis.txt -e $1 -x $2
          ;;
     6)      
          python3 tools/dirsearch/dirsearch.py  -u $t -w tools/web-discovery/quickhits.txt -e $1 -x $2
          ;;                   
     7)      
          python3 tools/dirsearch/dirsearch.py  -u $t -w tools/web-discovery/combined.txt -e $1 -x $2
          ;;
     8)      
          python3 tools/dirsearch/dirsearch.py  -u $t -w tools/web-discovery/raft-large-directories.txt -e $1 -x $2
          ;;
     9)      
          python3 tools/dirsearch/dirsearch.py  -u $t -w tools/web-discovery/Common_PHP_Filenames.txt -e $1 -x $2
          ;;
     10)      
          python3 tools/dirsearch/dirsearch.py  -u $t -w tools/web-discovery/raft-large-files.txt -e $1 -x $2
          ;;

     11)      
          python3 tools/dirsearch/dirsearch.py  -u $t -w tools/web-discovery/Apache-Fuzz.txt -e $1 -x $2

          ;;

     *)
		echo "File Not Found Enter the file Path:"
		read path
          python3 tools/dirsearch/dirsearch.py  -u $t -w $path
          ;;
esac
