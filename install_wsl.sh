while true; do
    read -p "Do you wish to install this program? (Y/n) " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit 0;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo 'export DISPLAY=:0.0' >> ~/.profile

sudo apt install x11-apps
xeyes