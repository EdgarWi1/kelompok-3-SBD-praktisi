CREATE DATABASE praktisi;

USE praktisi;

#Buat Tabel Mahasiswa

CREATE TABLE mahasiswa (
	id_mahasiswa INT(10) AUTO_INCREMENT PRIMARY KEY,
	full_name VARCHAR(100),
	address VARCHAR(100) NOT NULL,
	major VARCHAR(100) NOT NULL
);

#Buat Tabel Matkul

CREATE TABLE matkul (
	id_matkul INT(10) AUTO_INCREMENT PRIMARY KEY,
	nama VARCHAR(100),
	durasi INT(10) DEFAULT 0
);  

#buat tabel jadwal


# ntah kenapa ga jalan
-- CREATE TABLE jadwal (
-- 	id_jadwal INT(10) AUTO_INCREMENT PRIMARY KEY,
-- 	tanggal DATE NOT NULL,
-- 	jam TIME NOT NULL,
-- 	FOREIGN KEY (id_matkul) REFERENCES matkul(id_matkul),
-- 	FOREIGN KEY (id_mahasiswa) REFERENCES mahasiswa(id_mahasiswa)
-- );
