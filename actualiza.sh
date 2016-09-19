#!/bin/bash
 
# FORMATOS
yellow='\033[1;33m'
nc='\033[0m'
 
#REPOSITORIOS
printf "${yellow}Actualizando repositorios...${nc}\n"
apt-get update
printf "${yellow}Repositorios actualizados.${nc}\n"
 
#PAQUETES
printf "${yellow}Actualizando paquetes...${nc}\n"
apt-get upgrade -y
printf "${yellow}Paquetes actualizados.${nc}\n"
 
#KERNEL
printf "${yellow}Actualizando KERNEL...${nc}\n"
apt-get dist-upgrade -y
printf "${yellow}KERNEL actualizado.${nc}\n"
 
#LIMPIEZA
printf "${yellow}Limpiando el sistema...${nc}\n"
apt-get autoclean
apt-get autoremove -y
apt-get clean
 
printf "${yellow}Actualizando flashpugin...${nc}\n "
update-flashplugin-nonfree --install

printf "${yellow}Sistema actualizado y listo.${nc}\n"
 
exit
