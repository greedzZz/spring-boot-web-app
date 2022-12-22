INSERT INTO systems
VALUES ('Система Дантуин', 8, 2, true),
       ('Система Кристоф', 2, 1, true),
       ('Система Рилот', 3, 2, true),
       ('Система Камино', 13, 2, true),
       ('Система Джеонозис', 6, 1, true),
       ('Система Тату', 3, 3, false),
       ('Система Мустафар', 6, 1, false),
       ('Система Мандалор', 9, 3, false),
       ('Система Кашиик', 8, 2, true),
       ('Система Фелуция', 8, 2, false),
       ('Система Корусант', 11, 2, true),
       ('Система Набу', 6, 1, true),
       ('Система Альдераан', 5, 2, true);

INSERT INTO planets
VALUES ('Дантуин', true, 2, 9830, true, 'Система Дантуин'),
       ('Кристофсис', true, 1, 9465, true, 'Система Кристоф'),
       ('Рилот', true, 5, 10600, true, 'Система Рилот'),
       ('Камино', true, 3, 19270, true, 'Система Камино'),
       ('Джеонозис', true, 15, 11370, true, 'Система Джеонозис'),
       ('Татуин', true, 3, 10465, false, 'Система Тату'),
       ('Мустафар', true, 0, 4200, false, 'Система Мустафар'),
       ('Мандалор', true, 2, 9200, false, 'Система Мандалор'),
       ('Кашиик', true, 3, 12765, true, 'Система Кашиик'),
       ('Фелуция', true, 2, 9100, false, 'Система Фелуция'),
       ('Корусант', true, 4, 12240, true, 'Система Корусант'),
       ('Набу', true, 3, 12120, true, 'Система Набу'),
       ('Альдераан', true, 1, 12500, true, 'Система Альдераан');

INSERT INTO battles
VALUES (1, 'Битва при Дантуине', '0022-04-17', true, false, 4275, 42, 'Дантуин'),
       (2, 'Битва при Кристофсисе', '0022-02-08', true, true, 93844, 1065, 'Кристофсис'),
       (3, 'Битва при Рилоте', '0022-03-06', true, true, 31096, 183, 'Рилот'),
       (4, 'Первая битва при Камино', '0022-02-26', true, true, 2011, 30, 'Камино'),
       (5, 'Вторая битва при Камино', '0021-08-02', true, true, 36749, 215, 'Камино'),
       (6, 'Первая битва на Джеонозисе', '0022-01-01', true, true, 81970, 837, 'Джеонозис'),
       (7, 'Вторая битва на Джеонозисе', '0022-02-15', true, true, 79087, 821, 'Джеонозис'),
       (8, 'Битва за Кашиик', '0019-12-30', true, true, 25389, 161, 'Кашиик'),
       (9, 'Битва при Фелуции', '0019-12-31', true, false, 8776, 93, 'Фелуция');

INSERT INTO armies
VALUES (1, 'Первая армия', 'Система Корусант'),
       (2, 'Вторая армия', 'Система Камино'),
       (3, 'Третья армия', 'Система Набу'),
       (4, 'Четвертая армия', 'Система Альдераан'),
       (5, 'Пятая армия', 'Система Дантуин'),
       (6, 'Шестая армия', 'Система Кристоф'),
       (7, 'Седьмая армия', 'Система Рилот'),
       (8, 'Восьмая армия', 'Система Кашиик'),
       (9, 'Девятая армия', null),
       (10, 'Десятая армия', null);

INSERT INTO regiments
VALUES (1, '1 полк', 1, 'Корусант'),
       (2, '2 полк', 1, null),
       (3, '3 полк', 2, 'Камино'),
       (4, '4 полк', 2, null),
       (5, '5 полк', 3, 'Набу'),
       (6, '6 полк', 3, null),
       (7, '7 полк', 4, 'Альдераан'),
       (8, '8 полк', 4, null),
       (9, '9 полк', 5, 'Дантуин'),
       (10, '10 полк', 5, null),
       (11, '11 полк', 6, 'Кристофсис'),
       (12, '12 полк', 6, null),
       (13, '13 полк', 7, 'Рилот'),
       (14, '14 полк', 7, null),
       (15, '15 полк', 8, 'Кашиик'),
       (16, '16 полк', 8, null),
       (17, '17 полк', 9, null),
       (18, '18 полк', 9, null),
       (19, '19 полк', 10, null),
       (20, '20 полк', 10, null);

INSERT INTO squads
VALUES (1, '1 отряд', false, 1),
       (2, '2 отряд', true, 1),
       (3, '3 отряд', false, 2),
       (4, '4 отряд', true, 2),
       (5, '5 отряд', false, 3),
       (6, '6 отряд', true, 3),
       (7, '7 отряд', false, 4),
       (8, '8 отряд', true, 4),
       (9, '9 отряд', false, 5),
       (10, '10 отряд', true, 5),
       (11, '11 отряд', false, 6),
       (12, '12 отряд', true, 6),
       (13, '13 отряд', false, 7),
       (14, '14 отряд', true, 7),
       (15, '15 отряд', false, 8),
       (16, '16 отряд', true, 8),
       (17, '17 отряд', false, 9),
       (18, '18 отряд', true, 9),
       (19, '19 отряд', false, 10),
       (20, '20 отряд', true, 10),
       (21, '21 отряд', false, 11),
       (22, '22 отряд', true, 11),
       (23, '23 отряд', false, 12),
       (24, '24 отряд', true, 12),
       (25, '25 отряд', false, 13),
       (26, '26 отряд', true, 13),
       (27, '27 отряд', false, 14),
       (28, '28 отряд', true, 14),
       (29, '29 отряд', false, 15),
       (30, '30 отряд', true, 15),
       (31, '31 отряд', false, 16),
       (32, '32 отряд', true, 16),
       (33, '33 отряд', false, 17),
       (34, '34 отряд', true, 17),
       (35, '35 отряд', false, 18),
       (36, '36 отряд', true, 18),
       (37, '37 отряд', false, 19),
       (38, '38 отряд', true, 19),
       (39, '39 отряд', false, 20),
       (40, '40 отряд', true, 20);

INSERT INTO clones
VALUES (1, null, '0032-01-01', 1, 1),
       (2, null, '0032-01-01', 1, 1),
       (3, null, '0032-01-01', 1, 1),
       (4, null, '0032-01-01', 1, 2),
       (5, null, '0032-01-01', 1, 2),
       (6, null, '0032-01-01', 1, 2),
       (7, null, '0032-01-01', 1, 3),
       (8, null, '0032-01-01', 1, 3),
       (9, null, '0032-01-01', 1, 3),
       (10, null, '0032-01-01', 1, 4),
       (11, null, '0032-01-01', 1, 4),
       (12, null, '0032-01-01', 1, 4),
       (13, null, '0032-01-01', 1, 5),
       (14, null, '0032-01-01', 1, 5),
       (15, null, '0032-01-01', 1, 5),
       (16, null, '0032-01-01', 1, 6),
       (17, null, '0032-01-01', 1, 6),
       (18, null, '0032-01-01', 1, 6),
       (19, null, '0032-01-01', 1, 7),
       (20, null, '0032-01-01', 1, 7),
       (21, null, '0032-01-01', 1, 7),
       (22, null, '0032-01-01', 1, 8),
       (23, null, '0032-01-01', 1, 8),
       (24, null, '0032-01-01', 1, 8),
       (25, null, '0032-01-01', 1, 9),
       (26, null, '0032-01-01', 1, 9),
       (27, null, '0032-01-01', 1, 9),
       (28, null, '0032-01-01', 1, 10),
       (29, null, '0032-01-01', 1, 10),
       (30, null, '0032-01-01', 1, 10),
       (31, null, '0032-01-01', 1, 11),
       (32, null, '0032-01-01', 1, 11),
       (33, null, '0032-01-01', 1, 11),
       (34, null, '0032-01-01', 1, 12),
       (35, null, '0032-01-01', 1, 12),
       (36, null, '0032-01-01', 1, 12),
       (37, null, '0032-01-01', 1, 13),
       (38, null, '0032-01-01', 1, 13),
       (39, null, '0032-01-01', 1, 13),
       (40, null, '0032-01-01', 1, 14),
       (41, null, '0032-01-01', 1, 14),
       (42, null, '0032-01-01', 1, 14),
       (43, null, '0032-01-01', 1, 15),
       (44, null, '0032-01-01', 1, 15),
       (45, null, '0032-01-01', 1, 15),
       (46, null, '0032-01-01', 1, 16),
       (47, null, '0032-01-01', 1, 16),
       (48, null, '0032-01-01', 1, 16),
       (49, null, '0032-01-01', 1, 17),
       (50, null, '0032-01-01', 1, 17),
       (51, null, '0032-01-01', 1, 17),
       (52, null, '0032-01-01', 1, 18),
       (53, null, '0032-01-01', 1, 18),
       (54, null, '0032-01-01', 1, 18),
       (55, null, '0032-01-01', 1, 19),
       (56, null, '0032-01-01', 1, 19),
       (57, null, '0032-01-01', 1, 19),
       (58, null, '0032-01-01', 1, 20),
       (59, null, '0032-01-01', 1, 20),
       (60, null, '0032-01-01', 1, 20),
       (61, null, '0032-02-01', 2, 21),
       (62, null, '0032-02-01', 2, 21),
       (63, null, '0032-02-01', 2, 21),
       (64, null, '0032-02-01', 2, 22),
       (65, null, '0032-02-01', 2, 22),
       (66, null, '0032-02-01', 2, 22),
       (67, null, '0032-02-01', 2, 23),
       (68, null, '0032-02-01', 2, 23),
       (69, null, '0032-02-01', 2, 23),
       (70, null, '0032-02-01', 2, 24),
       (71, null, '0032-02-01', 2, 24),
       (72, null, '0032-02-01', 2, 24),
       (73, null, '0032-02-01', 2, 25),
       (74, null, '0032-02-01', 2, 25),
       (75, null, '0032-02-01', 2, 25),
       (76, null, '0032-02-01', 2, 26),
       (77, null, '0032-02-01', 2, 26),
       (78, null, '0032-02-01', 2, 26),
       (79, null, '0032-02-01', 2, 27),
       (80, null, '0032-02-01', 2, 27),
       (81, null, '0032-02-01', 2, 27),
       (82, null, '0032-02-01', 2, 28),
       (83, null, '0032-02-01', 2, 28),
       (84, null, '0032-02-01', 2, 28),
       (85, null, '0032-02-01', 2, 29),
       (86, null, '0032-02-01', 2, 29),
       (87, null, '0032-02-01', 2, 29),
       (88, null, '0032-02-01', 2, 30),
       (89, null, '0032-02-01', 2, 30),
       (90, null, '0032-02-01', 2, 30),
       (91, null, '0032-02-01', 2, 31),
       (92, null, '0032-02-01', 2, 31),
       (93, null, '0032-02-01', 2, 31),
       (94, null, '0032-02-01', 2, 32),
       (95, null, '0032-02-01', 2, 32),
       (96, null, '0032-02-01', 2, 32),
       (97, null, '0032-02-01', 2, 33),
       (98, null, '0032-02-01', 2, 33),
       (99, null, '0032-02-01', 2, 33),
       (100, null, '0032-02-01', 2, 34),
       (101, null, '0032-02-01', 2, 34),
       (102, null, '0032-02-01', 2, 34),
       (103, null, '0032-02-01', 2, 35),
       (104, null, '0032-02-01', 2, 35),
       (105, null, '0032-02-01', 2, 35),
       (106, null, '0032-02-01', 2, 36),
       (107, null, '0032-02-01', 2, 36),
       (108, null, '0032-02-01', 2, 36),
       (109, null, '0032-02-01', 2, 37),
       (110, null, '0032-02-01', 2, 37),
       (111, null, '0032-02-01', 2, 37),
       (112, null, '0032-02-01', 2, 38),
       (113, null, '0032-02-01', 2, 38),
       (114, null, '0032-02-01', 2, 38),
       (115, null, '0032-02-01', 2, 39),
       (116, null, '0032-02-01', 2, 39),
       (117, null, '0032-02-01', 2, 39),
       (118, null, '0032-02-01', 2, 40),
       (119, null, '0032-02-01', 2, 40),
       (120, null, '0032-02-01', 2, 40);

INSERT INTO commanders
VALUES (1, 'Оливер', '0032-01-01', 1, 1),
       (2, 'Джек', '0032-01-01', 1, 2),
       (3, 'Гарри', '0032-01-01', 1, 3),
       (4, 'Джейкоб', '0032-01-01', 1, 4),
       (5, 'Чарли', '0032-01-01', 1, 5),
       (6, 'Томас', '0032-01-01', 1, 6),
       (7, 'Джордж', '0032-01-01', 1, 7),
       (8, 'Оскар', '0032-01-01', 1, 8),
       (9, 'Джеймс', '0032-01-01', 1, 9),
       (10, 'Уильям', '0032-01-01', 1, 10),
       (11, 'Ноа', '0032-01-01', 1, 11),
       (12, 'Лиам', '0032-01-01', 1, 12),
       (13, 'Мэйсон', '0032-01-01', 1, 13),
       (14, 'Итан', '0032-01-01', 1, 14),
       (15, 'Майкл', '0032-01-01', 1, 15),
       (16, 'Адриан', '0032-01-01', 1, 16),
       (17, 'Эндрю', '0032-01-01', 1, 17),
       (18, 'Энтони', '0032-01-01', 1, 18),
       (19, 'Артур', '0032-01-01', 1, 19),
       (20, 'Остин', '0032-01-01', 1, 20),
       (21, 'Брайан', '0032-02-01', 2, 21),
       (22, 'Карл', '0032-02-01', 2, 22),
       (23, 'Кристиан', '0032-02-01', 2, 23),
       (24, 'Клинтон', '0032-02-01', 2, 24),
       (25, 'Клиффорд', '0032-02-01', 2, 25),
       (26, 'Дэниел', '0032-02-01', 2, 26),
       (27, 'Дональд', '0032-02-01', 2, 27),
       (28, 'Дерек', '0032-02-01', 2, 28),
       (29, 'Эдвард', '0032-02-01', 2, 29),
       (30, 'Эллиот', '0032-02-01', 2, 30),
       (31, 'Гарет', '0032-02-01', 2, 31),
       (32, 'Гарольд', '0032-02-01', 2, 32),
       (33, 'Гарри', '0032-02-01', 2, 33),
       (34, 'Хьюи', '0032-02-01', 2, 34),
       (35, 'Джаспер', '0032-02-01', 2, 35),
       (36, 'Джон', '0032-02-01', 2, 36),
       (37, 'Кит', '0032-02-01', 2, 37),
       (38, 'Курт', '0032-02-01', 2, 38),
       (39, 'Кайл', '0032-02-01', 2, 39),
       (40, 'Лоренс', '0032-02-01', 2, 40);

INSERT INTO colonels
VALUES (1, 'Рекс', '0032-01-01', 1, 1),
       (2, 'Коуди', '0032-01-01', 1, 2),
       (3, 'Эхо', '0032-01-01', 1, 3),
       (4, 'Файвз', '0032-01-01', 1, 4),
       (5, 'Джесси', '0032-01-01', 1, 5),
       (6, 'Лестер', '0032-01-01', 1, 6),
       (7, 'Маркус', '0032-01-01', 1, 7),
       (8, 'Лукас', '0032-01-01', 1, 8),
       (9, 'Мартин', '0032-01-01', 1, 9),
       (10, 'Майлз', '0032-01-01', 1, 10),
       (11, 'Нэйтен', '0032-02-01', 2, 11),
       (12, 'Норман', '0032-02-01', 2, 12),
       (13, 'Сэм', '0032-02-01', 2, 13),
       (14, 'Саймон', '0032-02-01', 2, 14),
       (15, 'Стивен', '0032-02-01', 2, 15),
       (16, 'Трэвис', '0032-02-01', 2, 16),
       (17, 'Уолтер', '0032-02-01', 2, 17),
       (18, 'Уэйн', '0032-02-01', 2, 18),
       (19, 'Билли', '0032-02-01', 2, 19),
       (20, 'Тобиас', '0032-02-01', 2, 20);

INSERT INTO jedi
VALUES (1, 'Мейс Винду', 'человек', true, 1),
       (2, 'Шаак Ти', 'тогрут', false, 2),
       (3, 'Кит Фисто', 'нутоланин', true, 3),
       (4, 'Пло Кун', 'кел-дор', true, 4),
       (5, 'Ади Галлия', 'толотианин', false, 5),
       (6, 'Луминара Ундули', 'мариаланин', false, 6),
       (7, 'Квинлан Вос', 'киффар', true, 7),
       (8, 'Йода', 'неизвестно', true, 8),
       (9, 'Энакин Скайуокер', 'человек', true, 9),
       (10, 'Оби-Ван Кеноби', 'человек', true, 10);

INSERT INTO vehicles
VALUES (1, 'LAAT', 'i', 1, 1),
       (2, 'LAAT', 'i', 2, 3),
       (3, 'LAAT', 'i', 3, 5),
       (4, 'LAAT', 'i', 4, 7),
       (5, 'LAAT', 'i', 5, 9),
       (6, 'AT', 'AP', 6, 11),
       (7, 'AT', 'AP', 7, 13),
       (8, 'AT', 'AP', 8, 15),
       (9, 'AT', 'AP', 9, 17),
       (10, 'AT', 'AP', 10, 19),
       (11, 'AT', 'RT', 11, 21),
       (12, 'AT', 'RT', 12, 23),
       (13, 'AT', 'RT', 13, 25),
       (14, 'AT', 'RT', 14, 27),
       (15, 'AT', 'RT', 15, 29),
       (16, 'AT', 'TE', 16, 31),
       (17, 'AT', 'TE', 17, 33),
       (18, 'AT', 'TE', 18, 35),
       (19, 'AT', 'TE', 19, 37),
       (20, 'AT', 'TE', 20, 39);

INSERT INTO battle_participation
VALUES (9, 1),
       (10, 1),
       (2, 1),
       (11, 2),
       (12, 2),
       (17, 2),
       (18, 2),
       (19, 2),
       (20, 2),
       (13, 3),
       (14, 3),
       (3, 4),
       (4, 4),
       (17, 4),
       (18, 4),
       (19, 4),
       (20, 4),
       (3, 5),
       (4, 5),
       (17, 5),
       (18, 5),
       (19, 5),
       (20, 5),
       (2, 6),
       (17, 6),
       (18, 6),
       (19, 6),
       (20, 6),
       (2, 7),
       (17, 7),
       (18, 7),
       (19, 7),
       (20, 7),
       (15, 8),
       (16, 8),
       (6, 9);
