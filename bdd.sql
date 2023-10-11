create database api_campos_cientificos;

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
    id_linea int not null,
    nombre varchar(500) not null
)Engine=InnoDB;

alter table lineas_investigacion
add constraint fk_area_linea_investigacion foreign key (id_area) references areas(id_area);

alter table disciplinas
add constraint fk_linea_investigacion_disciplina foreign key (id_linea) references lineas_investigacion(id_linea);

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

insert into disciplinas values (10101, 101, 'Matemáticas pura');
insert into disciplinas values (10102, 101, 'Matemáticas aplicadas');
insert into disciplinas values (10103, 101, 'Estadísticas y probabilidades (Investigación en metodologías)');
insert into disciplinas values (10201, 102, 'Ciencias de la computación');
insert into disciplinas values (10202, 102, 'Ciencias de la información y bioinformática');
insert into disciplinas values (10301, 103, 'Física atómica, molecular y química');
insert into disciplinas values (10302, 103, 'Física de la materia condensada');
insert into disciplinas values (10303, 103, 'Física de partículas y campo');
insert into disciplinas values (10304, 103, 'Física nuclear');
insert into disciplinas values (10305, 103, 'Física de plasma y fluidos');
insert into disciplinas values (10306, 103, 'Óptica');
insert into disciplinas values (10307, 103, 'Acústica');
insert into disciplinas values (10308, 103, 'Astronomía');
insert into disciplinas values (10401, 104, 'Química orgánica');
insert into disciplinas values (10402, 104, 'Química inorgánica y nuclear');
insert into disciplinas values (10403, 104, 'Química física');
insert into disciplinas values (10404, 104, 'Ciencia de los polímeros');
insert into disciplinas values (10405, 104, 'Electroquímica');
insert into disciplinas values (10406, 104, 'Química de los coloides');
insert into disciplinas values (10407, 104, 'Química analítica');
insert into disciplinas values (10501, 105, 'Geociencias (multidisciplinario)');
insert into disciplinas values (10502, 105, 'Mineralogía');
insert into disciplinas values (10503, 105, 'Paleontología');
insert into disciplinas values (10504, 105, 'Geoquímica y geofísica');
insert into disciplinas values (10505, 105, 'Geografía física');
insert into disciplinas values (10506, 105, 'Geología');
insert into disciplinas values (10507, 105, 'Vulcanología');
insert into disciplinas values (10508, 105, 'Ciencias ambientales');
insert into disciplinas values (10509, 105, 'Meteorología y ciencias atmosféricas');
insert into disciplinas values (10510, 105, 'Climatología');
insert into disciplinas values (10511, 105, 'Oceanografía, hidrología y recursos hídricos');
insert into disciplinas values (10601, 106, 'Biología celular y microbiología');
insert into disciplinas values (10602, 106, 'Virología');
insert into disciplinas values (10603, 106, 'Bioquímica y biología molecular');
insert into disciplinas values (10604, 106, 'Métodos en investigación en bioquímica');
insert into disciplinas values (10605, 106, 'Micología');
insert into disciplinas values (10606, 106, 'Biofísica');
insert into disciplinas values (10607, 106, 'Genética y herencia');
insert into disciplinas values (10608, 106, 'Biología reproductiva');
insert into disciplinas values (10609, 106, 'Biología del desarrollo');
insert into disciplinas values (10610, 106, 'Ciencias vegetales y Botánica');
insert into disciplinas values (10611, 106, 'Zoología, Ornitología, Entomología, Ciencias biológicas del comportamiento');
insert into disciplinas values (10612, 106, 'Biología marina, de agua dulce y Limnología');
insert into disciplinas values (10613, 106, 'Ecología');
insert into disciplinas values (10614, 106, 'Conservación de la biodiversidad');
insert into disciplinas values (10615, 106, 'Biología (Teórica, matemática, térmica, criobiología, ritmo biológico), Biología evolutiva');
insert into disciplinas values (10616, 106, 'Otros temas biológicos');
insert into disciplinas values (10701, 107, 'Otras ciencias naturales');
insert into disciplinas values (20101, 201, 'Ingeniería civil');
insert into disciplinas values (20102, 201, 'Ingeniería arquitectónica');
insert into disciplinas values (20103, 201, 'Ingeniería de la construcción');
insert into disciplinas values (20104, 201, 'Ingeniería estructural y municipal');
insert into disciplinas values (20105, 201, 'Ingeniería de transporte');
insert into disciplinas values (20201, 202, 'Ingeniería eléctrica y electrónica');
insert into disciplinas values (20202, 202, 'Robótica y control automático');
insert into disciplinas values (20203, 202, 'Sistemas de control y automatización');
insert into disciplinas values (20204, 202, 'Ingeniería de sistemas y comunicaciones');
insert into disciplinas values (20205, 202, 'Telecomunicaciones');
insert into disciplinas values (20206, 202, 'Hardware y arquitectura de computadores');
insert into disciplinas values (20301, 203, 'Ingeniería mecánica');
insert into disciplinas values (20302, 203, 'Mecánica aplicada');
insert into disciplinas values (20303, 203, 'Termodinámica');
insert into disciplinas values (20304, 203, 'Ingeniería aeroespacial');
insert into disciplinas values (20305, 203, 'Ingeniería nuclear');
insert into disciplinas values (20306, 203, 'Ingeniería del audio, análisis de fiabilidad');
insert into disciplinas values (20401, 204, 'Ingeniería química (plantas y productos)');
insert into disciplinas values (20402, 204, 'Ingeniería de procesos químicos');
insert into disciplinas values (20501, 205, 'Ingeniería mecánica');
insert into disciplinas values (20502, 205, 'Cerámicos');
insert into disciplinas values (20503, 205, 'Recubrimiento y películas');
insert into disciplinas values (20504, 205, 'Compuestos (laminados, plásticos reforzados, Cermets, fibras sintéticas y naturales, materiales compuestos rellenos)');
insert into disciplinas values (20505, 205, 'Papel y madera');
insert into disciplinas values (20506, 205, 'Textiles incluyendo fibras y colorantes, sintéticos');
insert into disciplinas values (20601, 206, 'Ingeniería médica');
insert into disciplinas values (20602, 206, 'Tecnología médica de laboratorio (análisis de muestras, tecnologías para el diagnóstico)');
insert into disciplinas values (20701, 207, 'Ingeniería ambiental y geológica');
insert into disciplinas values (20702, 207, 'Geotécnicas');
insert into disciplinas values (20703, 207, 'Ingeniería del petróleo (combustibles, aceites), energía y combustible');
insert into disciplinas values (20704, 207, 'Sensores remotos');
insert into disciplinas values (20705, 207, 'Minería y procesamiento de minerales');
insert into disciplinas values (20706, 207, 'Mecánica naval, embarcaciones marinas');
insert into disciplinas values (20707, 207, 'Ingeniería oceanográfica');
insert into disciplinas values (20801, 208, 'Biotecnología ambiental');
insert into disciplinas values (20802, 208, 'Biorremediación, biotecnología para el diagnóstico (Chips ADN y biosensores) en manejo ambiental');
insert into disciplinas values (20803, 208, 'Biotecnología ambiental relacionada con la ética');
insert into disciplinas values (20901, 209, 'Biotecnología industrial');
insert into disciplinas values (20902, 209, 'Tecnología de bio-procesamiento, biocatálisis, fermentación');
insert into disciplinas values (20903, 209, 'Bio-productos (productos que se manufacturan usando biotecnología), biomateriales, bioplásticos, biocombustibles, materiales nuevos bio-derivados, químicos finos (bio-derivados)');
insert into disciplinas values (21001, 210, 'Nanomateriales (producción y propiedades)');
insert into disciplinas values (21002, 210, 'Nano-procesos (aplicaciones a nano-escala)');
insert into disciplinas values (21101, 211, 'Alimentos y bebidas');
insert into disciplinas values (21102, 211, 'Otras ingenierías y tecnologías');
insert into disciplinas values (21103, 211, 'Ingeniería de producción');
insert into disciplinas values (21104, 211, 'Ingeniería industrial');
insert into disciplinas values (30101, 301, 'Anatomía y morfología');
insert into disciplinas values (30102, 301, 'Genética humana');
insert into disciplinas values (30103, 301, 'Inmunología');
insert into disciplinas values (30104, 301, 'Neurociencias (incluyendo psicofisiología)');
insert into disciplinas values (30105, 301, 'Farmacología y farmacia');
insert into disciplinas values (30106, 301, 'Química médica');
insert into disciplinas values (30107, 301, 'Toxicología');
insert into disciplinas values (30108, 301, 'Fisiología (incluye citología)');
insert into disciplinas values (30109, 301, 'Patología');
insert into disciplinas values (30201, 302, 'Andrología');
insert into disciplinas values (30202, 302, 'Obstetricia y ginecología');
insert into disciplinas values (30203, 302, 'Pediatría');
insert into disciplinas values (30204, 302, 'Sistemas cardíacos y cardiovasculares');
insert into disciplinas values (30205, 302, 'Enfermedad vascular periférica');
insert into disciplinas values (30206, 302, 'Hematología');
insert into disciplinas values (30207, 302, 'Sistemas respiratorios');
insert into disciplinas values (30208, 302, 'Medicina de cuidados críticos y de emergencia');
insert into disciplinas values (30209, 302, 'Anestesiología');
insert into disciplinas values (30210, 302, 'Ortopédia');
insert into disciplinas values (30211, 302, 'Cirugía');
insert into disciplinas values (30212, 302, 'Radiología, medicina nuclear e imágenes médicas');
insert into disciplinas values (30213, 302, 'Trasplantes');
insert into disciplinas values (30214, 302, 'Odontología, cirugía y medicina oral');
insert into disciplinas values (30215, 302, 'Dermatología y enfermedades venéreas');
insert into disciplinas values (30216, 302, 'Alergias');
insert into disciplinas values (30217, 302, 'Reumatología');
insert into disciplinas values (30218, 302, 'Endocrinología y metabolismo (incluye diabetes y trastornos hormonales)');
insert into disciplinas values (30219, 302, 'Gastroenterología y hepatología');
insert into disciplinas values (30220, 302, 'Urología y nefrología');
insert into disciplinas values (30221, 302, 'Oncología');
insert into disciplinas values (30222, 302, 'Oftalmología');
insert into disciplinas values (30223, 302, 'Otorrinolaringología');
insert into disciplinas values (30224, 302, 'Psiquiatría');
insert into disciplinas values (30225, 302, 'Neurología clínica');
insert into disciplinas values (30226, 302, 'Geriatría y gerontología');
insert into disciplinas values (30227, 302, 'Medicina general e interna');
insert into disciplinas values (30228, 302, 'Otros temas de medicina clínica');
insert into disciplinas values (30229, 302, 'Medicina complementaria (sistemas de práctica alternativa)');
insert into disciplinas values (30301, 303, 'Ciencias y servicios del cuidado de la salud (administración de hospitales, financiamiento de servicios de salud)');
insert into disciplinas values (30302, 303, 'Políticas de salud y servicios');
insert into disciplinas values (30303, 303, 'Enfermería');
insert into disciplinas values (30304, 303, 'Nutrición y dietética');
insert into disciplinas values (30305, 303, 'Salud pública');
insert into disciplinas values (30306, 303, 'Medicina tropical');
insert into disciplinas values (30307, 303, 'Parasitología');
insert into disciplinas values (30308, 303, 'Enfermedades infecciosas');
insert into disciplinas values (30309, 303, 'Epidemiología');
insert into disciplinas values (30310, 303, 'Salud ocupacional');
insert into disciplinas values (30311, 303, 'Ciencias del deporte');
insert into disciplinas values (30312, 303, 'Ciencias socio biomédicas (planificación familiar, salud sexual, efectos políticos y sociales de la investigación biomédica)');
insert into disciplinas values (30313, 303, 'Ética médica');
insert into disciplinas values (30314, 303, 'Abuso de substancias');
insert into disciplinas values (30401, 304, 'Biotecnología relacionada con la salud');
insert into disciplinas values (30402, 304, 'Tecnologías para la manipulación de células, tejidos, órganos o el organismo (reproducción asistida)');
insert into disciplinas values (30403, 304, 'Tecnología para identificar el funcionamiento del ADN, proteínas, enzimas y como influencian la enfermedad');
insert into disciplinas values (30404, 304, 'Biomateriales (relacionados con implantes, dispositivos, sensores)');
insert into disciplinas values (30405, 304, 'Biomedicina relacionada con la ética');
insert into disciplinas values (30406, 304, 'Abuso de sustancias');
insert into disciplinas values (30501, 305, 'Criminalística');
insert into disciplinas values (30502, 305, 'Fonoaudiología');
insert into disciplinas values (30503, 305, 'Otras ciencias médicas');
insert into disciplinas values (40101, 401, 'Agricultura');
insert into disciplinas values (40102, 401, 'Silvicultura');
insert into disciplinas values (40103, 401, 'Pesca');
insert into disciplinas values (40104, 401, 'Ciencias del suelo');
insert into disciplinas values (40105, 401, 'Horticultura y viticultura');
insert into disciplinas values (40106, 401, 'Agronomía');
insert into disciplinas values (40107, 401, 'Protección y nutrición de las plantas');
insert into disciplinas values (40201, 402, 'Ciencias animales y lechería');
insert into disciplinas values (40202, 402, 'Zootecnia y animales domésticos');
insert into disciplinas values (40301, 403, 'Ciencias Veterinarias');
insert into disciplinas values (40401, 404, 'Biotecnología agrícola y de alimentos');
insert into disciplinas values (40402, 404, 'Tecnología de Modificación Genética (cultivos y ganado), clonación de ganado, selección asistida  con marcadores, diagnóstico chips de ADN, (biosensores)');
insert into disciplinas values (40403, 404, 'Biotecnología agrícola relacionada a la ética');
insert into disciplinas values (40501, 405, 'Otras ciencias agrícolas');
insert into disciplinas values (50101, 501, 'Psicología (incluye relaciones hombre-máquina)');
insert into disciplinas values (50102, 501, 'Psicología especial (incluye terapias de aprendizaje, habla, audición, visión y otras discapacidades físicas y mentales)');
insert into disciplinas values (50201, 502, 'Economía');
insert into disciplinas values (50202, 502, 'Econometría');
insert into disciplinas values (50203, 502, 'Relaciones laborales');
insert into disciplinas values (50204, 502, 'Negocios y gestión');
insert into disciplinas values (50301, 503, 'Educación general (incluye capacitación, formación, pedagogía y didáctica)');
insert into disciplinas values (50302, 503, 'Educación especial (para estudiantes talentosos y aquellos con dificultades de aprendizaje)');
insert into disciplinas values (50401, 504, 'Sociología');
insert into disciplinas values (50402, 504, 'Demografía');
insert into disciplinas values (50403, 504, 'Antropología');
insert into disciplinas values (50404, 504, 'Etnología');
insert into disciplinas values (50405, 504, 'Tópicos sociales (estudios de género, temas sociales, estudios de la familia, trabajo social)');
insert into disciplinas values (50501, 505, 'Derecho');
insert into disciplinas values (50502, 505, 'Penal');
insert into disciplinas values (50601, 506, 'Ciencias políticas');
insert into disciplinas values (50602, 506, 'Administración pública');
insert into disciplinas values (50603, 506, 'Teoría organizacional');
insert into disciplinas values (50701, 507, 'Ciencias ambientales (aspectos sociales)');
insert into disciplinas values (50702, 507, 'Geografía cultural y económica');
insert into disciplinas values (50703, 507, 'Estudios urbanos (planificación y desarrollo)');
insert into disciplinas values (50704, 507, 'Planificación y aspectos sociales del transporte');
insert into disciplinas values (50801, 508, 'Periodismo');
insert into disciplinas values (50802, 508, 'Ciencias de la información (aspectos sociales)');
insert into disciplinas values (50803, 508, 'Bibliotecología');
insert into disciplinas values (50804, 508, 'Medios y comunicación socio cultural');
insert into disciplinas values (50901, 509, 'Ciencias sociales, interdisciplinas');
insert into disciplinas values (50902, 509, 'Otras ciencias sociales');
insert into disciplinas values (60101, 601, 'Historia');
insert into disciplinas values (60102, 601, 'Arqueología');
insert into disciplinas values (60201, 602, 'Estudios generales de idiomas');
insert into disciplinas values (60202, 602, 'Idiomas específicos');
insert into disciplinas values (60203, 602, 'Estudios literarios');
insert into disciplinas values (60204, 602, 'Teoría literaria');
insert into disciplinas values (60205, 602, 'Literatura específica');
insert into disciplinas values (60206, 602, 'Lingüística');
insert into disciplinas values (60301, 603, 'Historia de la ciencia y tecnología');
insert into disciplinas values (60302, 603, 'Historias especializadas (Historia del Arte)');
insert into disciplinas values (60401, 604, 'Artes plásticas y visuales');
insert into disciplinas values (60402, 604, 'Música y musicología');
insert into disciplinas values (60403, 604, 'Danza o Artes danzarías');
insert into disciplinas values (60404, 604, 'Teatro, dramaturgia o artes escénicas');
insert into disciplinas values (60405, 604, 'Otras artes');
insert into disciplinas values (60406, 604, 'Artes audiovisuales');
insert into disciplinas values (60407, 604, 'Arquitectura y urbanismo');
insert into disciplinas values (60408, 604, 'Diseño');
insert into disciplinas values (60501, 605, 'Estudios del folclor');
insert into disciplinas values (60502, 605, 'Filosofía');
insert into disciplinas values (60503, 605, 'Teología');
insert into disciplinas values (60504, 605, 'Ética (excepto relacionada a disciplinas específicas)');