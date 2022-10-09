# Buat user baru
CREATE USER 'Sisfo'@'localhost' IDENTIFIED BY '2021';

# Beri hak akses ke user 
GRANT ALL PRIVILEGES 
ON contract_sisfo
TO 'Sisfo'@'localhost';

# Beri akses tertentu (misal akses SELECT) kepada semua user
GRANT SELECT 
ON contract_sisfo
TO '*'@'localhost';

# Cek status hak akses user
SHOW GRANTS FOR 'Sisfo'@'localhost';

# Hapus hak akses user
REVOKE INSERT
ON contract_sisfo
FROM 'Sisfo'@'localhost';

# Hapus akses tertentu (misal akses DROP) kepada semua user
REVOKE DROP
ON contract_sisfo
FROM '*'@'localhost';

