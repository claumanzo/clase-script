#!/bin/bash
#automatizacion de git
clear
echo " ***************************** "
echo " **       Menu GitHub       ** "
echo " ***************************** "
echo
echo
echo " 1.- crear repositorio desde cero "
echo " 2.- Subir 1 archivos "
echo " 3.- salir "
echo ""
echo ""
echo ""
echo " Ingrese una opcion "
read option
if [ $option = 1 ];
then 
	echo " Ingrese texto del repositorio (README) "
	read texto 
	echo " ingrese el nombre de usuario de github "
	read usuario
	echo " Ingrese el contenido del Commit "
	read commit
	echo " Ingrese el nombre del repositorio en github "
	read repo
	# Comienzo los comandos
	echo " # $texto " >> README.md
	git init	
	git add README.md
	git commit -m " $commit "
	git remote add origin https://github.com/$usuario/$repo.git
	git push -u origin master 
fi

if [ $option = 2 ];
then
	ls
        echo " Ingrese el contenido del Commit "
        read commit
        echo " Ingrese el nombre del archivo a subir "
        read archivo
	#ejecuto comandos
	git add $archivo
	git commit -m " $commit "
	git push -u origin master
fi

if [ $option = 3 ];
then
	echo "adios"
	break
fi

