#!/bin/bash
function check(){
    local a="$1"
    printf "%d" "$a" &>/dev/null && echo "integer" && return
    printf "%d" "$(echo $a|sed 's/^[+-]\?0\+//')" &>/dev/null && echo "integer" && return
    printf "%f" "$a" &>/dev/null && echo "number" && return
    [ ${#a} -eq 1 ] && echo "char" && return
    echo "string"
}
rm -rf /home/jk/.clash/tmp
ps -xal | grep "/home/jk/.clash/clash -d /home/jk/.clash/." |awk '{print $3}' >> /home/jk/.clash/tmp
read pid1 pid2 </home/jk/.clash/tmp
kill -INT $pid1
echo ${pid1}

