# Membuat database
CREATE DATABASE praktisi;


-- DDL --


# Menggunakan database tersebut
USE praktisi;


# Membuat tabel mahasiswa
CREATE TABLE students (
   id INT,
   full_name VARCHAR (200),
   address VARCHAR (200),
   major VARCHAR (200),
   PRIMARY KEY (id)
   );


# membuat tabel mata kuliah
CREATE TABLE course (
   id INT,
   name VARCHAR (200),
   duration INT,
   PRIMARY KEY (id)
);


# Membuat tabel jadwal mata kuliah
CREATE TABLE schedule (
   id INT,
   course_id INT,
   date DATE,
   time TIMESTAMP,
   PRIMARY KEY (id),
   FOREIGN KEY (course_id) REFERENCES course(id)
);


# Membuat tabel mahasiswa dengan mata kuliah yang diambil
CREATE TABLE students_schedule (
   student_id INT,
   schedule_id INT,
   FOREIGN KEY (student_id) REFERENCES students(id),
   FOREIGN KEY (schedule_id) REFERENCES schedule(id)
);


