#!/bin/bash
echo "Please enter item: "
read item
if [[ $item == "doc_6" || $item == "Pink_Key" || $item == "Green_Key" ]]; then
	echo "$item" >> inventory
	echo "You acquired $item!"
	echo
else
	echo "This item doesn't seem to fit your inventory..."
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
rsync -avq $user/inventory ~/ProjectOpis/Control_Room/Office_Room/Storage_Room/inventory
rsync -avq $user/inventory ~/ProjectOpis/Control_Room/Engine_Room/inventory
rsync -avq $user/inventory ~/ProjectOpis/Control_Room/Engine_Room/Engine/inventory
rsync -avq $user/inventory ~/ProjectOpis/Control_Room/Office_Room/inventory
