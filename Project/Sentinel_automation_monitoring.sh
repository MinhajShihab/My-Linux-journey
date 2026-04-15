#!/bin/bash

if [ ! -d ~/Report ];then
 mkdir ~/Report
 echo "Report Directory created at home [+]"
else
	echo "Record Directory exists, calculating results"
fi
echo "IP: $(ip a | grep 'inet ' | awk 'NR==2 {print $2}')" >> ~/Report/health_check.txt
echo "--------------------------------------------------" >> ~/Report/health_check.txt
echo "Memory Usage: $( free -h | grep 'Mem' | awk '{print $3}')" >> ~/Report/health_check.txt
echo "--------------------------------------------------" >> ~/Report/health_check.txt
echo "Server Runtime : $(uptime)" >> ~/Report/health_check.txt
echo "Report checked at $(date)" >>~/Report/health_check.txt
echo "-----------------------------------------------">> ~/Report/health_check.txt






