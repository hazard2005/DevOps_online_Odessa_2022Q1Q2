### Linux administration with bash. Home task  
*A. Create a script that uses the following keys:*  
1. *When starting without parameters, it will display a list of possible keys and their description.*  
2. *The --all key displays the IP addresses and symbolic names of all hosts in the current subnet*  
3. *The --target key displays a list of open system TCP ports.*  
*The code that performs the functionality of each of the subtasks must be placed in a separate function*  

I don't have DNS server so have no ideas how to reverse hostname from IP, used Nmap to scan network  
Here is [Source code](https://github.com/hazard2005/DevOps_online_Odessa_2022Q1Q2/blob/main/m6/task6/scripts/scriptA.sh)  
<img src="images/1.jpg">  
<img src="images/1.1.jpg">  

*B. Using Apache log example create a script to answer the following questions:*  
*1. From which ip were the most requests?*  
I made a universal script for parsing a site. Screenshots of script execution examples below.  
Here is [Source code](https://github.com/hazard2005/DevOps_online_Odessa_2022Q1Q2/blob/main/m6/task6/scripts/scriptB.sh)  
<img src="images/2.1.jpg">  
2. *What is the most requested page?*  
3. *How many requests were there from each ip?*  
4. *What non-existent pages were clients referred to?*  
<img src="images/2.3.jpg">  
5. *What time did site get the most requests?*  
<img src="images/2.4.jpg">  
6. *What search bots have accessed the site? (UA + IP)*  
<img src="images/2.6.jpg">  
*C. Create a data backup script that takes the following data as parameters:*  
1. *Path to the syncing  directory.*  
2. *The path to the directory where the copies of the files will be stored.*  
*In case of adding new or deleting old files, the script must add a corresponding entry to the log file indicating the time, type of operation and file name.*  
*(The command to run the script must be added to crontab with a run frequency of one minute)*  