#!/bin/bash
echo "Please enter item: "
read item

user=$PWD
grep -q $item $user/inventory
if [ $? -eq 0 ]; then
	echo "$item is already in your inventory!"
	echo
	exit 0
fi
if [[ $item == "doc_5" ]]; then
	echo "$item" >> inventory
	echo "You acquired $item!"
	echo
else
	echo "This item doesn't seem to fit into your inventory..."
	echo
fi


rsync -avq $user/inventory ~/ProjectOpis/Control_Room/inventory
rsync -avq $user/inventory ~/ProjectOpis/Control_Room/Office_Room/inventory
rsync -avq $user/inventory ~/ProjectOpis/Control_Room/Office_Room/Bedroom/inventory
rsync -avq $user/inventory ~/ProjectOpis/Control_Room/Engine_Room/Engine/inventory
