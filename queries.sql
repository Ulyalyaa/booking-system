SELECT r.* -- Поиск свободных переговорок на конкретное время
FROM rooms r
WHERE NOT EXISTS (
  SELECT 1 FROM bookings b
  WHERE b.room_id = r.id
    AND b.status IN ('created', 'confirmed')
    AND b.start_time < '2026-11-10 11:00:00'
    AND b.end_time   > '2026-11-10 10:00:00'
);

SELECT r.name, COUNT(b.id) AS bookings_count -- Статистика по комнатам
FROM rooms r
LEFT JOIN bookings b ON b.room_id = r.id
GROUP BY r.id, r.name
ORDER BY bookings_count DESC;

SELECT b.id, r.name AS room, b.start_time, b.end_time, b.status -- Активные брони конкретного пользователя:
FROM bookings b
JOIN rooms r ON r.id = b.room_id
WHERE b.user_id = 1
  AND b.status <> 'cancelled'
ORDER BY b.start_time;