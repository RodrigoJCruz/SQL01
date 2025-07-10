---- fazendo o backup do banco (ajustar o local caso necessario)

----C:\Users\integral\Desktop\SQL Rodrigo\Backups

backup database bd_16_byciclon
TO DISK = 'C:\Users\integral\Desktop\SQL Rodrigo\Backups\bd_16_byciclon_10_07_2025.BAK'
WITH FORMAT,
	MEDIANAME= 'bd_16_byciclon_BACKUP',
	NAME = 'Full Backup do BD Byciclon'


	--- Restaurar o backup feito anteriormente

	RESTORE DATABASE bd_16_byciclon
	FROM DISK = 'C:\Users\integral\Desktop\SQL Rodrigo\Backups.BAK'
	WITH REPLACE


