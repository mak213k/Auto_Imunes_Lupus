@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

"C:\Users\usuario\Desktop\Projetos\Lupus/mysql\bin\mysqld.exe" --install "wordpressMySQL" --defaults-file="C:\Users\usuario\Desktop\Projetos\Lupus/mysql\my.ini"

net start "wordpressMySQL" >NUL
goto end

:remove
rem -- STOP SERVICES BEFORE REMOVING

net stop "wordpressMySQL" >NUL
"C:\Users\usuario\Desktop\Projetos\Lupus/mysql\bin\mysqld.exe" --remove "wordpressMySQL"

:end
exit
