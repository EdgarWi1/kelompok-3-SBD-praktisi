-- membuat database
CREATE DATABASE praktisi;

-- membuat tabel mahasiswa
CREATE TABLE students (
   id INT,
   full_name VARCHAR (255),
   address VARCHAR (255),
   major VARCHAR (255),
   PRIMARY KEY (id)
);

-- membuat tabel matkul
CREATE TABLE course (
   id INT,
   name VARCHAR (255),
   duration INT,
   PRIMARY KEY (id)
);

-- membuat tabel jadwal
CREATE TABLE schedule (
   id INT,
   course_id INT,
   date DATE,
   time TIMESTAMP,
   PRIMARY KEY (id),
   FOREIGN KEY (course_id) REFERENCES course(id)
);

-- membuat tabel tambahan untuk menghubungkan antara mahasiswa dan matkul yang diambil
CREATE TABLE students_schedule (
   student_id INT,
   schedule_id INT,
   FOREIGN KEY (student_id) REFERENCES students(id),
   FOREIGN KEY (schedule_id) REFERENCES schedule(id)
);

-- masukkan data mahasiswa
INSERT INTO students (id, full_name, address, major) VALUES 
(1, 'Rafiq', 'Sudiang', 'Sistem Informasi'),
(2, 'Edgar', 'Antang', 'Sistem Informasi'),
(3, 'Aflah', 'Toddopuli', 'Sistem Informasi'),
(4, 'Kahfi', 'BTP', 'Sistem Informasi'),
(5, 'Akku', 'Takalar', 'Sistem Informasi'),
(6, 'Arjuna', 'Makassar', 'Sistem Informasi'),
(7, 'Dewa', 'Makassar', 'Sistem Informasi'),
(8, 'Fadilah', 'Makassar', 'Sistem Informasi');
SELECT * FROM students;

-- masukkan data matkul
INSERT INTO course (id, name, duration) 
VALUES (1, 'SBD', 90), (2, 'WEB', 90), (3, 'Diskrit', 90), (4, 'Struktur Data', 90), (5, 'Analisis', 90);
SELECT * FROM course;

-- masukkan data jadwal matkul
INSERT INTO schedule (id, course_id, date, TIME) 
VALUES (1, 1, '2022-10-10', '2022-10-10 20:00:00'), (2, 2, '2022-10-13', '2022-10-13 20:00:00'), (3, 3, '2022-10-11', '2022-10-11 10:10:00'),
(4, 4, '2022-10-11', '2022-10-11 07:30:00'), (5, 5, '2022-10-12', '2022-10-12 10:10:00');
SELECT * FROM schedule;

-- masukkan data mahasiswa ambil matkul apa saja
-- diasumsikan mahasiswa mengambil semua matkul yang tersedia
INSERT INTO students_schedule VALUES (1, 1), (1, 2), (1, 3), (1, 4), (1, 5),
(2, 1), (2, 2), (2, 3), (2, 4), (2, 5),
(3, 1), (3, 2), (3, 3), (3, 4), (3, 5),
(4, 1), (4, 2), (4, 3), (4, 4), (4, 5),
(5, 1), (5, 2), (5, 3), (5, 4), (5, 5),
(6, 1), (6, 2), (6, 3), (6, 4), (6, 5),
(7, 1), (7, 2), (7, 3), (7, 4), (7, 5),
(8, 1), (8, 2), (8, 3), (8, 4), (8, 5);
SELECT * FROM students_schedule;

-- menghubungkan id dari tabel student, schedule, dan course
SELECT s.id, s.full_name, c.name, sc.date, sc.time FROM students_schedule AS ss
INNER JOIN schedule AS sc ON ss.schedule_id = sc.id
INNER JOIN course AS c ON c.id = sc.course_id
INNER JOIN students AS s ON ss.student_id = s.id;