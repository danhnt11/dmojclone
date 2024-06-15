# Installing the prerequisites
sudo apt update - y
sudo apt install -y git gcc g++ make python3-dev python3-pip python3-venv libxml2-dev libxslt1-dev zlib1g-dev gettext curl redis-server pkg-config virtualenv memcached build-essential libseccomp-dev
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs
sudo npm install -g sass postcss-cli postcss autoprefixer

# Install mysql server
sudo apt update -y
sudo apt install -y mariadb-server libmysqlclient-dev
sudo service mysql start
sudo mysql -e "CREATE DATABASE dmoj DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_general_ci;"
sudo mysql -e "GRANT ALL PRIVILEGES ON dmoj.* TO 'dmoj'@'localhost' IDENTIFIED BY 'dnt1990';"
mariadb-tzinfo-to-sql /usr/share/zoneinfo | sudo mariadb -u root mysql
