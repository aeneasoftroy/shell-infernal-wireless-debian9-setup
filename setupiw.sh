# Script for setting up infernal-twin wifi hacking suite
# done for Ethical Hackers vs Noobs FB by Stephan vd Kerkhof
tput setaf 3; echo "------------------------------------------------"
tput setaf 3; echo "1. Download and Extract the infernal-twin tar gz"
tput setaf 3; echo "------------------------------------------------"
tput sgr0;
wget https://codeload.github.com/entropy1337/infernal-twin/legacy.tar.gz/master 
tar -xvf "master"
tput setaf 3; echo "-----------------------------"
tput setaf 3; echo "2. Installing firmware-ralink"
tput setaf 3; echo "-----------------------------"
tput sgr0;
echo >>/etc/apt/sources.list
echo #Debian Stretch non-free>>/etc/apt/sources.list
echo deb http://mirrors.kernel.org/debian/ stretch main contrib non-free>>/etc/apt/sources.list
apt-get update
apt-get install firmware-ralink

tput setaf 3; echo "------------------------------------------------"
tput setaf 3; echo "3. Get connman for cmdline connection management"
tput setaf 3; echo "------------------------------------------------"
tput sgr0;
apt-get -y install connman

tput setaf 3; echo "-----------------------------------------"
tput setaf 3; echo "4. Get dependencies for Infernal-Wireless"
tput setaf 3; echo "-----------------------------------------"
tput sgr0;
apt-get -y install apache2
apt-get -y install mysql-server
apt-get -y install python-scapy
apt-get -y install tcpdump tcpreplay wireshark graphviz imagemagick python-gnuplot python-crypto python-pyx ebtables python-visual sox xpdf gv hexer librsvg2-bin python-pcapy
apt-get -y install python-wxtools
apt-get -y install python-mysqldb
apt-get -y install aircrack-ng
apt-get -y install hostapd dnsmasq wvdial

tput setaf 3; echo "--------------------------------------------------"
tput setaf 3; echo "5. Install Python-PIP and pip install dependencies"
tput setaf 3; echo "--------------------------------------------------"
tput sgr0;
apt-get -y install python-pip
pip install BeautifulSoup4

tput setaf 3; echo "-----------------------------------------------------------------------------------"
tput setaf 3; echo "6. After the first start of Infernal-Wireless, build freeradius from the Tools menu"
tput setaf 3; echo "-----------------------------------------------------------------------------------"
tput sgr0;
echo "!!!!!!!! WARNING: Build FREERADIUS from the Tools menu after installation !!!!!!!!!"
tput setaf 2; echo "--------------------------------------------"&&tput sgr0
tput setaf 2; echo "Infernal-Wireless for Debian setup completed"&&tput sgr0
tput setaf 2; echo "--------------------------------------------"&&tput sgr0
tput sgr0;
