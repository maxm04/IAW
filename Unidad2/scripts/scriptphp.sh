
sudo apt update -y 
sudo apt install phpmyadmin php-mbstring php-zip php-gd php-json php-curl -y


sudo apt install php-cli -y
sudo apt install php-cgi -y
sudo apt install php-mysql -y
sudo apt install php-pgsql -y

n
sudo apt install phpmyadmin php-mbstring php-zip php-gd php-json php-curl -y    


sudo mysql -e 'UNINSTALL COMPONENT "file://component_validate_password";'


sudo mysql -e "CREATE USER 'phpmyadmin'@'localhost' IDENTIFIED BY 'phpmyadmin';"
sudo mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'phpmyadmin'@'localhost' WITH GRANT OPTION;"
sudo mysql -e "FLUSH PRIVILEGES;"


sudo systemctl restart apache2






