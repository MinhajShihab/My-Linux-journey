
#!/bin/bash
if [  -z $1 ];
then 
echo "File name must not be empty"
echo "Usage: ./auditor.sh <file_name>"
exit 1
fi
file=$1
if [ ! -f $1 ];
then 
echo "file doensn't exist, name a existing file"
exit 1
fi

if [ -x $1 ];
then 
echo "The file is exicutable handle with care"
 fi
if [ -r $1 ];
then
echo "The file is readonly for you"
fi
if [ -w $1 ];then 
echo "The file is writable for you"
fi

exit 0
