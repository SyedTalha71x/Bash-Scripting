echo "Arguments Bash-Scripting and many more"
echo "-----------------------"


echo "Installing apache2 Service"
sudo apt install $1

echo "Checking Status of apache2"
sudo systemctl status $2

echo "Stopping Apache2 service"
sudo systemctl stop $3


echo "Check Mem in Memory Setup"

echo "------------------------"

free -m | grep Mem | awk '{print $4}'
FREE_RAM=`free -m | grep Mem | awk '{print $4}'`

echo "Free Ram is $FREE_RAM mb."


