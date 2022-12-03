#!/bin/bash
echo "Please enter item: "
read item
if [[ $item == "tool_box" || $item == "doc_4" || $item == "Purple_Key" ]]; then
	echo "$item" >> inventory
	echo "You acquired $item!"
	echo
else 
	echo "This item does not seem to fit in your inventory..."
	echo
fi
user=$PWD
grep -q $item $user/inventory
if [ $? -eq 0 ]; then
	echo "$item is already in your inventory!"
	echo
	exit 0
fi


rsync -avq $user/inventory ~/ProjectOpis/Control_Room/inventory
rsync -avq $user/inventory $user/Storage_Room/inventory
rsync -avq $user/inventory $user/Bedroom/inventory
