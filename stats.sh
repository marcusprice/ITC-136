#!/bin/bash

#how much disk space has been used
diskused=$( df -h | grep "/dev/sda1" | awk '{print $5}' )

#how much memory is free
memfree=$( free -mh | grep Mem: | awk '{print $7}' )

#how many connections there are to the current machine
connections=$( netstat | grep tcp )

#who is logged in
users=$( who )

echo "this is a snapshot of your current system:

                Disk Used: $diskused
                
                Free Memory: $memfree
                
                Logged in Users: $users


Open Internet Connections:
$connections
"
