#assignment
value="1"
#return value with ""
echo "value variable is set to $value"
#escape character is \
echo "I can escape with \\ like this - \$value"
#return literals with ''
echo 'literal variable is called $value'
anothervar="2"
#concatenation
echo "concatenation is easy, see this - $value$anothervar"
#command line parameters
echo "this is the first parameter - $1"
echo "this is the second parameter $2"
echo "these are all the parameters - $@"
#assigning output of bash functions with `` <- backtick
bashout=`pwd`
echo "this is the directory you are in - $bashout"
#math stuff
echo "2+2 = $((2+2))"
number="2"
echo "2+number = $((number+2))"
#user input
echo "enter a number"
read usernum
echo "you entered $usernum"
#echo -e allows for some additional escape commands
#turn up your sound
echo -e "\aMake a noise"
