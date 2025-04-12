echo.section Installing GitKraken
install_dir=/tmp/install_gitkraken
mkdir -p $install_dir
cd $install_dir
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
apt-get -y install ./gitkraken-amd64.deb
