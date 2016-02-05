IFS=$'\n';
for i in `grep -i $1 allFacadeBean.txt | grep -vi test`
do
 GR=`grep -in . "$i" | grep public `;
	
    if [ "$GR" != "" ]
    then
		  
			echo  "--------------------------------------------------------------------------------------------------------------------------------------" ;
			echo  "-- Purpose        --> Display All Public Methods Names in EJB Facade Bean(s) ";
			echo  "-- Search String  --> " $1;
			echo  "-- File Name      --> " $i
			echo  "-- Search Results --> ";
			echo;
      for j in `echo "$GR" | awk -F"\n" '{print $1}'`
			do
				echo $j;
			done
		 
    fi
done;
