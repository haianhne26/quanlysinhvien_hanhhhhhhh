CREATE DATABASE IF NOT EXISTS quanlysinhvien;
USE quanlysinhvien;
 
-- DO HAI ANHHHHHH


CREATE TABLE Student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL UNIQUE,
    date_of_birth DATE NOT NULL,
    sex BIT DEFAULT 1,
    phone VARCHAR(11) NOT NULL UNIQUE,
    address VARCHAR(150) NOT NULL,
    point INT NOT NULL DEFAULT 100,
    CHECK (point >= 0)
);

INSERT INTO Student (full_name, date_of_birth, sex, phone, address, point) VALUES
('Nguyen Van Nam', '2004-02-14', 1, '0935633687', 'Ha Noi', 95),
('Tran Thi Ha', '2005-05-20', 0, '0916637995','Thanh Hoa',36),
('Le Van Cuong', '2003-09-10', 1, '0912345680', 'Nam Dinh', 72),
('Pham Thi Dung', '2004-01-01', 0, '0912345681', 'Ha Noi', 66),
('Le Van Chiet', '2003-12-12', 1, '0912345682', 'Da Nang', 40),
('Hoang Thi Ha', '2004-07-08', 0, '0912345683', 'Hue', 81),
('Bui Xuan Huan', '2005-03-03', 1, '0912345684', 'Ha Noi', 55),
('Vu Thi Hanh', '2003-05-18', 0, '0912345685', 'HCM', 90),
('Ngo Van Duy', '2004-08-08', 1, '0912345686', 'HCM', 25),
('Do Nam Phong', '2005-11-11', 0, '0912345687', 'Hai Duong', 78);

UPDATE Student
SET point = 60
WHERE sex = 1;
DELETE FROM Student
WHERE point < 30;

SELECT student_id, full_name, sex, point
FROM Student;
SELECT full_name, date_of_birth, sex, point
FROM Student
WHERE point >= 80;

