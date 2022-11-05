#! /bin/bash
source /home/${LOGNAME}/.bashrc
echo "Using clash......."
function set_manual(){
    gsettings set org.gnome.system.proxy mode 'manual'
    gsettings set org.gnome.system.proxy.http host '127.0.0.1'
    gsettings set org.gnome.system.proxy.http port 7890
    gsettings set org.gnome.system.proxy.https host '127.0.0.1'
    gsettings set org.gnome.system.proxy.https port 7890
    gsettings set org.gnome.system.proxy.socks host '127.0.0.1'
    gsettings set org.gnome.system.proxy.socks port 7891
    /home/${LOGNAME}/.clash/clash -d /home/${LOGNAME}/.clash/.
        #xxxx表示你自己的路径
    return 0;
}
set_manual
gsettings set org.gnome.system.proxy mode 'auto'
echo "-----------set proxy aoto----------------"

