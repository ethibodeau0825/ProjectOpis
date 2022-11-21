#!/bin/bash

n=$(wc -l < inventory)
d=$1
doc_count = 0

if [ $n == '0' ] || [ $n == '1' ] || [ $n == '2' ] || [ $n == '3' ] || [ $n == '4' ] || [ $n == '5' ] || [ $n == '6' ] || [ $n == '7' ]
then 
	case $d in
		"doc_1")
			echo "doc_1" >> inventory
			echo "You acquired Document 1!"
			#maybe this will work
			for [ -f ProjectOpis/Control_Room/.aquire.sh/doc_1 ] {
			$doc_count++
			}
		;;
		"doc_2")
			echo "doc_2" >> inventory
			echo "You acquired Document 2!"
			$doc_count++
		;;
		"doc_3")
			echo "doc_3" >> inventory
			echo "You acquired Document 3!"
			$doc_count++
		;;
		"doc_4")
			echo "doc_4" >> inventory
			echo "You acquired Document 4!"
			$doc_count++
		;;
		"doc_5")
			echo "doc_5" >> inventory
			echo "You acquired Document 5!"
			$doc_count++
		;;
		"doc_6")
			echo "doc_6" >> inventory
			echo "You acquired Document 6!"
			$doc_count++
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
		
