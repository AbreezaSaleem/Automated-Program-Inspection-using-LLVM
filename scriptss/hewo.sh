#!/bin/bash
scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
outputssDir="outputss"
cd $scriptDir/../$outputssDir

> extractedFunction.txt
> fml.txt

cd ../extra/benchmarks/student
eval $1

cd ../../../

counter=0
exists=1
passed=1
echo Checking $2 >> "outputss"/log.txt
for testFile in $scriptDir/../"testCases"/*.bc; do
	> "testCases/results"/student_solution.txt
	> "testCases/results"/correct_solution.txt
	> "outputss/existsInTest.txt"
	counter=$[counter + 1]
	opt -load $LLVMLIB/CSE231.so -DoesACallB -func $2 -testfunc "test"${counter} < $BENCHMARKS/solution/solution.bc > /dev/null
	exists=$(<outputss/existsInTest.txt)
	echo ${exists}
	echo Test Case $counter >> "outputss"/log.txt
	if [[ exists -eq 1 ]]; then
		opt -load $LLVMLIB/CSE231.so -GetSolFunctions < $testFile > "testCases/results"/trimmed.bc
		llvm-dis "testCases/results"/trimmed.bc
		llvm-link "testCases/results"/trimmed.bc $BENCHMARKS/student/answerStudent.bc -o "testCases/results"/linked.bc
		llvm-dis "testCases/results"/linked.bc
		lli "testCases/results"/linked.bc > "testCases/results"/student_solution.txt
		lli $testFile > "testCases/results"/correct_solution.txt
		if diff "testCases/results"/student_solution.txt "testCases/results"/correct_solution.txt; then
			echo Passed >> "outputss"/log.txt
		else
			echo Failed >> "outputss"/log.txt
			passed=0
		fi
	else
		echo Not tested >> "outputss"/log.txt
	fi
done

echo ${passed}
if [[ passed -eq 0 ]]; then
	echo Failed!!!
	echo ${2}
	cd extra/benchmarks/solution
	llvm-extract -o answerSolution.bc -rglob=.str* -func ${2}  solution.bc && llvm-dis answerSolution.bc
	cd ../../../
	sh ./scriptss/temp.sh ${2} "solution/solution.bc" &> ../isomorphism/matrixP.txt
	sh ./scriptss/temp.sh ${2} "student/student.bc" &> ../isomorphism/matrixQ.txt
	cd ../isomorphism
	node checkDistance.js >> ../"cse231-proj1/outputss/log.txt"
	# extract this function and do a line by line comparison here. 
	# uhh... you JUST want the functions here... so run that ugly pass that does that
	# you already have the student function extracted, now extract solution
fi


[[ passed -eq 1 ]]