--create database api_campos_cientificos;

use api_campos_cientificos;

create table areas (
	id_area int AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(75) not null
)ENGINE=INNODB;

create table lineas_investigacion (
	id_linea int PRIMARY KEY,
    id_area int not null,
    nombre varchar(75) not null
)Engine=InnoDB;

create table disciplinas (
    id_disciplina int PRIMARY KEY,
    id_area int not null,
    id_linea int not null,
    nombre varchar(500) not null
)Engine=InnoDB;

alter table lineas_investigacion
add constraint fk_area_linea_investigacion foreign key (id_area) references areas(id_area);

alter table disciplinas
add constraint fk_linea_investigacion_disciplina foreign key (id_linea) references lineas_investigacion(id_linea);

alter table disciplinas
add constraint fk_area_disciplina foreign key (id_area) references areas(id_area);

-- Agregando registros a tabla de areas

insert into areas(nombre)
values
('Ciencias Naturales'),('Ingeniería y Tecnología'),('Ciencias Médicas'),('Ciencias Agrícolas'),('Ciencias Sociales'),
('Humanidades');

-- Agregando registros a tabla lineas_investigacion

insert into lineas_investigacion
values
(101, 1, 'Matemáticas'),(102, 1, 'Ciencias de la información y computación'),(103, 1, 'Ciencias Físicas'),(104, 1, 'Ciencias Químicas'),
(105, 1, 'Ciencias de la Tierra y Medioambientales'),(106, 1, 'Ciencias Biológicas'),(107, 1, 'Otras Ciencias Naturales'),
(201, 2, 'Ingeniería Civil'),(202, 2, 'Ingenierías Eléctrica, Electrónica y de la  Información'),(203, 2, 'Ingeniería Mecánica'),
(204, 2, 'Ingeniería Química'),(205, 2, 'Ingeniería de Materiales'),(206, 2, 'Ingeniería Médica'),(207, 2, 'Ingeniería Ambiental'),
(208, 2, 'Biotecnología ambiental'),(209, 2, 'Biotecnología Industrial'),(210, 2, 'Nanotecnología'),(211, 2, 'Otras Ingenierías y Tecnologías'),
(301, 3, 'Medicina Básica'),(302, 3, 'Medicina Clínica'),(303, 3, 'Ciencias de la Salud'),(304, 3, 'Biotecnología en Salud'),
(305, 3, 'Otras Ciencias Médicas'),(401, 4, 'Agricultura, Silvicultura y Pesca'), (402, 4, 'Ciencias Animales y Lácteas'),
(403, 4, 'Ciencias Veterinarias'),(404, 4, 'Biotecnología Agrícola'),(405, 4, 'Otras Ciencias Agrícolas'),
(501, 5, 'Psicología'),(502, 5, 'Economía y Negocios'),(503, 5, 'Ciencias de la Educación'), (504, 5, 'Sociología'),
(505, 5, 'Derecho'),(506, 5, 'Ciencias Políticas'),(507, 5, 'Geografía Social y Económica'),(508, 5, 'Periodismo y Comunicaciones'),
(509, 5, 'Otras Ciencias Sociales'),(601, 6, 'Historia y Arqueología'),(602, 6, 'Idiomas y Literatura'),(603, 6, 'Otras Historias'),
(604, 6, 'Arte'),(605, 6, 'Otras Humanidades');

-- Agregando registros de disciplinas

insert into disciplinas values (10101, 1, 101, 'Matemáticas pura');
insert into disciplinas values (10102, 1, 101, 'Matemáticas aplicadas');
insert into disciplinas values (10103, 1, 101, 'Estadísticas y probabilidades (Investigación en metodologías)');
insert into disciplinas values (10201, 1, 102, 'Ciencias de la computación');
insert into disciplinas values (10202, 1, 102, 'Ciencias de la información y bioinformática');
insert into disciplinas values (10301, 1, 103, 'Física atómica, molecular y química');
insert into disciplinas values (10302, 1, 103, 'Física de la materia condensada');
insert into disciplinas values (10303, 1, 103, 'Física de partículas y campo');
insert into disciplinas values (10304, 1, 103, 'Física nuclear');
insert into disciplinas values (10305, 1, 103, 'Física de plasma y fluidos');
insert into disciplinas values (10306, 1, 103, 'Óptica');
insert into disciplinas values (10307, 1, 103, 'Acústica');
insert into disciplinas values (10308, 1, 103, 'Astronomía');
insert into disciplinas values (10401, 1, 104, 'Química orgánica');
insert into disciplinas values (10402, 1, 104, 'Química inorgánica y nuclear');
insert into disciplinas values (10403, 1, 104, 'Química física');
insert into disciplinas values (10404, 1, 104, 'Ciencia de los polímeros');
insert into disciplinas values (10405, 1, 104, 'Electroquímica');
insert into disciplinas values (10406, 1, 104, 'Química de los coloides');
insert into disciplinas values (10407, 1, 104, 'Química analítica');
insert into disciplinas values (10501, 1, 105, 'Geociencias (multidisciplinario)');
insert into disciplinas values (10502, 1, 105, 'Mineralogía');
insert into disciplinas values (10503, 1, 105, 'Paleontología');
insert into disciplinas values (10504, 1, 105, 'Geoquímica y geofísica');
insert into disciplinas values (10505, 1, 105, 'Geografía física');
insert into disciplinas values (10506, 1, 105, 'Geología');
insert into disciplinas values (10507, 1, 105, 'Vulcanología');
insert into disciplinas values (10508, 1, 105, 'Ciencias ambientales');
insert into disciplinas values (10509, 1, 105, 'Meteorología y ciencias atmosféricas');
insert into disciplinas values (10510, 1, 105, 'Climatología');
insert into disciplinas values (10511, 1, 105, 'Oceanografía, hidrología y recursos hídricos');
insert into disciplinas values (10601, 1, 106, 'Biología celular y microbiología');
insert into disciplinas values (10602, 1, 106, 'Virología');
insert into disciplinas values (10603, 1, 106, 'Bioquímica y biología molecular');
insert into disciplinas values (10604, 1, 106, 'Métodos en investigación en bioquímica');
insert into disciplinas values (10605, 1, 106, 'Micología');
insert into disciplinas values (10606, 1, 106, 'Biofísica');
insert into disciplinas values (10607, 1, 106, 'Genética y herencia');
insert into disciplinas values (10608, 1, 106, 'Biología reproductiva');
insert into disciplinas values (10609, 1, 106, 'Biología del desarrollo');
insert into disciplinas values (10610, 1, 106, 'Ciencias vegetales y Botánica');
insert into disciplinas values (10611, 1, 106, 'Zoología, Ornitología, Entomología, Ciencias biológicas del comportamiento');
insert into disciplinas values (10612, 1, 106, 'Biología marina, de agua dulce y Limnología');
insert into disciplinas values (10613, 1, 106, 'Ecología');
insert into disciplinas values (10614, 1, 106, 'Conservación de la biodiversidad');
insert into disciplinas values (10615, 1, 106, 'Biología (Teórica, matemática, térmica, criobiología, ritmo biológico), Biología evolutiva');
insert into disciplinas values (10616, 1, 106, 'Otros temas biológicos');
insert into disciplinas values (10701, 1, 107, 'Otras ciencias naturales');
insert into disciplinas values (20101, 2, 201, 'Ingeniería civil');
insert into disciplinas values (20102, 2, 201, 'Ingeniería arquitectónica');
insert into disciplinas values (20103, 2, 201, 'Ingeniería de la construcción');
insert into disciplinas values (20104, 2, 201, 'Ingeniería estructural y municipal');
insert into disciplinas values (20105, 2, 201, 'Ingeniería de transporte');
insert into disciplinas values (20201, 2, 202, 'Ingeniería eléctrica y electrónica');
insert into disciplinas values (20202, 2, 202, 'Robótica y control automático');
insert into disciplinas values (20203, 2, 202, 'Sistemas de control y automatización');
insert into disciplinas values (20204, 2, 202, 'Ingeniería de sistemas y comunicaciones');
insert into disciplinas values (20205, 2, 202, 'Telecomunicaciones');
insert into disciplinas values (20206, 2, 202, 'Hardware y arquitectura de computadores');
insert into disciplinas values (20301, 2, 203, 'Ingeniería mecánica');
insert into disciplinas values (20302, 2, 203, 'Mecánica aplicada');
insert into disciplinas values (20303, 2, 203, 'Termodinámica');
insert into disciplinas values (20304, 2, 203, 'Ingeniería aeroespacial');
insert into disciplinas values (20305, 2, 203, 'Ingeniería nuclear');
insert into disciplinas values (20306, 2, 203, 'Ingeniería del audio, análisis de fiabilidad');
insert into disciplinas values (20401, 2, 204, 'Ingeniería química (plantas y productos)');
insert into disciplinas values (20402, 2, 204, 'Ingeniería de procesos químicos');
insert into disciplinas values (20501, 2, 205, 'Ingeniería mecánica');
insert into disciplinas values (20502, 2, 205, 'Cerámicos');
insert into disciplinas values (20503, 2, 205, 'Recubrimiento y películas');
insert into disciplinas values (20504, 2, 205, 'Compuestos (laminados, plásticos reforzados, Cermets, fibras sintéticas y naturales, materiales compuestos rellenos)');
insert into disciplinas values (20505, 2, 205, 'Papel y madera');
insert into disciplinas values (20506, 2, 205, 'Textiles incluyendo fibras y colorantes, sintéticos');
insert into disciplinas values (20601, 2, 206, 'Ingeniería médica');
insert into disciplinas values (20602, 2, 206, 'Tecnología médica de laboratorio (análisis de muestras, tecnologías para el diagnóstico)');
insert into disciplinas values (20701, 2, 207, 'Ingeniería ambiental y geológica');
insert into disciplinas values (20702, 2, 207, 'Geotécnicas');
insert into disciplinas values (20703, 2, 207, 'Ingeniería del petróleo (combustibles, aceites), energía y combustible');
insert into disciplinas values (20704, 2, 207, 'Sensores remotos');
insert into disciplinas values (20705, 2, 207, 'Minería y procesamiento de minerales');
insert into disciplinas values (20706, 2, 207, 'Mecánica naval, embarcaciones marinas');
insert into disciplinas values (20707, 2, 207, 'Ingeniería oceanográfica');
insert into disciplinas values (20801, 2, 208, 'Biotecnología ambiental');
insert into disciplinas values (20802, 2, 208, 'Biorremediación, biotecnología para el diagnóstico (Chips ADN y biosensores) en manejo ambiental');
insert into disciplinas values (20803, 2, 208, 'Biotecnología ambiental relacionada con la ética');
insert into disciplinas values (20901, 2, 209, 'Biotecnología industrial');
insert into disciplinas values (20902, 2, 209, 'Tecnología de bio-procesamiento, biocatálisis, fermentación');
insert into disciplinas values (20903, 2, 209, 'Bio-productos (productos que se manufacturan usando biotecnología), biomateriales, bioplásticos, biocombustibles, materiales nuevos bio-derivados, químicos finos (bio-derivados)');
insert into disciplinas values (21001, 2, 210, 'Nanomateriales (producción y propiedades)');
insert into disciplinas values (21002, 2, 210, 'Nano-procesos (aplicaciones a nano-escala)');
insert into disciplinas values (21101, 2, 211, 'Alimentos y bebidas');
insert into disciplinas values (21102, 2, 211, 'Otras ingenierías y tecnologías');
insert into disciplinas values (21103, 2, 211, 'Ingeniería de producción');
insert into disciplinas values (21104, 2, 211, 'Ingeniería industrial');
insert into disciplinas values (30101, 3, 301, 'Anatomía y morfología');
insert into disciplinas values (30102, 3, 301, 'Genética humana');
insert into disciplinas values (30103, 3, 301, 'Inmunología');
insert into disciplinas values (30104, 3, 301, 'Neurociencias (incluyendo psicofisiología)');
insert into disciplinas values (30105, 3, 301, 'Farmacología y farmacia');
insert into disciplinas values (30106, 3, 301, 'Química médica');
insert into disciplinas values (30107, 3, 301, 'Toxicología');
insert into disciplinas values (30108, 3, 301, 'Fisiología (incluye citología)');
insert into disciplinas values (30109, 3, 301, 'Patología');
insert into disciplinas values (30201, 3, 302, 'Andrología');
insert into disciplinas values (30202, 3, 302, 'Obstetricia y ginecología');
insert into disciplinas values (30203, 3, 302, 'Pediatría');
insert into disciplinas values (30204, 3, 302, 'Sistemas cardíacos y cardiovasculares');
insert into disciplinas values (30205, 3, 302, 'Enfermedad vascular periférica');
insert into disciplinas values (30206, 3, 302, 'Hematología');
insert into disciplinas values (30207, 3, 302, 'Sistemas respiratorios');
insert into disciplinas values (30208, 3, 302, 'Medicina de cuidados críticos y de emergencia');
insert into disciplinas values (30209, 3, 302, 'Anestesiología');
insert into disciplinas values (30210, 3, 302, 'Ortopédia');
insert into disciplinas values (30211, 3, 302, 'Cirugía');
insert into disciplinas values (30212, 3, 302, 'Radiología, medicina nuclear e imágenes médicas');
insert into disciplinas values (30213, 3, 302, 'Trasplantes');
insert into disciplinas values (30214, 3, 302, 'Odontología, cirugía y medicina oral');
insert into disciplinas values (30215, 3, 302, 'Dermatología y enfermedades venéreas');
insert into disciplinas values (30216, 3, 302, 'Alergias');
insert into disciplinas values (30217, 3, 302, 'Reumatología');
insert into disciplinas values (30218, 3, 302, 'Endocrinología y metabolismo (incluye diabetes y trastornos hormonales)');
insert into disciplinas values (30219, 3, 302, 'Gastroenterología y hepatología');
insert into disciplinas values (30220, 3, 302, 'Urología y nefrología');
insert into disciplinas values (30221, 3, 302, 'Oncología');
insert into disciplinas values (30222, 3, 302, 'Oftalmología');
insert into disciplinas values (30223, 3, 302, 'Otorrinolaringología');
insert into disciplinas values (30224, 3, 302, 'Psiquiatría');
insert into disciplinas values (30225, 3, 302, 'Neurología clínica');
insert into disciplinas values (30226, 3, 302, 'Geriatría y gerontología');
insert into disciplinas values (30227, 3, 302, 'Medicina general e interna');
insert into disciplinas values (30228, 3, 302, 'Otros temas de medicina clínica');
insert into disciplinas values (30229, 3, 302, 'Medicina complementaria (sistemas de práctica alternativa)');
insert into disciplinas values (30301, 3, 303, 'Ciencias y servicios del cuidado de la salud (administración de hospitales, financiamiento de servicios de salud)');
insert into disciplinas values (30302, 3, 303, 'Políticas de salud y servicios');
insert into disciplinas values (30303, 3, 303, 'Enfermería');
insert into disciplinas values (30304, 3, 303, 'Nutrición y dietética');
insert into disciplinas values (30305, 3, 303, 'Salud pública');
insert into disciplinas values (30306, 3, 303, 'Medicina tropical');
insert into disciplinas values (30307, 3, 303, 'Parasitología');
insert into disciplinas values (30308, 3, 303, 'Enfermedades infecciosas');
insert into disciplinas values (30309, 3, 303, 'Epidemiología');
insert into disciplinas values (30310, 3, 303, 'Salud ocupacional');
insert into disciplinas values (30311, 3, 303, 'Ciencias del deporte');
insert into disciplinas values (30312, 3, 303, 'Ciencias socio biomédicas (planificación familiar, salud sexual, efectos políticos y sociales de la investigación biomédica)');
insert into disciplinas values (30313, 3, 303, 'Ética médica');
insert into disciplinas values (30314, 3, 303, 'Abuso de substancias');
insert into disciplinas values (30401, 3, 304, 'Biotecnología relacionada con la salud');
insert into disciplinas values (30402, 3, 304, 'Tecnologías para la manipulación de células, tejidos, órganos o el organismo (reproducción asistida)');
insert into disciplinas values (30403, 3, 304, 'Tecnología para identificar el funcionamiento del ADN, proteínas, enzimas y como influencian la enfermedad');
insert into disciplinas values (30404, 3, 304, 'Biomateriales (relacionados con implantes, dispositivos, sensores)');
insert into disciplinas values (30405, 3, 304, 'Biomedicina relacionada con la ética');
insert into disciplinas values (30406, 3, 304, 'Abuso de sustancias');
insert into disciplinas values (30501, 3, 305, 'Criminalística');
insert into disciplinas values (30502, 3, 305, 'Fonoaudiología');
insert into disciplinas values (30503, 3, 305, 'Otras ciencias médicas');
insert into disciplinas values (40101, 4, 401, 'Agricultura');
insert into disciplinas values (40102, 4, 401, 'Silvicultura');
insert into disciplinas values (40103, 4, 401, 'Pesca');
insert into disciplinas values (40104, 4, 401, 'Ciencias del suelo');
insert into disciplinas values (40105, 4, 401, 'Horticultura y viticultura');
insert into disciplinas values (40106, 4, 401, 'Agronomía');
insert into disciplinas values (40107, 4, 401, 'Protección y nutrición de las plantas');
insert into disciplinas values (40201, 4, 402, 'Ciencias animales y lechería');
insert into disciplinas values (40202, 4, 402, 'Zootecnia y animales domésticos');
insert into disciplinas values (40301, 4, 403, 'Ciencias Veterinarias');
insert into disciplinas values (40401, 4, 404, 'Biotecnología agrícola y de alimentos');
insert into disciplinas values (40402, 4, 404, 'Tecnología de Modificación Genética (cultivos y ganado), clonación de ganado, selección asistida  con marcadores, diagnóstico chips de ADN, (biosensores)');
insert into disciplinas values (40403, 4, 404, 'Biotecnología agrícola relacionada a la ética');
insert into disciplinas values (40501, 4, 405, 'Otras ciencias agrícolas');
insert into disciplinas values (50101, 5, 501, 'Psicología (incluye relaciones hombre-máquina)');
insert into disciplinas values (50102, 5, 501, 'Psicología especial (incluye terapias de aprendizaje, habla, audición, visión y otras discapacidades físicas y mentales)');
insert into disciplinas values (50201, 5, 502, 'Economía');
insert into disciplinas values (50202, 5, 502, 'Econometría');
insert into disciplinas values (50203, 5, 502, 'Relaciones laborales');
insert into disciplinas values (50204, 5, 502, 'Negocios y gestión');
insert into disciplinas values (50301, 5, 503, 'Educación general (incluye capacitación, formación, pedagogía y didáctica)');
insert into disciplinas values (50302, 5, 503, 'Educación especial (para estudiantes talentosos y aquellos con dificultades de aprendizaje)');
insert into disciplinas values (50401, 5, 504, 'Sociología');
insert into disciplinas values (50402, 5, 504, 'Demografía');
insert into disciplinas values (50403, 5, 504, 'Antropología');
insert into disciplinas values (50404, 5, 504, 'Etnología');
insert into disciplinas values (50405, 5, 504, 'Tópicos sociales (estudios de género, temas sociales, estudios de la familia, trabajo social)');
insert into disciplinas values (50501, 5, 505, 'Derecho');
insert into disciplinas values (50502, 5, 505, 'Penal');
insert into disciplinas values (50601, 5, 506, 'Ciencias políticas');
insert into disciplinas values (50602, 5, 506, 'Administración pública');
insert into disciplinas values (50603, 5, 506, 'Teoría organizacional');
insert into disciplinas values (50701, 5, 507, 'Ciencias ambientales (aspectos sociales)');
insert into disciplinas values (50702, 5, 507, 'Geografía cultural y económica');
insert into disciplinas values (50703, 5, 507, 'Estudios urbanos (planificación y desarrollo)');
insert into disciplinas values (50704, 5, 507, 'Planificación y aspectos sociales del transporte');
insert into disciplinas values (50801, 5, 508, 'Periodismo');
insert into disciplinas values (50802, 5, 508, 'Ciencias de la información (aspectos sociales)');
insert into disciplinas values (50803, 5, 508, 'Bibliotecología');
insert into disciplinas values (50804, 5, 508, 'Medios y comunicación socio cultural');
insert into disciplinas values (50901, 5, 509, 'Ciencias sociales, interdisciplinas');
insert into disciplinas values (50902, 5, 509, 'Otras ciencias sociales');
insert into disciplinas values (60101, 6, 601, 'Historia');
insert into disciplinas values (60102, 6, 601, 'Arqueología');
insert into disciplinas values (60201, 6, 602, 'Estudios generales de idiomas');
insert into disciplinas values (60202, 6, 602, 'Idiomas específicos');
insert into disciplinas values (60203, 6, 602, 'Estudios literarios');
insert into disciplinas values (60204, 6, 602, 'Teoría literaria');
insert into disciplinas values (60205, 6, 602, 'Literatura específica');
insert into disciplinas values (60206, 6, 602, 'Lingüística');
insert into disciplinas values (60301, 6, 603, 'Historia de la ciencia y tecnología');
insert into disciplinas values (60302, 6, 603, 'Historias especializadas (Historia del Arte)');
insert into disciplinas values (60401, 6, 604, 'Artes plásticas y visuales');
insert into disciplinas values (60402, 6, 604, 'Música y musicología');
insert into disciplinas values (60403, 6, 604, 'Danza o Artes danzarías');
insert into disciplinas values (60404, 6, 604, 'Teatro, dramaturgia o artes escénicas');
insert into disciplinas values (60405, 6, 604, 'Otras artes');
insert into disciplinas values (60406, 6, 604, 'Artes audiovisuales');
insert into disciplinas values (60407, 6, 604, 'Arquitectura y urbanismo');
insert into disciplinas values (60408, 6, 604, 'Diseño');
insert into disciplinas values (60501, 6, 605, 'Estudios del folclor');
insert into disciplinas values (60502, 6, 605, 'Filosofía');
insert into disciplinas values (60503, 6, 605, 'Teología');
insert into disciplinas values (60504, 6, 605, 'Ética (excepto relacionada a disciplinas específicas)');