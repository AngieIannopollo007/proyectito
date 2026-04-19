-- CURSORES
1. 
DELIMITER // 
CREATE PROCEDURE capacidad_prom_est(IN ubi_e VARCHAR(15))
BEGIN
    DECLARE  total INT;
    DECLARE cap INT;
    DECLARE acum INT;
    DECLARE i INT;  
    DECLARE prom INT;
    DECLARE fin INT DEFAULT 0; 
    DECLARE cur CURSOR FOR SELECT capacidad FROM estudio WHERE ubicacion = ubi_e;

      DECLARE CONTINUE HANDLER FOR NOT FOUND SET fin = 1;

    SET total = 0;
    SET acum = 0;
    SET i = 1;
    SET prom = 0;

    SELECT COUNT(*) INTO total FROM estudio;
    OPEN cur;
        WHILE i <= total do 
            FETCH  cur into cap;
            SET acum = acum + cap;
            SET i = i + 1;
        END WHILE;
        SET prom = acum / total;
        SELECT prom AS Promedio_capacidad;
    CLOSE cur;
    END;
    // DELIMITER ;


2. 

DELIMITER //
CREATE FUNCTION director_novelas()
RETURNS VARCHAR(500)
DETERMINISTIC
BEGIN
    DECLARE dir VARCHAR(50);
    DECLARE cant_n INT DEFAULT 0;
    DECLARE resultado VARCHAR(500) DEFAULT '';
    DECLARE done INT DEFAULT 0;

    DECLARE cur CURSOR FOR SELECT DISTINCT director FROM novelas;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;
    FETCH cur INTO dir;

    WHILE done = 0 DO
        SELECT COUNT(*) INTO cant_n FROM novelas WHERE director = dir;
        SET resultado = CONCAT(resultado, '|', dir, '', cant_n, ' novelas| \n');
        FETCH cur INTO dir;
    END WHILE;

    CLOSE cur;
    RETURN resultado;
END;
//
DELIMITER ;


-- III FUNCIONES ALMACENADAS

DELIMITER // 
    CREATE FUNCTION cant_invitados_periodistas()
    RETURNS INT
    DETERMINISTIC
    BEGIN
        DECLARE total INT;
        SELECT COUNT(id_invitados) INTO total
        FROM invitados WHERE profesion LIKE 'periodista' ;
        RETURN total;
    END ; // 
    DELIMITER ;

    DELIMITER //
    CREATE FUNCTION nombres_director_novelas(
        id_can int
    )
    RETURNS VARCHAR(500)
    DETERMINISTIC
    BEGIN

        DECLARE nombre VARCHAR(50);
        DECLARE reparto VARCHAR(50);
        DECLARE director VARCHAR(50);

        SELECT N.nombre, N.reparto, N.director INTO nombre, reparto, director 
        FROM novelas N WHERE N.id_novelas = id_can;

        RETURN CONCAT(nombre, '|' , director, '|' , reparto);
    END; //
    DELIMITER ;

// ALTER TABLE programas DROP FOREIGN KEY fk_programas;
ALTER TABLE programas
ADD CONSTRAINT fk_programas
FOREIGN KEY (id_estudio)
REFERENCES estudio(id_estudio)
ON DELETE SET NULL;

-- CANAL → PROGRAMA
ALTER TABLE canal DROP FOREIGN KEY fk_canal_programa;
ALTER TABLE canal
ADD CONSTRAINT fk_canal_programa
FOREIGN KEY (id_programa)
REFERENCES programas(id_programa)
ON DELETE CASCADE;

-- CANAL → NOVELAS
ALTER TABLE canal DROP FOREIGN KEY fk_canal_novela;
ALTER TABLE canal
ADD CONSTRAINT fk_canal_novela
FOREIGN KEY (id_novelas)
REFERENCES novelas(id_novelas)
ON DELETE CASCADE;

-- EPISODIOS → NOVELAS
ALTER TABLE episodios DROP FOREIGN KEY fk_novelas;
ALTER TABLE episodios
ADD CONSTRAINT fk_novelas
FOREIGN KEY (id_novelas)
REFERENCES novelas(id_novelas)
ON DELETE CASCADE;

-- INVITADOS → PROGRAMA
ALTER TABLE invitados DROP FOREIGN KEY fk_programa;
ALTER TABLE invitados
ADD CONSTRAINT fk_programa
FOREIGN KEY (id_programa)
REFERENCES programas(id_programa)
ON DELETE SET NULL; //

--II PROCEDIMIENTOS ALMACENADOS CON Y SIN PARÁMETROS.

-- CON PARÁMETROS
--1.1
DELIMITER // 
CREATE PROCEDURE registrar_invitados(
    IN id_invitados1 INT,
    IN nombre1 VARCHAR(10),
    IN apellido1 VARCHAR(10),
    IN profesion1 VARCHAR(15),
    IN id_programa1 INT)
    BEGIN
        INSERT INTO invitados (id_invitados, nombre, apellido, profesion, id_programa)
        VALUES (id_invitados1, nombre1, apellido1, profesion1, id_programa1);
    END;
    // DELIMITER ;

    
--1.2
DELIMITER //
CREATE PROCEDURE eliminar_novela(
    IN id_borrar INT)
BEGIN 
    DELETE  FROM novelas WHERE id_novelas = id_borrar;
    SELECT 'Fila(s) eliminada(s) correctamente.' AS mensaje; 
    END; //
    DELIMITER ;

    -SIN PARAMETROS
--2.1
DELIMITER // 
CREATE PROCEDURE atrasar_novelas()
    BEGIN
    UPDATE novelas
    SET 
        horario_ini = MAKETIME(HOUR(horario_ini) - 1, MINUTE(horario_ini), SECOND(horario_ini)),
        horario_fin = MAKETIME(HOUR(horario_fin) - 1, MINUTE(horario_fin), SECOND(horario_fin));
    END; 
    // DELIMITER ;

    --2.2
DELIMITER //
CREATE PROCEDURE borrar_programas_cancelados()
BEGIN
    DELETE FROM programas
    WHERE estado LIKE 'cancelado';
END;
//
DELIMITER ;

