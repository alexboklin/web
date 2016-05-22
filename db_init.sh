mysql -uroot -e "create database stepic_db"
cd web/ask && python manage.py syncdb
