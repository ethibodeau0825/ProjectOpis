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

if [[ $item == "doc_1" ]]; then
	echo "$item" >> inventory
	echo "You acquired $item!"
	echo
else 
	echo "This item does not seem to fit in your inventory..."
	echo
fi

rsync -avq $user/inventory $user/Medical_Room/inventory
rsync -avq $user/inventory $user/Office_Room/inventory
rsync -avq $user/inventory $user/Engine_Room/inventory
rsync -avq $user/inventory $user/Engine_Room/Engine/inventory
