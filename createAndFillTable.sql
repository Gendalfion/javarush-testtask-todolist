# SQL script for creating and filling table "tasks"
#
# Database:         "test"
# Creating table:   "tasks"
# Purpose:          test task "TODO list" for JavaRush online intership

use test;

CREATE TABLE IF NOT EXISTS Tasks
(
    `id` BIGINT(12) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(25) NOT NULL,
    `description` VARCHAR(60),
    `schedule` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `done` TINYINT(1) DEFAULT false NOT NULL
) DEFAULT CHARSET=utf8;

CREATE UNIQUE INDEX id ON Tasks (id);

# Using russian symbols just for encoding/decoding testing:
INSERT INTO Tasks (`name`,`description`,`done`) VALUES 
    ("task1","Описание задачи 1",0),
    ("task2","Описание задачи 2",0),
    ("task3","Описание задачи 3",1),
    ("task4","Описание задачи 4",1),
    ("task5","Описание задачи 5",0),
    ("task6","Описание задачи 6",0),
    ("task7","Описание задачи 7",1),
    ("task8","Описание задачи 8",0),
    ("task9","Описание задачи 9",1),
    ("task10","Описание задачи 10",1),
    ("task11","Описание задачи 11",0),
    ("task12","Описание задачи 12",0),
    ("task13","Описание задачи 13",1),
    ("task14","Описание задачи 14",1),
    ("task15","Описание задачи 15",1),
    ("task16","Описание задачи 16",0),
    ("task17","Описание задачи 17",1),
    ("task18","Описание задачи 18",0),
    ("task19","Описание задачи 19",1),
    ("task20","Описание задачи 20",0),
    ("task21","Описание задачи 21",1),
    ("task22","Описание задачи 22",0),
    ("task23","Описание задачи 23",1),
    ("task24","Описание задачи 24",1),
    ("task25","Описание задачи 25",1),
    ("task26","Описание задачи 26",1),
    ("task27","Описание задачи 27",0),
    ("task28","Описание задачи 28",0),
    ("task29","Описание задачи 29",1),
    ("task30","Описание задачи 30",1)
;