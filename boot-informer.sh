#!/bin/bash
subject="Subject of Email"
address="your@email.example.com"

function print_info () {
echo "`echo $HOSTNAME` started up."
echo

echo "I think it's currently `date`."
echo

echo "Here is some IP information:"
echo
echo "`ifconfig -a`"
echo
echo "Public IP: `dig +short myip.opendns.com @resolver1.opendns.com`"
echo

echo "System info: `uname -a`."
echo

}

print_info
print_info > $HOME/startupinfo.latest
print_info | mail -s $subject $address
