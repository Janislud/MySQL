-- 1. Завершить создание БД streaming.

CREATE TABLE streams (                  
    strean_id INT,
    create_at TIMESTAMP,
    title VARCHAR(32),
    author_id INT,
    is_completed BOOL
);
CREATE TABLE users (
    user_id INT,
    create_at TIMESTAMP,
    username VARCHAR(32),
    country VARCHAR(32),
    is_completed BOOL
);
CREATE TABLE reaction (
    reaction_id INT,
    create_at TIMESTAMP,
    author_id  INT,
    stream_id INT,
    value BOOL
);
CREATE TABLE donations (
    donation_id INT,
    create_at TIMESTAMP,
    stream_id  INT,
    donator_id INT,
    amout floot
);

-- 2.Наполнить каждую из таблиц БД streaming несколькими записями.

INSERT INTO users (user_id,create_at,username,country,is_blocked) VALUES (1,"2023-01-08 13:43:30","Hacker","Libya",1);

-- 3.Вывести данные о стримах (проекция: названиестрима, имя автора_стрима)
SELECT 
	streams.title,
    streams.author_id
FROM streams
LEFT JOIN users ON streams.strean_id=users.user_id
WHERE
	users.user_id

-- 4.Вывести юзеров, у которых отсутствуют стримы.

SELECT 
	users.username,
    users.user_id
FROM users
LEFT JOIN streams ON users.user_id=streams.strean_id
WHERE
users.username IS NULL;