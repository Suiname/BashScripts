#!/bin/bash
# Examples of conditionals you can test for in bash:
# -d file
# True if file is a directory.
# -e file
# True if file exists.
# -f file
# True if file exists and is a regular file.
# -L file
# True if file is a symbolic link.
# -r file
# True if file is a file readable by you.
# -w file
# True if file is a file writable by you.
# -x file
# True if file is a file executable by you.
# file1 -nt file2
# True if file1 is newer than (according to modification time) file2
# file1 -ot file2
# True if file1 is older than file2
# -z string
# True if string is empty.
# -n string
# True if string is not empty.
# string1 = string2
# True if string1 equals string2.
# string1 != string2
# True if string1 does not equal string2.


echo -n "Enter a number between 1 and 3 inclusive > "
read character
if [ "$character" = "1" ]; then
    echo "You entered one."
else
    if [ "$character" = "2" ]; then
        echo "You entered two."
    else
        if [ "$character" = "3" ]; then
            echo "You entered three."
        else
            echo "You did not enter a number"
            echo "between 1 and 3."
        fi
    fi
fi
