#!/bin/bash
rm -rf /home/${LOGNAME}/.clash/tmp
ps -xal | grep "/home/${LOGNAME}/.clash/clash -d /home/jk/.clash/." |awk '{print $3}' >> /home/${LOGNAME}/.clash/tmp
read pid1 pid2 </home/${LOGNAME}/.clash/tmp
kill -INT $pid1
rm -rf /home/${LOGNAME}/.clash/tmp
echo ${pid1}

