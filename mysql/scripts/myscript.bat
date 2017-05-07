@echo off
"C:\Users\usuario\Desktop\Projetos\Lupus/mysql\bin\mysql.exe" --defaults-file="C:\Users\usuario\Desktop\Projetos\Lupus/mysql\my.ini" -u root -e "DELETE FROM mysql.user WHERE User='';"
"C:\Users\usuario\Desktop\Projetos\Lupus/mysql\bin\mysql.exe" --defaults-file="C:\Users\usuario\Desktop\Projetos\Lupus/mysql\my.ini" -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '%1';"
