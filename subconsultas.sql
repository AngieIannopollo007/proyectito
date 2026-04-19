-- Muestra  el nombre y el horario de los programas que tengan el mismo id en la tabla canal, en el canal 7:

SELECT P.nombre AS NOMBRE_PROGRAMA, P.horario_inicio AS HORARIO_INICIO_PROGRAMA, C.id_canal AS CANAL
FROM programas P, canal C
WHERE P.id_programa IN (SELECT id_programa FROM canal) 
AND C.id_canal = 7
ORDER BY horario_inicio ASC;

--Muestra el nombre, el número de episodios y el número de temporadas de las novelas, se verifica si se
-- encuentra el id de novelas en la tabla temporadas se encuentra en las novelas y en la subconsulta muestra las novelas que se encuentren entre el horario de las 19:00 y 21:00 hs.

SELECT N.nombre AS NOMBRE_NOVELA, E.nro_epis AS NUMERO_EPISODIOS, E.temporadas AS TEMPORADAS
FROM novelas N, episodios E
WHERE N.id_novelas IN (
    SELECT id_novelas
    FROM novelas
    WHERE horario_ini BETWEEN '19:00:00' AND '21:00:00');