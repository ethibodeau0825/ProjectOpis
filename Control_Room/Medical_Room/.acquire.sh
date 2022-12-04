#!/bin/bash
echo "Please enter item: "
read item

player=$PWD
grep -q $item $player/inventory
if [ $? -eq 0 ]; then
	echo "$item is already in your inventory!"
	echo
	exit 0
fi

if [[ $item == "doc_2" || $item == "note" || $item == "Scalpel" || $item == "Red_Key" ]]; then
	echo "$item" >> inventory
	echo "You acquired $item!"
	echo
else 
	echo "This item does not seem to fit in your inventory..."
	echo
fi

rsync -avq $player/inventory ~/ProjectOpis/Control_Room/Medical_Room/Lab_Room/inventory
rsync -avq $player/inventory ~/ProjectOpis/Control_Room/inventory
