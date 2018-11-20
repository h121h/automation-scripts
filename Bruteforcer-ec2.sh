#This tools is used to automate the gobuster bruteforcing process.
#LOCATION: home directory of Amazon ec2




if [ -z "$1" ]
then
echo "\e[1;31m[!]  Please Enter the Target Domain:\e[0m";
echo "\e[1;32m[!]  Example:\e[0m" "\e[1;32msh bruteforcer.sh https://www.target.com \e[0m";
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

		echo "\e[1;32m-----------------------------\e[0m";
		echo "\e[1;32m|-  Enter the List Number - |\e[0m";
		echo "\e[1;32m-----------------------------\e[0m";
read choice
		echo "\e[1;32m----------------------------------\e[0m";
		echo "\e[1;32m|-  Enter the No of Threads    - |\e[0m";
		echo "\e[1;32m----------------------------------\e[0m";
read threads
case $choice in
     1)      
          ./go/bin/gobuster -u $1 -w tools/web-discovery/content_discovery_all.txt -t $threads

          ;;
     2)      
          ./go/bin/gobuster -u $1 -w tools/web-discovery/Top10000-RobotsDisallowed.txt -t $threads
          ;;
     3)      
          ./go/bin/gobuster -u $1 -w tools/web-discovery/big.txt -t $threads
          ;;
     4)      
          ./go/bin/gobuster -u $1 -w tools/web-discovery/Parameters.txt -t $threads
          ;; 
     5)      
          ./go/bin/gobuster -u $1 -w tools/web-discovery/cgis.txt -t $threads
          ;;
     6)      
          ./go/bin/gobuster -u $1 -w tools/web-discovery/quickhits.txt -t $threads
          ;;                   
     7)      
          ./go/bin/gobuster -u $1 -w tools/web-discovery/combined.txt -t $threads
          ;;
     8)      
          ./go/bin/gobuster -u $1 -w tools/web-discovery/raft-large-directories.txt -t $threads
          ;;
     9)      
          ./go/bin/gobuster -u $1 -w tools/web-discovery/Common_PHP_Filenames.txt -t $threads
          ;;
     10)      
          ./go/bin/gobuster -u $1 -w tools/web-discovery/raft-large-files.txt -t $threads
          ;;

     11)      
          ./go/bin/gobuster -u $1 -w tools/web-discovery/Apache-Fuzz.txt -t $threads

          ;;

     *)
		echo "File Not Found Enter the file Path:"
		read path
          ./go/bin/gobuster -u $1 -w $path -t $threads
          ;;
esac
