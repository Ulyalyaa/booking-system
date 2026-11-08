INSERT INTO users (full_name, email) VALUES
 ('Иванов Иван Иванович', 'ivan@example.com'),
 ('Маринина Марина Мариновна', 'marina@example.com'),
 ('Борисов Борис Борисович', 'boris@example.com'),
 ('Милантьева Ульяна Александровна', 'ulyana@example.com');

INSERT INTO rooms (name, capacity, floor) VALUES
 ('Переговорка А', 4, 2),
 ('Переговорка Б', 8, 3),
 ('Переговорка В', 12, 3);

INSERT INTO bookings (room_id, user_id, start_time, end_time, status) VALUES
 (1, 1, '2026-11-10 10:00:00', '2026-11-10 11:00:00', 'confirmed'),
 (2, 2, '2026-11-10 10:00:00', '2026-11-10 12:00:00', 'created'),
 (1, 2, '2026-11-11 09:00:00', '2026-11-11 10:00:00', 'cancelled');