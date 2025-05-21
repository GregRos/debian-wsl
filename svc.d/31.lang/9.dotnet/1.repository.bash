install_dotnet=/tmp/install_dotnet
rm -rf $install_dotnet
mkdir -p $install_dotnet
cd $install_dotnet
wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
