IFS=$'\n';
for i in `grep -i $1 allJSPFiles.txt | grep -vi test`
do
 GR=`grep -i $2 "$i"`;
	if [ "$1" != "." ]
	then
		MOD=$1;
	else
		MOD="All Modules";
	fi
	
    if [ "$GR" != "" ]
    then
		  
			echo  "--------------------------------------------------------------------------------------------------------------------------------------" ;
			echo  "-- Search String  --> " $2;
			echo  "-- Module Name    --> " $MOD;
			echo  "-- File Name      --> " $i
			echo  "-- Search Results --> ";
			echo;
      for j in `echo "$GR" | awk -F"\n" '{print $1}'`
			do
				echo $j;
			done
		 
    fi
done;
