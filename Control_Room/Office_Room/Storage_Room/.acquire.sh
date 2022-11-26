#!/bin/bash
echo "Please enter item: "
read item
echo
user=$PWD
grep -q $item $user/inventory
if [ $? -eq 0 ]; then
	echo "$item is already in your inventory!"
	echo
	exit 0
fi

echo "$item" >> inventory
echo "You acquired $item!"
echo

rsync -avq $user/inventory ~/ProjectOpis/Control_Room/inventory
rsync -avq $user/inventory ~/ProjectOpis/Control_Room/Office_Room/inventory
rsync -avq $user/inventory ~/ProjectOpis/Control_Room/Office_Room/Bedroom/inventory
rsync -avq $user/inventory ~/ProjectOpis/Control_Room/Engine_Room/Engine/inventory
