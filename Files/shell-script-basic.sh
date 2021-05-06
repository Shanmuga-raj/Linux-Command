!/bin/bash


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
	if [ -e $location/$file_name ]					# -e - check if file / directory exist
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
	if [ -d "$file" ]								# "$file" - Incase, If file name has any space in it this will help.
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

if [ $# -lt 3 ]										# Counts Number of Parameter included when script was executed.
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
shift 2												# Shift by 2 value
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

echo -n "What's Your Name: "						# -n - suppress new line character
read name
echo "Hello $name, Welcome!!!"

#----------------------------------------------------------------------------------------------------------------------------------------------------------------#

# Alternative method for Read:

read -p "Enter Your age: " age						# -p - display a prompt and get input in a single line
days=$[ $age*365 ]
echo "You're $days days old!"

#----------------------------------------------------------------------------------------------------------------------------------------------------------------#

# Use of $REPLY in read command:

read -p "Enter Your Name: "							# REPLY - default variable (used when you dont have a variable name)
echo Hello $REPLY!!!

#----------------------------------------------------------------------------------------------------------------------------------------------------------------#

# Time Out in read:

if read -t 10 -p "Your Name: "						# -t - used to set timeout in seconds
then
	echo "Hello $REPLY!!!"
else
	echo "Timeout exceeded."
fi

#----------------------------------------------------------------------------------------------------------------------------------------------------------------#

# Automatic Exit after typing preset number of character:

read -n1 -p "Do you want to continue [Y/N]? "		# -n option with value of 1 - accept only single character and 
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

for file in *.txt: do
	name=$(basename "$file" .txt)					# Get the file name and leaving format
	mv "$file" "name.csv"
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
	if [[ $file == *"substring"* ]]; then			# Normal Search: Check if filename has a word substring in it
	if [[ $file =~ .*substring.* ]]; then			# RegExp Search: Check if filename has a word substring in it
		rm $file
	fi
done

#Alternative one liner:

rm *substring*.srt									# No Loops or No RegExp Needed

#----------------------------------------------------------------------------------------------------------------------------------------------------------------#

# Removing bulk files from both parent and child directory:

find . -type f -name '*.html' -delete				# find - command to search something; 	. - from current directory youre in
													# f - only search for files; 		-name - name ending with .html
													# -delete - find has an option delete

#----------------------------------------------------------------------------------------------------------------------------------------------------------------#
