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
	exit 0
else 
	echo "This item does not seem to fit in your inventory..."
	echo
	exit 0
fi

cp -aRp ~/ProjectOpis/Control_Room/Medical_Room/inventory ~/ProjectOpis/Control_Room/Medical_Room/Lab_Room/inventory
cp -aRp ~/ProjectOpis/Control_Room/Medical_Room/inventory ~/ProjectOpis/Control_Room/inventory
