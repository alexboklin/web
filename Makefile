all: setup_nginx setup_gunicorn setup_mysql

setup_nginx:
	sudo rm -rf /etc/nginx/sites-enabled/default
	sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
	sudo /etc/init.d/nginx restart

setup_gunicorn:
	sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
	sudo ln -sf /home/box/web/etc/gunicorn_ask.conf /etc/gunicorn.d/ask
	sudo /etc/init.d/gunicorn restart

setup_mysql:
	sudo /etc/init.d/mysql restart
	mysql -uroot -e "create database stepic_db"
	cd web/ask && python manage.py syncdb
