#!/bin/bash
var_log_name=apache_logs.txt
var_log_name2=example_log.log
#echo Log parser of $var_log_name
echo -e "\033[32;1;40mLog parser of $var_log_name:\033[0m"
echo -n "Most requests IP is: "
awk '{print $1}' $var_log_name |sort|uniq -c|sort -rnk1|head -1|awk '{print $2"(" $1" times)"}'
echo --------------------------------------------
echo -n "Most requests page is: "
awk '{print $7}' $var_log_name|sort|uniq -c|sort -rnk1|head -1|awk '{print $2"(" $1" times)"}' 
echo --------------------------------------------
echo -e "IP: " "\t\t" "requests: "
awk '{print $1,$6}' $var_log_name2 |sort|uniq -c|grep -w "\"GET"|sort -rnk1|awk '{print $2 "\t" $1}' > "IP requests.txt"
awk '{print $0}' "IP requests.txt"|head
echo  See all IP requests in file IP requests.txt
echo --------------------------------------------
echo  "Non-existent pages: "
awk '{print $7,$9}' $var_log_name2|grep 404|sort -nk2|uniq|awk '{print $1}'
echo --------------------------------------------
echo -e "Per hour requests: "
awk -F ":" ' {print $2}' $var_log_name2|uniq -c|awk '{print "At "$2 " o_clock - " $1" requests"}'
echo --------------------------------------------
echo Search Bots:
echo -e "IP: " "\t\t" "User-Agent: "
grep -i bot $var_log_name2|awk ' {print $1 "\t" $12 "\t" $14,$13}'|sort|uniq
echo --------------------------------------------