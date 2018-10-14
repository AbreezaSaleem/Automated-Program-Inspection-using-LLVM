#!/bin/bash
scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd "outputss"

count=0
echo $1 >> log.txt
line_same=1
passed=0
while IFS= read -r line1  && IFS= read -r line2 <&3 ; do
	echo line 1 "$line1"
	echo line 2 "$line2"
	if [[ "$line1" =~ ^Test[0-9]+$ ]]; then
		[[ line_same -eq 1 ]] && echo "Test" $count ": Passed" >> log.txt || echo "Test" $count ": Failed" >> log.txt
		count=$(( $count + 1 ))
		read -r line1
		echo line 1 "$line1"
		line_same=1
	fi
	echo comparing "$line1" "$line2"
	if [ "$line1" != "$line2" ]; then
		line_same=0
		passed=1
	fi
done < output.txt 3< fml.txt

#diff fml.txt output.txt
echo "$passed"
[[ passed -eq 1 ]]
#|| [[ -n "$line" ]]
# && IFS= read -r line2

# solution file contains test 1 ------ test 2 ------- test 3 --------
# student file contains ------- --------- --------
# you need to point your checker to test n. then read lines from both the files and compare
# if you get to test n+1 with all lines being the same, echo "test n passed"

# see if end of file is reached. 
# or... fix that 
