#!/bin/bash

n=$(wc -l < inventory)
d=$1

if [ $n == '0' ] || [ $n == '1' ] || [ $n == '2' ] || [ $n == '3' ] || [ $n == '4' ] || [ $n == '5' ] || [ $n == '6' ] || [ $n == '7' ]
then 
	case $d in
		"doc_1")
			echo "doc_1" >> inventory
			echo "You acquired Document 1!"
		;;
		"doc_2")
			echo "doc_2" >> inventory
			echo "You acquired Document 2!"
		;;
		"doc_3")
			echo "doc_3" >> inventory
			echo "You acquired Document 3!"
		;;
		"doc_4")
			echo "doc_4" >> inventory
			echo "You acquired Document 4!"
		;;
		"doc_5")
			echo "doc_5" >> inventory
			echo "You acquired Document 5!"
		;;
		"doc_6")
			echo "doc_6" >> inventory
			echo "You acquired Document 6!"
		;;
		"")
			echo "You did not enter any item to your inventory!"
		;;
		"scalpel")
			echo "scalpel" >> inventory
			echo "You acquired the Scalpel!"
		;;
		"toolbox")
			echo "toolbox" >> inventory
			echo "You acquired the Toolbox!"
		;;
		*)
			echo "You can not pick up this item!"
		;;
esac
fi 
		
