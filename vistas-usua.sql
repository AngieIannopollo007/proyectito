-- 1
CREATE VIEW estudio_programas AS 
        SELECT E.id_estudio, E.ubicacion, P.nombre, P.conductor, P.horario_inicio
        FROM estudio E JOIN programas P 
        ON E.id_estudio = P.id_estudio
        ORDER BY E.id_estudio ASC;
-- 2
CREATE VIEW episodios_novelas as 
     SELECT N.nombre, N.reparto, N.horario_ini, E.nro_epis, E.temporadas 
     FROM novelas N JOIN episodios E ON N.id_novelas = E.id_novelas
     ORDER BY  N.nombre ASC;

     -- V
-- USUARIOS  y privilegios
-- Este usuario1 con contraseña 1234, tiene el acceeso local desde el propio servidor(localHost).
CREATE USER 'Usuario1' IDENTIFIED BY '1234';
GRANT USAGE ON *.* TO 'Usuario1'@localhost IDENTIFIED BY '1234';

-- Permitimos el acceso de cualquier otra máquina que tenga acceso al servidor mysql desde la red.
CREATE USER 'Usuario2' IDENTIFIED BY '4567';
GRANT USAGE ON *.* TO 'Usuario2'@'%' IDENTIFIED BY '4567';  

-- Permitimos todos los privilrgios sobre la base de datos al usuario3
CREATE USER 'Usuario3' IDENTIFIED BY '7891';
GRANT ALL privileges ON 'canaldetelevision'.* TO 'Usuario3'@localhost;

-- Este usuario tiene todos los privilegios sobre la base de datos y puede conetarse desde cualquier lugar
CREATE USER 'Usuario4' IDENTIFIED BY '1598';
GRANT ALL privileges ON 'canaldetelevision'.* TO 'Usuario4'@'%'; 
