#!/bin/bash

echo "$(tput setaf 5)[Instalador MindCore]: $(tput sgr0)$(tput setaf 10)Olá, te ajudarei a instalar nossa aplicação!"
sleep 2

echo "$(tput setaf 5)[Instalador MindCore]: $(tput sgr0)$(tput setaf 10)Primeiro irei atualizar os pacotes do seu sistema."
sleep 2

sudo apt update && sudo apt upgrade -y

echo "$(tput setaf 5)[Instalador MindCore]: $(tput sgr0) $(tput setaf 10)Irei verificar se você já tem o Java."
sleep 2

java -version #verifica versao atual do java

if [ $? = 0 ]; #se retorno for igual a 0
	then #entao,
	echo “java instalado” #print no terminal
else #se nao,
	echo “java não instalado” #print no terminal
	echo “gostaria de instalar o java? [s/n]” #print no terminal

	read get #variável que guarda resposta do usuário
	if [ \“$get\” == \“s\” ]; #se retorno for igual a s
		then #entao
		sudo apt install openjdk-17-jre -y #executa instalacao do java
	fi #fecha o 2º if
fi #fecha o 1º if
