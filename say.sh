#!/usr/bin/expect

set message [lindex $argv 0];
set timeout 5
set hostname localhost
set port $::env(SEVEN_DAYS_TO_DIE_TELNET_PORT)
set password $::env(SEVEN_DAYS_TO_DIE_TELNET_PASSWORD)

spawn telnet $hostname $port

expect "Please enter password:"
send "$password\r";
send "say \"$message\"\r";
send "exit\r";
expect eof
