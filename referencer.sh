echo "You are currently in:"
pwd
echo "Your username is:"
whoami
echo "your user ID is:"
userid=$( whoami )
id -u $userid
echo "These are the super users:"
grep '^sudo:.*$' /etc/group | cut -d: -f4
echo "These are your running processes:"
ps aux
