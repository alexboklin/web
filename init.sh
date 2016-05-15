#sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
#sudo /etc/init.d/nginx restart


sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
