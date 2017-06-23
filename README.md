#Задание: TODO list
*Тестовое задание для стажировки JavaRush*

* Сборка проекта:
    Найти корень проекта (с файлом pom.xml);
    Набрать: 'mvn install' (установка Maven: 'https://maven.apache.org/install.html');
    Результат успешной сборки: папка 'target' и собранные ресурсы и библиотеки;
    
* Запуск проекта:
    Для запуска потребуется: 
        1. сервер MySQL (гайд по запуску: https://dev.mysql.com/doc/mysql-getting-started/en/);
        настройки MySQL: user(root), password (root), port (3306), DataBase (test)
        2. сервер Apache Tomcat (http://tomcat.apache.org/download-90.cgi)
    Найти файл 'todoList.war' в папке 'target';
    Развернуть веб-приложение из сервера 'todoList.war' на сервере ApacheTomcat;
    Набрать в строке браузера: 'localhost:<port>', где <port> - это порт, на который настроен сервер (по-умолчанию 8080)


