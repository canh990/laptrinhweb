-- 1. Lấy danh sách theo Alphabet (A->Z)
SELECT * FROM users ORDER BY user_name ASC;

-- 2. Lấy ra 07 người dùng theo Alphabet
SELECT * FROM users ORDER BY user_name ASC LIMIT 7;

-- 3. Tên Alphabet và có chữ 'a'
SELECT * FROM users WHERE user_name LIKE '%a%' ORDER BY user_name ASC;

-- 4. Tên bắt đầu bằng chữ 'm'
SELECT * FROM users WHERE user_name LIKE 'm%';

-- 5. Tên kết thúc bằng chữ 'i'
SELECT * FROM users WHERE user_name LIKE '%i';

-- 6. Email là Gmail
SELECT * FROM users WHERE user_email LIKE '%@gmail.com';

-- 7. Email Gmail và tên bắt đầu bằng 'm'
SELECT * FROM users WHERE user_email LIKE '%@gmail.com' AND user_name LIKE 'm%';

-- 8. Email Gmail, tên có chữ 'i' và dài hơn 5 ký tự
SELECT * FROM users 
WHERE user_email LIKE '%@gmail.com' 
  AND user_name LIKE '%i%' 
  AND LENGTH(user_name) > 5;

-- 9. Tên có 'a' (dài 5-9), Gmail, phần tên email có chữ 'i'
SELECT * FROM users 
WHERE user_name LIKE '%a%' 
  AND LENGTH(user_name) BETWEEN 5 AND 9
  AND user_email LIKE '%i%@gmail.com';

-- 10. Điều kiện phức hợp (OR)
SELECT * FROM users 
WHERE (user_name LIKE '%a%' AND LENGTH(user_name) BETWEEN 5 AND 9)
   OR (user_name LIKE '%i%' AND LENGTH(user_name) < 9)
   OR (user_email LIKE '%i%@gmail.com');