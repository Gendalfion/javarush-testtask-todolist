# Задание: TODO list<br />
*Тестовое задание для стажировки JavaRush*<br />

* Сборка проекта:<br />
    Найти корень проекта (с файлом pom.xml);<br />
    Набрать: 'mvn install' (установка Maven: 'https://maven.apache.org/install.html');<br />
    Результат успешной сборки: папка 'target' + собранные ресурсы и библиотеки в ней;<br />
<hr>
* Запуск проекта:<br />
    Для запуска потребуется: <br />
        * сервер MySQL (гайд по запуску: https://dev.mysql.com/doc/mysql-getting-started/en/);<br />
        настройки MySQL: user(root), password (root), port (3306), DataBase (test)<br />
        * сервер Apache Tomcat (http://tomcat.apache.org/download-90.cgi)<br />
<br />
    Далее:<br />
    Находим файл 'todoList.war' в папке 'target';<br />
    Разворачиваем веб-приложение 'todoList.war' на сервере Apache Tomcat;<br />
    Набираем в строке браузера: 'localhost:_port_', где _port_ - это порт, на который настроен сервер (по-умолчанию 8080)<br />


