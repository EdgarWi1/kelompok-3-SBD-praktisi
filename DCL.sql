# Membuat user baru
CREATE USER 'Sisfo'@'localhost' IDENTIFIED BY '2021';

# Memberikan hak akses ke user 
GRANT ALL PRIVILEGES 
ON db_praktisi
TO 'Sisfo'@'localhost';

# Memberikan akses tertentu (SELECT) kepada semua user
GRANT SELECT 
ON db_praktisi
TO '*'@'localhost';

# Cek status hak akses user
SHOW GRANTS FOR 'Sisfo'@'localhost';

# Menghapus hak akses user
REVOKE INSERT
ON db_praktisi
FROM 'Sisfo'@'localhost';

# Menghapus akses tertentu (DROP) kepada semua user
REVOKE DELETE
ON db_praktisi
FROM '*'@'localhost';

