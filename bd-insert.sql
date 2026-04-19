INSERT INTO novelas (ID_Novelas, nombre, reparto, Horario_Ini, Horario_Fin, director, estreno)
VALUES
(201, 'Pasion Eterna', 'Maria López, Juan Torres, Sofía Diaz', '11:00:00', '12:00:00', 'Carlos Perez', '2024-11-01'),
(202, 'La Otra Cara', 'Luis Ramirez, Ana Suarez, Miguel Vega', '18:00:00', '19:00:00', 'Laura Ruiz', '2024-11-05'),
(203, 'Sueños Perdidos', 'Elena Torres, Mario Silva, Rosa Fernandez', '19:00:00', '20:00:00', 'Jorge Luna', '2024-11-10'),
(204, 'Corazones de Fuego', 'Gabriela Ortiz, Sergio Morales, Camila Leon', '20:00:00', '21:00:00', 'Fernando Gil', '2024-11-15'),
(205, 'La Sombra del Amor', 'Lucas Perez, Clara Gomez, Diego Luna', '21:00:00', '22:00:00', 'Ana Beltran', '2024-11-20'),
(206, 'Amores Cruzados', 'Lucas Perez, Ana Torres, Diego Luna', '09:00:00', '10:00:00', 'Laura Diaz', '2024-11-12'),
(207, 'Almas Perdidas', 'Luis Fernandez, Clara Gómez, Miguel Vega', '00:00:00', '01:00:00', 'Carlos Ruiz', '2024-11-18'),
(208, 'Sueños Rotos', 'Sofía Ramirez, Pedro Lopez, Elena Diaz', '05:00:00', '06:00:00', 'Jorge Saenz', '2024-11-19'),
(209, 'Corazones de Hierro', 'Gabriela Ortiz, Mario Silva, Rosa Leon', '17:00:00', '18:00:00', 'Fernando Gil', '2024-11-20'),
(210, 'La Verdad Oculta', 'Luis Torres, Camila Rodriguez, Sergio Morales', '08:00:00', '09:00:00', 'Ana Beltran', '2024-11-21'),
(211, 'Destino Cruzado', 'Camila Leon, Diego Luna, Luis Torres', '09:30:00', '10:30:00', 'Carlos Perez', '2024-11-25'),
(212, 'Amor y Mentiras', 'Ana Suarez, Mario Silva, Rosa Leon', '17:00:00', '18:00:00', 'Laura Ruiz', '2024-11-26'),
(213, 'Verdades Ocultas', 'Maria López, Luis Ramirez, Gabriela Ortiz', '20:00:00', '21:00:00', 'Fernando Gil', '2024-11-27'),
(214, 'Entre Sombras', 'Elena Torres, Clara Gómez, Miguel Vega', '08:00:00', '09:00:00', 'Carlos Perez', null),
(215, 'Lazos de Sangre', 'Lucas Perez, Sofía Ramirez, Pedro Lopez', '22:00:00', '23:00:00', 'Ana Beltran', null);

INSERT INTO estudio (ID_Estudio, Ubicacion, Nro_Cam, Utileria, capacidad)
VALUES
(301, 'Buenos Aires', '10', 'Completa', 150),
(302, 'Córdoba', '08', 'Basica', 100),
(303, 'Rosario', '12', 'Avanzada', 200),
(304, 'Mendoza', '07', 'Basica', 80),
(305, 'Tucuman', '09', 'Media', 120),
(306, 'Salta', '06', 'Basica', 75),
(307, 'La Plata', '10', 'Completa', 130),
(308, 'San Juan', '08', 'Media', 90),
(309, 'Neuquen', '07', 'Basica', 85),
(310, 'Mar del Plata', '09', 'Avanzada', 200),
(311, 'Buenos Aires', '11', 'Media', 150),
(312, 'Rosario', '10', 'Completa', 200),
(313, 'Córdoba', '08', 'Avanzada', 100),
(314, 'La Plata', '09', 'Basica', 120),
(315, 'Buenos Aires', '12', 'Completa', 180);


INSERT INTO programas (id_programa, id_estudio, nombre, horario_inicio, horario_final, conductor, elenco, productor, estado, audiencia, vivo)
VALUES
(101, 301, 'Noticias Mañana', '06:00:00', '08:00:00', 'Juan Perez', 'Equipo A', 'Productor A', 'Activo', 'A3',  null),
(102, 302, 'Entrevistas Especiales', '10:00:00', '11:00:00', 'Diego Luna', 'Equipo G', 'Productor G', 'Activo', 'A2',  null),
(103, 303, 'Almuerzo en Vivo', '12:00:00', '14:00:00', 'Sofia Ramírez', 'Equipo F', 'Productor F', 'Activo', 'A1',  null),
(104, 304, 'Mundo Deportivo', '14:00:00', '16:00:00', 'Pedro Torres', 'Equipo C', 'Productor C', 'Activo', 'A4',  null),
(105, 305, 'Tardes Culturales', '16:00:00', '17:00:00', 'Lucia Gómez', 'Equipo D', 'Productor D', 'Pausado', 'A6',  null),
(106, 306, 'Cierre del Dia', '22:00:00', '23:59:59', 'Carlos Ruiz', 'Equipo E', 'Productor E', 'Activo', 'A1',  null),
(107, 307, 'Historias del Mundo', '01:00:00', '02:00:00', 'Elena Diaz', 'Equipo J', 'Productor J', 'Cancelado', 'A6',  null),
(108, 308, 'Ciencia y Tecnologia', '02:00:00', '03:00:00', 'Luis Fernandez', 'Equipo I', 'Productor I', 'Activo', 'A6',  null),
(109, 309, 'Conexión Global', '03:00:00', '04:00:00', 'Maria Torres', 'Equipo H', 'Productor H', 'Activo', 'A6',  null),
(110, 310, 'TeleVentas', '04:00:00', '05:00:00', 'Ana Lopez', 'Equipo B', 'Productor B', 'Activo', 'A6',  null),
(111, 301, 'Mañanas en Vivo', '07:30:00', '09:00:00', 'Marcos Silva',   'Equipo K', 'Productor A', 'Activo', 'A2',  null),
(112, 302, 'Café y Noticias', '08:45:00', '10:15:00', 'Ana Morales',    'Equipo L', 'Productor B', 'Activo', 'A3',  null),
(113, 303, 'Charla Creativa', '11:30:00', '12:30:00', 'Diego Peña',     'Equipo M', 'Productor C', 'Activo', 'A4',  null),
(114, 311, 'Tarde Musical', '16:00:00', '17:30:00', 'Luciana Ortiz',  'Equipo N', 'Productor A', 'Pausado','A5', null),
(115, 312, 'Ciencia Hoy',   '13:00:00', '14:00:00', 'Raúl Herrera',   'Equipo O', 'Productor D', 'Activo', 'A1',  null),
(116, 303, 'Economía al Día','09:00:00', '10:00:00', 'Silvia Rojas',   'Equipo P', 'Productor B', 'Activo', 'A2',  null),
(117, 304, 'Cocina en Casa', '18:30:00', '19:30:00', 'Fernando Salas', 'Equipo Q', 'Productor E', 'Activo', 'A3',  null),
(118, 305, 'Documental Semanal', '21:00:00', '22:00:00', 'Marta Díaz',     'Equipo R', 'Productor C', 'Activo', 'A6',  null),
(119, 311, 'Punto Cultural', '15:00:00', '16:00:00', 'Gloria Ponce',   'Equipo S', 'Productor D', 'Pausado','A4',  null),
(120, 312, 'Mundo Infantil', '10:30:00', '11:30:00', 'Santiago Ruiz',  'Equipo T', 'Productor A', 'Activo', 'A2',  null);



INSERT INTO canal(id_canal, id_programa, id_novelas) VALUES
(1, 101, 201),
(2, 102, 202),
(3, 103, 203),
(4, 104, 204),
(5, 105, 205),
(6, 106, 206),
(7, 107, 207),
(8, 108, 208),
(9, 109, 209),
(10, 110, 210),
(11, 101, 211),
(12, 102, 211),
(13, 103, 212),
(14, 104, 213),
(15, 105, 214),
(16, 106, 215),
(17, 107, 203),  
(18, 108, 203),  
(19, 109, 205),  
(20, 110, 210);  


INSERT INTO episodios (id_episodios, nro_epis, temporadas, id_novelas)
VALUES
(501, 35,  2, 201),
(502, 50,  3, 202),
(503, 123,  7, 203),
(504, 56,  4, 204),
(505, 80,  6, 205),
(506, 30,  2, 206),
(507, 140,  8, 207),
(508, 125,  7, 208),
(509, 45,  3, 209),
(510, 70,  5, 210),
(511, 40, 3, 211),
(512, 25, 2, 212),
(513, 100, 6, 213),
(514, 60, 4, 214),
(515, 45, 3, 215),
(516, 55, 5, 203),  
(517, 70, 6, 205),  
(518, 90, 7, 210);  

INSERT INTO invitados (id_invitados, nombre, apellido, profesion, id_programa)
VALUES
(401, 'Juan', 'Gonzalez', 'Actor', 101),
(402, 'Ana', 'Perez', 'Cantante', 102),
(403, 'Carlos', 'Mendoza', 'Deportista', 104),
(404, 'Laura', 'Sánchez', 'Periodista', 104),
(405, 'Pedro', 'Ramirez', 'Director', 105),
(406, 'Lucia', 'Fernandez', 'Actriz', 105),
(407, 'Miguel', 'Ortiz', 'Chef', 103),
(408, 'Elena', 'Suarez', 'Historiadora', 108),
(409, 'Mario', 'Silva', 'Politico', 109),
(410, 'Laura', 'Torres', 'Documentalista', 107),
(411, 'Daniel', 'Morales', 'Actor', 101),
(412, 'Mariana', 'Gomez', 'Cantante', 102),
(413, 'Jorge', 'Luna', 'Director', 103),
(414, 'Paula', 'Fernandez', 'Periodista', 104),
(415, 'Hernan', 'Torres', 'Chef', 105),
(416, 'Claudia', 'Mendez', 'Deportista', 106),
(417, 'Lucas', 'Suarez', 'Actor', 107),
(418, 'Natalia', 'Ruiz', 'Cantante', 108),
(419, 'Sergio', 'Lopez', 'Chef', 109),
(420, 'Lucia', 'Ramirez', 'Periodista', 110); 
