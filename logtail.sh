#!/bin/sh
# Thank you to https://unix.stackexchange.com/questions/8414/how-to-have-tail-f-show-colored-output

tail $@ | awk '
	/FATAL/ {print "\033[31m" $0 "\033[39m"; next}
	/ERROR/ {print "\033[31m" $0 "\033[39m"; next}
	/WARN/ {print "\033[33m" $0 "\033[39m"; next}
	/SEVERE/ {print "\033[31m" $0 "\033[39m"; next}
	/INFO/ {print "\033[32m" $0 "\033[39m"; next}
	/NOTIFICATION/ {print "\033[32m" $0 "\033[39m"; next}
	/TRACE/ {print "\033[36m" $0 "\033[39m"; next}
	1 {print}
'
