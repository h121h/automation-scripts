#Checking Dashboards
echo "";
echo "\e[1;31m[!]Target: $1\e[0m";
echo "";
echo "";
echo "\e[1;32m[!]Dashboard page is accesable to anyone\e[0m";
echo "\e[1;32m[~]gathering information...\e[0m";
echo "";
echo "\e[1;32m[!]Collecting types of Dashboards:\e[0m";
echo "";
curl -s "$1/secure/ConfigurePortalPages%21default.jspa?view=popular" | grep selectP | awk -F'">' '{ print $NF }' | sed 's/<\/a>//g' |sed -e "s/[[:space:]]\+/ /g"
echo "";
echo "";
echo "\e[1;32m|- Collecting Emails:\e[0m";
echo "";
curl -s "$1/secure/ConfigurePortalPages%21default.jspa?view=popular" | grep @ |sed -e "s/[[:space:]]\+/ /g"
echo "";
echo "";
echo "";
echo "\e[1;32m|- Filter Page is accesable to anyone\e[0m";
echo "\e[1;32m|- Gathering Emails from filter page...\e[0m";
echo "";
curl -s "$1/secure/ManageFilters.jspa?filterView=filter" | grep @ | awk -F'">' '{ print $NF }' | sed 's/<\/a>//g' | sed 's/<\/span>//g' | uniq -c | sed -e "s/[[:space:]]\+/ /g"
