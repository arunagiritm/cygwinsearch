IFS=$'\n';

# supply the path pattern for the SLOC  
PATTERN=$1

countLines(){
  # $total is the total lines of code counted
  total=0
  # -mindepth exclues the current directory (".")
  for file in `grep -i "$PATTERN" allJavaFiles.txt `; do
    # First sed: only count lines of code that are not commented with //
    # Second sed: don't count blank lines
    # $numLines is the lines of code
    # numLines=`cat $file | sed '/\/\//d' | sed '/^\s*$/d' | wc -l`
	numLines=`cat $file | sed '/\/\//d' | sed '/^\s*$/d' | wc -l`
    total=$(($total + $numLines))
    echo $file, $numLines
  done
}

countLines