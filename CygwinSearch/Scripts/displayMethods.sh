IFS=$'\n';
for i in `grep -i $1 allJavaFiles.txt | grep -vi test`
do
 GR=`grep -i . "$i" | grep public `;
	
    if [ "$GR" != "" ]
    then
		  
      for j in `echo "$GR" | awk -F"\n" '{print $1}'`
			do
				echo $i,$j;
			done
		 
    fi
done;
