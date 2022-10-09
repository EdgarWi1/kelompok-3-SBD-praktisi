# Buat user baru
CREATE USER 'Sisfo'@'localhost' IDENTIFIED BY '2021';

# Beri hak akses ke user 
GRANT ALL PRIVILEGES 
ON db_praktisi
TO 'Sisfo'@'localhost';

# Beri akses tertentu (misal akses SELECT) kepada semua user
GRANT SELECT 
ON db_praktisi
TO '*'@'localhost';

# Cek status hak akses user
SHOW GRANTS FOR 'Sisfo'@'localhost';

# Hapus hak akses user
REVOKE INSERT
ON db_praktisi
FROM 'Sisfo'@'localhost';

# Hapus akses tertentu (misal akses DROP) kepada semua user
REVOKE DROP
ON db_praktisi
FROM '*'@'localhost';

