all: setup_nginx setup_gunicorn setup_mysql create_db install_autofixture syncdb

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
	#cd web/ask && python manage.py syncdb

create_db:
	mysql -uroot -e "create database stepic_db"

syncdb:	
	python ask/manage.py syncdb	
	
set_github_credentials:
	git config --global user.email "alex.boklin@gmail.com"
	git config --global user.name "alexboklin"

install_autofixture:
	sudo pip install django-autofixture

generate_data:
	python ask/manage.py loadtestdata qa.Question:20 qa.Answer:50
