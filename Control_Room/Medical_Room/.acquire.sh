#!/bin/bash
echo "Please enter item: "
read item
if [[ $item == "doc_2" || $item == "note" || $item == "Scalpel" || $item == "Red_Key" ]]; then
	echo "$item" >> inventory
	echo "You acquired $item!"
	echo
fi

user=$PWD
grep -q $item $user/inventory
if [ $? -eq 0 ]; then
	echo "$item is already in your inventory!"
	echo
	exit 0
fi

rsync -avq $user/inventory $user/Lab_Room/inventory
