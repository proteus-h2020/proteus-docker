# Main 

# Ititialization

mainmenu () {
  echo "Press 1 - Install Proteus Environment"
  echo "Press 2 - Check Containers"
  echo "Press 3 - Stop Containers"
  echo "Press 4 - Delete Containers"
  echo "Press 5 - Unistall Proteus Environment"
  read -n 1 -p "Input Selection:" mainmenuinput
  echo ""
  if [ "$mainmenuinput" = "1" ]; then
            sudo ./scripts/install-proteus-environment.sh
        elif [ "$mainmenuinput" = "2" ]; then
	    bash ./scripts/check-status-containers.sh
	elif [ "$mainmenuinput" = "3" ]; then
            bash ./scripts/stop-containers.sh
        elif [ "$mainmenuinput" = "4" ]; then
	    bash ./scripts/stop-containers.sh
            bash ./scripts/delete-containers.sh
        elif [ "$mainmenuinput" = "5" ]; then
	    bash ./scripts/unistall-proteus-environment.sh
        elif [ "$mainmenuinput" = "x" ];then
            quitprogram
        elif [ "$mainmenuinput" = "X" ];then
            quitprogram
        else
            echo "You have entered an invallid selection!"
            echo "Please try again!"
            echo ""
            echo "Press any key to continue..."
            read -n 1
            clear
            mainmenu
        fi
}

# This builds the main menu and routs the user to the function selected.

mainmenu

# This executes the main menu function.

