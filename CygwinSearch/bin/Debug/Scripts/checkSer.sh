IFS=$'\n';
for i in `grep -i $1 allJavaFiles.txt | grep -vi test`
do
 GR=`grep -in $2 "$i" `;
	if [ "$1" != "." ]
	then
		MOD=$1;
	else
		MOD="All Modules";
	fi
	
    if [ "$GR" != "" ]
    then
		  
			echo  $i

      for j in `echo "$GR" | awk -F"\n" '{print $1}' `
			do
				echo $j
			done
		 
    fi
done;
