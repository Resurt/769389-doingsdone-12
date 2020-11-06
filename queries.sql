/* создание двух пользователей */
INSERT INTO `user` (`email`, `name`, `password`)
VALUES  ('htmlacademy_kirill@gmail.com', 'Кирилл', '1234556'),
        ('anton_php@yandex.ru', 'антон', '8675432'),
        ('privet@ya.ru', 'Роман', '12345678');

/* существующий список проекто */
INSERT INTO `project` (`title`, `user_id`)
VALUES  ('Входящие', '1'),
        ('Учеба', '3'),
        ('Работа', '1'),
        ('Домашние дела', '3'),
        ('Авто', '1');

/* существующий список задач */
INSERT INTO `task` (`title`, `link`, `deadline`, `user_id`, `project_id`)
VALUES  ('Собеседование в IT компании', NULL, '2019-12-01', '1', '3'),
        ('Выполнить тестовое задание', NULL, '2019-12-25', '1', '3'),
        ('Сделать задание первого раздела', NULL, '2019-12-21', '2', '2'),
        ('Встреча с другом', NULL, '2019-12-22', '1', '1'),
        ('Купить корм для кота', NULL, NULL, '3', '4'),
        ('Заказать пиццу', NULL, NULL, '3', '4');

/* получить список из всех проектов для одного пользователя */
SELECT * FROM `project` WHERE `user_id` = 1;

/* получить список из всех задач для одного проекта */
SELECT * FROM `task` WHERE `project_id` = 3;

/* пометить задачу как выполненную */
UPDATE `task` SET `status` = '1' WHERE `id` = 3;

/* обновить название задачи по её идентификатору */
UPDATE `task` SET `title` = 'Собеседование в банке' WHERE `id` = 1;
