LOG_FILE="system_monitor.log"

#!/bin/bash

exec > >(tee -a $LOG_FILE)

echo "==============================="
echo " Linux Server Monitoring Script"
echo "==============================="

echo ""
echo "Date & Time:"
date

echo ""
echo "--------------------------------"
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)"

echo ""
echo "--------------------------------"
echo "Memory Usage:"
free -h

echo ""
echo "--------------------------------"
echo "Disk Usage:"
df -h

echo ""
echo "--------------------------------"
echo "Top 5 Running Processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head

echo ""
echo "--------------------------------"
echo "System Uptime:"
uptime

echo ""
echo "==============================="
echo " Monitoring Completed"
echo "==============================="
