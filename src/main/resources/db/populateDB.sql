DELETE FROM user_roles;
DELETE FROM users;
ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO users (name, email, password)
VALUES ('User', 'user@yandex.ru', 'password'),
       ('Admin', 'admin@gmail.com', 'admin'),
       ('Guest', 'guest@gmail.com', 'guest');

INSERT INTO user_roles (role, user_id)
VALUES ('USER', 100000),
       ('ADMIN', 100001);

INSERT INTO meals (date_time, description, calories, user_id)
VALUES ('2020-01-30 10:00:00', 'завтрак', 500, 100000),
       ('2020-01-30 13:00:00', 'обед', 1000, 100000),
       ('2020-01-30 20:00:00', 'ужин', 500, 100000),
       ('2020-01-31 00:00:00', 'еда на граничное значение', 100, 100000),
       ('2020-01-31 10:00:00', 'завтрак', 500, 100000),
       ('2020-01-31 13:00:00', 'обед', 1000, 100000),
       ('2020-01-31 20:00:00', 'ужин', 510, 100000),
       ('2020-01-31 14:00:00', 'админ ланч', 510, 100001),
       ('2020-01-31 21:00:00', 'админ ужин', 1500, 100001);