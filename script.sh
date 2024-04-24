#!/bin/bash

echo "$(tput setaf 5)[Instalador MindCore]: $(tput sgr0)$(tput setaf 10)Olá, te ajudarei a instalar nossa aplicação!"
sleep 2

echo "$(tput setaf 5)[Instalador MindCore]: $(tput sgr0)$(tput setaf 10)Primeiro irei atualizar os pacotes do seu sistema."
sleep 2

sudo apt update && sudo apt upgrade -y

echo "$(tput setaf 5)[Instalador MindCore]: $(tput sgr0) $(tput setaf 10)Irei verificar se você já tem o Java."
sleep 2

java --version

if [ $? = 0 ]; 
	then 
	echo “java instalado” 
else #se nao,
	echo “java não instalado” 
	echo “gostaria de instalar o java? [s/n]” 

	read get 
	if [ \“$get\” == \“s\” ]; 
		then 
		sudo apt install openjdk-17-jre -y 
	fi 
fi 
