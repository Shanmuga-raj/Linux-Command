!/bin/bash

BASIC-INBUILT-COMMANDS:
````````````````````````
Listing Files									-		ls
Display Content Of A File							-		cat
Count Words									-		wc
Copy Files									-		cp
Moving Files									-		mv
Renaming Files, Directories							-		mv
Deleting Files									-		rm
Change Directory								-		cd
Print Working Directory								-		pwd
Creating Directories								-		mkdir
Removing Directories								-		rmdir
Change User Permission								-		chmod
Change Owner									-		chown
Change Group									-		chgrp
Sequence Of Number								-		seq
Displays Information about User							-		who
Extended who command								-		w
Read From Standard Input							-		read
Clear Terminal									-		clear
Terminal History								-		history
Restart Execution that\'s been Stoped						-		fg
Locates Files and Directories							-		find
Display the System Date and Time						-		date
Display the Calendar								-		cal
Status of System Print Queues							-		lpstat
Enable or Start print Queue							-		enable
Disable or Stop Print Queue							-		disable
Displays base filename of a string parameter					-		basename
Writes out selected characters							-		cut
Programming language to parse characters					-		awk
Stream Editor									-		sed
Internal Field Seperator (split)						-		IFS
Shell Level									-		SHLVL
Search String Of Characters							-		grep
Sort Text Alphabetically							-		sort
Running Processes								-		ps
List of Running Processes							-		top
Kill Processes									-		kill
File Transfer Protocol								-		ftp
Connect to Remote Unix Machine							-		telnet
Information About User								-		finger


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


SYMBOLS & METACHARACTERS:
``````````````````````````

Pipe Previous Output to Next Command						-		|				# Pipe
Run in Background (use at end of command)					-		&
Match Any Single Character							-		.
Match the Preceding Item Zero or One Time					-		?
Match the Preceding Item Zero or More Times					-		*
Match the Preceding Item One or More Times					-		+
Runs The Enclosed Command In A Sub-Shell					-		( )
Assigns value to a variable and does math in a shell				-		(( ))
Evaluates the enclosed Expression						-		$(( ))				# echo "$(( 5 + 5 ))"
Refer Variable and Array							-		${ }				# name="raj" echo "hey ${name}"
String Comparison								-		< >
Command Substitution								-		$( ) (or) 'command' (or) `command`
Special characters between these quotes have their special meaning		-		""				# Weak Quote
Any Special characters between these quotes lose their special meaning		-		''				# Strong Quote
Any character immediately following the backslash loses its special meaning	-		\
Anything inbetween back quotes will be treated as command and executed		-		``
Conditional Expression								-		[ ] or [[ ]]
Regular Expression Matching							-		=~


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


VARIABLE:
``````````
Valid Variable									-		a - z or A - Z or 0 - 9 or _
Define Variable									-		NAME="raj"
Access Variable									-		echo $NAME
Make a Variable Constant							-		readonly NAME
Unset / Delete Variable								-		unset NAME


SPECIAL VARIABLE:		# Example - 0.1
``````````````````
Current Shell Process ID (PID)							-		echo $$
File Name of Script								-		echo $0
Print Number Of Arguments Passed To Script					-		echo $#
Process Number Of Last Background Command					-		echo $!
Exit Status Of Last Command Executed						-		echo $?
All Arguments are Double Quoted							-		echo $*				# Example - 0.2
All Arguments are Individually Double Quoted					-		echo $@


VARIABLE SUBSTITUTION:	# Example - 0.3
``````````````````````
Subtitute The Value Of Variable							-		${NAME}
If variable is Null, Print this But Not Set to Variable				-		${NAME:-"Raj"}
If variable is Null, Print this Also Set to Variable				-		${NAME:="Shanmuga Raj"}
Check Whether Variable Is Set Correctly						-		${NAME:?"Shanmuga Raj"}
If variable is Already Set Substitute this. But Dont Set			-		${NAME:+"Raj"}


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


ARRAY:
``````
Create a New Array								-		NAMES=("shanmugaraj" "dinesh" "suresh")
Add Data to Array								-		NAMES[4]="Raj"
Print Array Data								-		echo ${NAMES[*]} or echo ${NAMES[@]}


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


ARITHMETIC OPERATOR:		# Example - 0.4
````````````````````
Addition									-		+ 				# Example: `expr 2 + 2`
Subtraction									-		-				# Example: `expr 10 - 2`
Multiplication									-		*				# Example: `expr 5 * 2`
Division									-		/				# Example: `expr 10 / 2`
Modulus										-		%				# Example: `expr 2 % 2`
Assign										-		=				# Example: a=$b
Equality									-		==				# Example: [ $a == $b ]
Not Equality									-		!=				# Example: [ $a != $b ]


RELATIONAL OPERATOR:
````````````````````
Equality									-		-eq
Not Equality									-		-ne
Greater Than									-		-ge
Lesser Than									-		-lt
Greater Than or Equal To							-		-ge
Lesser Than or Equal To								-		-le
Logical OR									-		-o
Logical AND									-		-a
Check Operant string is Zero							-		-z				# Example: [ -z $a]
Check Operant string is NonZero							-		-n				# Example: [ -n $a ]
String is Empty or Not								-						# Example: [ $a ]


FILE TEST OPERATOR:
````````````````````
Check If Directory Exists or Not						-		-d				# Example: [ -d $file ]
Check If File / Directory Exist or Not						-		-e				# Example: [ -e $file ]
Check Its a File But Not A Directory						-		-f				# Example: [ -f $file ]
Check If File Is Empty or Not							-		-s				# Example: [ -s $file ]
Check If File Is Readable							-		-r				# Example: [ -r $file ]
Check If File Is Writeable							-		-w				# Example: [ -w $file ]
Check If File Is Executable							-		-x				# Example: [ -x $file ]
Check Whether It Is Block Device (/dev/sdax)					-		-b				# Example: [ -b $device ]
Check Whether It Is Character Device (/dev/pendrive)				-		-c				# Example: [ -c $device ]
Check If Youre Owner Of File							-		-O				# Example: [ -O $file ]
Check If File is Modified Since Its Last Read					-		-N
File f1 is Newer Than File f2							-		f1 -nt f2
File f1 is Older Than File f2							-		f1 -ot f2
Both f1 and f2 are Hard Links to Same File					-		f1 -ef f2


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


FUNCTIONS:
``````````
Defining a Function								-		Hello() { echo "hello raj"}
Invoke Above Function								-		Hello
Pass Parameters									-		Welcome() { echo "Hello, $1 $2"}
Invoke By Passing Parameters							-		Hello Shanmuga Raj
Remove A Function Definition							-		unset -f 
Defining A Function With Return Value						-		Hello() { return 25 }
Capture Return value from Previous Function					-		ret=$?


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Example - 0.1

	echo "File Name: $0"
	echo "First Parameter : $1"
	echo "Second Parameter : $2"
	echo "Quoted Values: $@"
	echo "Quoted Values: $*"
	echo "Total Number of Parameters : $#"

	# Example - 0.1 - OUTPUT
		# $ ./test.sh Shanmuga Raj R
		# File Name: ./test.sh
		# First Parameter : Shanmuga
		# Second Parameter : Raj
		# Quoted Values: Shanmuga Raj
		# Quoted Values: Shanmuga Raj
		# Total Number of Parameters : 3


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Example - 0.2

	for i in $*
		do
		echo $i
	done

	# Example - 0.2 - OUTPUT
		# $ ./test.sh Shanmuga Raj 20 Enginner Techie
		# Shanmuga
		# Raj
		# 20
		# Engineer
		# Techie


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Example - 0.3

	var="setted"

	echo ${var:-"Default"}							# If variable has a value this has no effect
	echo "Value is: ${var}"							# If variable is Null "Default" will be printed 
										# but "Default" will not be set to variable it will still NULL

	echo ${var:="Default"}							# If variable has a value this has no effect
	echo "Value is: ${var}"							# If variable is Null "Default" will be printed 
										# and also "Default" will be set to variable value

	unset var								# "Default" is set previously. So, unset it.
	echo ${var:+"Default"}							# If variable is NULL nothing will be done
	echo "Value is: $var"

	var="New"								# Set A "New" value to variable var
	echo ${var:+"Default"}							# If variable is Not NULL it will print "Default" 
										# but "Default" will not be set to variable
	echo "Value is: $var"							# It will still be a Previous Value

	echo ${var:?"New"}							# Check whether variable value is equal to default value
	echo "Value is: ${var}"							# If variable is null It will throw an error


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Example - 0.4

	val=`expr 2 + 2`							# Should be inbetween Backtick & Should have space between + symbol
	echo "Two Plus Two is: $val"

	# Example - 0.3 - OUTPUT
		# $ ./test.sh
		# Two Plus Two is: 4


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Checking Directory Exists or Not:

directory=/home/script
if [ -d $directory ]								# -d - check if directory exists or not
then 
	echo "$directory - exists"
	cd $directory
	ls
else
	echo "$directory - Not exist"
fi


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Checking Whether an object exists:

location=$HOME
file_name="untitled"
if [ -e $location ]
then
	echo "'$location' - Directory exists"
	echo "Now checking for, '$file_name'"
	if [ -e $location/$file_name ]						# -e - check if file / directory exist
	then
		echo "'$file_name' - Exists"
		echo "Checking whether '$file_name' is a file or directory"
		if [ -f $file_name ]						# -f - Check its a file but not a directory
		then 
			echo "Yes, '$file_name' - Its a File"
		else
			echo "'$file_name' - Its Not a File"
		fi
	else
		echo "'$file_name' - Not exists"
	fi
else
	echo "'$location' - Directory Not exists"
fi


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Checking For Empty File and removing them:

file_name=$HOME/untitled
if [ -f $file_name ]
then
	echo "File Exists"
	if [ -s $file_name ]							# -s - Check if File is empty or Not
	then
		echo "File Has Data in it"
	else
		echo "File is Empty"
		echo rm $file_name
	fi
else
	echo "File Not Exists"
fi


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Checking Whether a file is executable or Not:

if [ -x test02.sh ]
then
	echo "You can run this script"
	echo ./test02.sh
else
	echo "You have not enough permission to run this script"
fi


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Double Paranthesis: ( Used for Mathematical expression )

val1=10
if (( $val1 ** 2 > 90 ))
then
	(( val2 = $val1 ** 2 ))
	echo "Square of $val1 is, \"$val2\""
fi


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Single Brackets and Double Brackets: ( Used For String Comparison )

if [[ $USER == r* ]]
then
	echo "Hello, $USER"
elif [ $USER = "dinesh" ]
then 
	echo "Hello, $USER"
else
	echo "Sorry, No user found."
fi


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#

# Reading from a File:

file="states"
for state in $(cat $file)
do
	echo "Visit $state"
done


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


 # Checking Directory or File:

for file in /home/raj/Documents/*
do
	if [ -d "$file" ]							# "$file" - Incase, If file name has any space in it this will help.
	then 
		echo "$file - its a Directory"
	elif [ -f "$file" ]
	then 
		echo "$file - its a File"
	fi
done


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# For Loop:

for (( i=1; i <= 10; i++ ))
do
	echo "$i"
done


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Multiple Variable in For Loop:

for (( a=1, b=10; a<=10; a++, b-- ))
do
	echo "$a - $b"
done


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Nested For Loop:

for (( a=1; a<=3; a++ ))
do echo "Outer Loop - $a"
	for (( b=1; b<=3; b++ ))
	do echo "	Inner Loop - $b"
	done
done


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# While Loop:

var1=10
while [ $var1 -gt 0 ]
do
	echo $var1
	var1=$[ $var1 - 1 ]
done


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Nested While Loop:

var1=5
while [ $var1 -gt 0 ]
do
	echo "$var1 - Tables"
	for (( var2 = 1; $var2 <= 5; var2++ ))
	do
		var3=$[ $var1 * $var2 ]
		echo "	$var1 * $var2 = $var3"
		done
	var1=$[ $var1 - 1 ]
done


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Until Loop:

var1=100
until [ $var1 -eq 0 ]
do
	echo $var1
	var1=$[ $var1 - 25 ]
done


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Nested Until Loop:

var1=3
until [ $var1 -eq 0 ]
do
	echo "Outer loop: $var1"
	var2=1
	while [ $var2 -lt 5 ]
	do
		var3=$(echo "scale=4; $var1 / $var2" | bc)
		echo "	$var1 / $var2 = $var3"
		var2=$[ $var2 + 1 ]
	done
	var1=$[ $var1 - 1 ]
done


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Passing Parameter: (execute it by passing value eg: ./name.sh 2 5 raj)
# $0 determine script name, after 9th parameter use {} eg: ${10}
# You can set parameters to pass:

if [ $# -lt 3 ]									# Counts Number of Parameter included when script was executed.
then 
	echo "You Need to Include 3 Parameter $(basename $0) 2 5 raj "		# basename eliminates path and return only the filename.
	echo "You Need to Include 3 Parameter $(basename ${!#}) 2 5 raj"	# ${!#} - Gets the Last parameter. If no parameter is passed then 
										# filename will be displayed.
else
	sum=$[ $1 * $2 ]
	echo First Parameter is: $1
	echo Second Parameter is: $2
	echo Total is: $sum
	name=$3
	echo Hello, ${!#}
fi


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Grabbing Parameters:
# $* - Takes All Parameter as a Single word
# $@ - Takes All Parameter as a Seperate word but same string

for i in "$*"
do
	echo "Output of '\$*' is: $i"
done
echo
for j in "$@"
do
	echo "Output of '\$@' is: $j"
done


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Using Shift: (run script by passing parameter)

echo original parameter: $*
shift 2										# Shift by 2 value
echo New parameter: $*


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# shift in while loop:

echo
count=1
while [ -n "$1" ]
do
	echo "Parameter #$count = $1"
	count=$[ $count + 1 ]
	shift
done


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Read Input From User:

echo -n "What's Your Name: "							# -n - suppress new line character
read name
echo "Hello $name, Welcome!!!"


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Alternative method for Read:

read -p "Enter Your age: " age							# -p - display a prompt and get input in a single line
days=$[ $age*365 ]
echo "You're $days days old!"


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Use of $REPLY in read command:

read -p "Enter Your Name: "							# REPLY - default variable (used when you dont have a variable name)
echo Hello $REPLY!!!


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Time Out in read:

if read -t 10 -p "Your Name: "							# -t - used to set timeout in seconds
then
	echo "Hello $REPLY!!!"
else
	echo "Timeout exceeded."
fi


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Automatic Exit after typing preset number of character:

read -n1 -p "Do you want to continue [Y/N]? "					# -n option with value of 1 - accept only single character and 
										# we dont need to press enter too
case $REPLY in
Y | y) 	echo
		echo "fine, continue on...";;
N | n) 	echo
		echo OK, goodbye
		exit;;
esac


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Functions: (return - value range from 0 to 255)

function double {
	read -p "Enter a Value: " value
	echo $[ $value * 2 ]
}
result=$(double)
echo "Double is, $result"


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Passing Value to a function:

multiple() {
	echo $[ $1 * $2]
}
if [ $# -eq 2 ]
then
	value=$(multiple $1 $2)
	echo "Multiple of $1 and $2 is: $value"
else
	echo "Pass Paramteres: ./test.sh x y"
fi


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Renaming Format of .txt File to .csv:

for file in *.txt; do
	name=$(basename "$file" .txt)						# Get the file name and leaving format
	mv "$file" "$name.csv"
done


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Renaming Bulk Files Alphabetically:

arr=( $(printf '%s\n' {A..Z}{a..z}{a..z}))
i=0
for file in *.srt; do
	mv "$file" "${arr[i++]}.srt"
done
unset arr


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Find Substring from a filename and remove that file:

for file in *.srt; do
	if [[ $file == *"substring"* ]]; then					# Normal Search: Check if filename has a word substring in it
	if [[ $file =~ .*substring.* ]]; then					# RegExp Search: Check if filename has a word substring in it
		rm $file
	fi
done

#Alternative one liner:

rm *substring*.srt								# No Loops or No RegExp Needed


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#


# Removing bulk files from both parent and child directory:

find . -type f -name '*.html' -delete						# find - command to search something; 	. - from current directory youre in
										# f - only search for files; 			-name - name ending with .html
										# -delete - find has an option delete


#----------------------------------------------------------------------------------------------------------------------------------------------------------------#