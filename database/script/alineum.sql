CREATE DATABASE alineum;
USE alineum;

CREATE TABLE alineum.t_cat_opciones_servicios (
  id_cat_servicios INT NOT NULL AUTO_INCREMENT,
  opcion_servicio VARCHAR(255) NOT NULL,
  insersion_servicio DATETIME NOT NULL DEFAULT now(),
  PRIMARY KEY (id_cat_servicios));
INSERT INTO alineum.t_cat_opciones_servicios (opcion_servicio) VALUES ('Estrategias de negocio');
INSERT INTO alineum.t_cat_opciones_servicios (opcion_servicio) VALUES ('Innovación');
INSERT INTO alineum.t_cat_opciones_servicios (opcion_servicio) VALUES ('Impulso comercial y marketing');
INSERT INTO alineum.t_cat_opciones_servicios (opcion_servicio) VALUES ('Experiencia del cliente');
INSERT INTO alineum.t_cat_opciones_servicios (opcion_servicio) VALUES ('Consultoría tecnológica');
INSERT INTO alineum.t_cat_opciones_servicios (opcion_servicio) VALUES ('Inteligencia y data analytics');
INSERT INTO alineum.t_cat_opciones_servicios (opcion_servicio) VALUES ('Modelos operativos');
INSERT INTO alineum.t_cat_opciones_servicios (opcion_servicio) VALUES ('Construcción de empresa');
INSERT INTO alineum.t_cat_opciones_servicios (opcion_servicio) VALUES ('Comercio ideal');
INSERT INTO alineum.t_cat_opciones_servicios (opcion_servicio) VALUES ('Consejería empresaríal');
INSERT INTO alineum.t_cat_opciones_servicios (opcion_servicio) VALUES ('Finanzas corporativas');


CREATE TABLE alineum.t_cat_opciones_insights (
  id_cat_insights INT NOT NULL AUTO_INCREMENT,
  opcion_insights VARCHAR(255) NOT NULL,
  insersion_insights DATETIME NOT NULL DEFAULT now(),
  PRIMARY KEY (id_cat_insights));
INSERT INTO alineum.t_cat_opciones_insights (opcion_insights) VALUES ('Estrategias');
INSERT INTO alineum.t_cat_opciones_insights (opcion_insights) VALUES ('Tendencias');
INSERT INTO alineum.t_cat_opciones_insights (opcion_insights) VALUES ('Comercial y Marketing');
INSERT INTO alineum.t_cat_opciones_insights (opcion_insights) VALUES ('Modelos operativos');
INSERT INTO alineum.t_cat_opciones_insights (opcion_insights) VALUES ('Tecnología');
INSERT INTO alineum.t_cat_opciones_insights (opcion_insights) VALUES ('Desarrollo empresarial');
INSERT INTO alineum.t_cat_opciones_insights (opcion_insights) VALUES ('Innovación');
INSERT INTO alineum.t_cat_opciones_insights (opcion_insights) VALUES ('Sostenibilidad');
INSERT INTO alineum.t_cat_opciones_insights (opcion_insights) VALUES ('Experiencia del cliente');
INSERT INTO alineum.t_cat_opciones_insights (opcion_insights) VALUES ('Inteligencia de negocios');

CREATE TABLE alineum.t_cat_opciones_nosotros (
  id_cat_nosotros INT NOT NULL AUTO_INCREMENT,
  opcion_nosotros VARCHAR(255) NOT NULL,
  insersion_nosotros DATETIME NOT NULL DEFAULT now(),
  PRIMARY KEY (id_cat_nosotros));
INSERT INTO alineum.t_cat_opciones_nosotros (opcion_nosotros) VALUES ('Clientes');
INSERT INTO alineum.t_cat_opciones_nosotros (opcion_nosotros) VALUES ('¿Quienes somos?');
INSERT INTO alineum.t_cat_opciones_nosotros (opcion_nosotros) VALUES ('Colaboradores');
INSERT INTO alineum.t_cat_opciones_nosotros (opcion_nosotros) VALUES ('Procesos');
CREATE TABLE alineum.t_info_insights (
  id_info_insights INT NOT NULL AUTO_INCREMENT,
  id_insights INT NOT NULL,
  info_insights TEXT NOT NULL,
  nombre_imagen VARCHAR(45) NOT NULL,
  insersion_insights DATETIME NOT NULL DEFAULT now(),
  PRIMARY KEY (id_info_insights));

ALTER TABLE alineum.t_info_insights 
ADD INDEX fk_info_insights_idx (id_insights ASC);
;
ALTER TABLE alineum.t_info_insights 
ADD CONSTRAINT fk_info_insights
  FOREIGN KEY (id_insights)
  REFERENCES alineum.t_cat_opciones_insights (id_cat_insights)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

INSERT INTO alineum.t_info_insights (id_insights, info_insights, nombre_imagen) VALUES ('1', 'vacio', 'insights_1.jpg');
INSERT INTO alineum.t_info_insights (id_insights, info_insights, nombre_imagen) VALUES ('2', 'vacio', 'insights_2.jpg');
INSERT INTO alineum.t_info_insights (id_insights, info_insights, nombre_imagen) VALUES ('3', 'vacio', 'insights_3.jpg');
INSERT INTO alineum.t_info_insights (id_insights, info_insights, nombre_imagen) VALUES ('4', 'vacio', 'insights_4.jpg');
INSERT INTO alineum.t_info_insights (id_insights, info_insights, nombre_imagen) VALUES ('5', 'vacio', 'insights_5.jpg');
INSERT INTO alineum.t_info_insights (id_insights, info_insights, nombre_imagen) VALUES ('6', 'vacio', 'insights_6.jpg');
INSERT INTO alineum.t_info_insights (id_insights, info_insights, nombre_imagen) VALUES ('7', 'vacio', 'insights_7.jpg');
INSERT INTO alineum.t_info_insights (id_insights, info_insights, nombre_imagen) VALUES ('8', 'vacio', 'insights_8.jpg');
INSERT INTO alineum.t_info_insights (id_insights, info_insights, nombre_imagen) VALUES ('9', 'vacio', 'insights_9.jpg');
INSERT INTO alineum.t_info_insights (id_insights, info_insights, nombre_imagen) VALUES ('10', 'vacio', 'insights_10.jpg');

USE alineum;
CREATE  OR REPLACE VIEW view_opciones_insights AS
SELECT t_info_insights.id_info_insights AS insights, t_cat_opciones_insights.id_cat_insights AS id_opciones , t_cat_opciones_insights.opcion_insights AS opciones, t_info_insights.info_insights AS info , t_info_insights.nombre_imagen AS nom_img  FROM t_info_insights INNER JOIN t_cat_opciones_insights ON t_info_insights.id_info_insights = t_cat_opciones_insights.id_cat_insights;
CREATE TABLE alineum.t_colaboradores (
  id_colaboradores INT NOT NULL AUTO_INCREMENT,
  nombre_colaborador VARCHAR(255) NOT NULL,
  puesto VARCHAR(255) NOT NULL,
  informacion_col TEXT NOT NULL,
  nombre_imagen VARCHAR(45) NOT NULL,
  insersion_colaboradores DATETIME NOT NULL DEFAULT now(),
  PRIMARY KEY (id_colaboradores));
INSERT INTO alineum.t_colaboradores (nombre_colaborador, puesto, informacion_col, nombre_imagen) VALUES ('Esther Murow', 'Directora General', 'Directora general experimentada con una trayectoria demostrada en la creación, apertura y operación de negocios basados ​​en la tecnología. Actualmente en la industria de consultoría empresarial especializada en estrategia e innovación. Catalizadora de ideas y proyectos, con gran experiencia en la viabilidad de iniciativas estratégicas de cambio, crecimiento y expansión.', 'colaborador_1.jpg');
INSERT INTO alineum.t_colaboradores (nombre_colaborador, puesto, informacion_col, nombre_imagen) VALUES ('Jose Luis Ramírez ', 'Consultor Senior', 'Especialista en planeación estratégica, diseño y optimización en Modelo de Negocios Innovadores. Contribuido en el desarrollo de mercados, productos, servicios y optimización de la rentabilidad del negocio. Experto en Estrategia de Empresa con base en la identificación y creación de valor al cliente y Estrategia de precios.', 'colaborador_2.jpg');
INSERT INTO alineum.t_colaboradores (nombre_colaborador, puesto, informacion_col, nombre_imagen) VALUES ('Carlos Meillon', 'Especialista en Sistemas y Supply Chain', 'Arquitecto de Sistemas que soportan la operación e inteligencia de los negocios. Experto en diseño de procesos asociados a la operación de empresas y en la creación de modelos matemáticos de pronósticos y optimización. Integrador de soluciones tecnológicas que soportan el negocio con base en planeación e implementación de infraestructura de TI para el soporte de la operación.', 'colaborador_3.jpg');
INSERT INTO alineum.t_colaboradores (nombre_colaborador, puesto, informacion_col, nombre_imagen) VALUES ('Leonardo Kuba', 'Especialista en Finanzas y Control', 'Consultor con experiencia en el área financiera de diferentes industrias incluyendo banca, desarrollo inmobiliario, comercio y entretenimiento. Participación en elaboración de proyecciones financieras para nuevos planes de negocios, planes financieros para controlar negocios existentes, y diseño de sistemas de información y control', 'colaborador_4.jpg');
INSERT INTO alineum.t_colaboradores (nombre_colaborador, puesto, informacion_col, nombre_imagen) VALUES ('Dafne Salinas ', 'Project Manager', 'Experta en definición de la estrategia para realizar un proyecto concreto y supervisar su ejecución. Asignación de recursos económicos y humanos para cada actividad detectando riesgos potenciales y soluciones que se aplicarían. Supervisión de ejecución de tareas y cierre de cada etapa para rendir cuentas ante la compañía cliente.', 'colaborador_5.jpg');
INSERT INTO alineum.t_colaboradores (nombre_colaborador, puesto, informacion_col, nombre_imagen) VALUES ('Iliana López', 'Especialista en Marketing e Inteligencia de Negocios', 'Participación en la creación de marcas y productos de consumo masivo, desarrollo de planes de negocio y validación de iniciativas estratégicas. Supervisión y control de estudios cuantitativos y cualitativos, análisis enfocado en la entrega de resultados para la toma de decisiones. ', 'colaborador_6.jpg');
INSERT INTO alineum.t_colaboradores (nombre_colaborador, puesto, informacion_col, nombre_imagen) VALUES ('Isaac Franklin', 'Especialista en Finanzas y Supply Chain', 'Habilidad como negociador y conciliador para el logro de objetivos, formación de grupos de trabajo interdisciplinarios como consejos y asociaciones, con experiencia en firmas internacionales. Diseño de estrategias que conduzcan al crecimiento de la organización y la rentabilidad a nivel global.', 'colaborador_7.jpg');
CREATE TABLE alineum.t_info_nosotros (
  id_info_nosotros INT NOT NULL AUTO_INCREMENT,
  id_nosotros INT NOT NULL,
  info_nosotros TEXT NOT NULL,
  nombre_imagen VARCHAR(45) NOT NULL,
  insersion_nosotros DATETIME NOT NULL DEFAULT now(),
  PRIMARY KEY (id_info_nosotros));
ALTER TABLE alineum.t_info_nosotros 
ADD INDEX fk_info_nosotros_idx (id_nosotros ASC);
;
ALTER TABLE alineum.t_info_nosotros 
ADD CONSTRAINT fk_info_nosotros
  FOREIGN KEY (id_nosotros)
  REFERENCES alineum.t_cat_opciones_nosotros (id_cat_nosotros)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
USE alineum;
CREATE  OR REPLACE VIEW view_opciones_nosotros AS
SELECT t_info_nosotros.id_info_nosotros AS nosotros, t_cat_opciones_nosotros.id_cat_nosotros AS id_opciones, t_cat_opciones_nosotros.opcion_nosotros AS opciones, t_info_nosotros.info_nosotros AS info, t_info_nosotros.nombre_imagen AS nom_img FROM t_info_nosotros INNER JOIN t_cat_opciones_nosotros ON t_info_nosotros.id_info_nosotros = t_cat_opciones_nosotros.id_cat_nosotros;

CREATE TABLE alineum.t_info_servicios (
  id_info_servicios INT NOT NULL AUTO_INCREMENT,
  id_servicios INT NOT NULL,
  info_servicios TEXT NOT NULL,
  nombre_imagen VARCHAR(45) NOT NULL,
  insersion_servicios DATETIME NOT NULL DEFAULT now(),
  PRIMARY KEY (id_info_servicios));
ALTER TABLE alineum.t_info_servicios 
ADD INDEX fk_info_servicios_idx (id_servicios ASC);
;
ALTER TABLE alineum.t_info_servicios 
ADD CONSTRAINT fk_info_servicios
  FOREIGN KEY (id_servicios)
  REFERENCES alineum.t_cat_opciones_servicios (id_cat_servicios)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
USE alineum;
CREATE  OR REPLACE VIEW view_opciones_servicios AS
SELECT t_info_servicios.id_info_servicios AS servicios, t_cat_opciones_servicios.id_cat_servicios AS id_opciones, t_cat_opciones_servicios.opcion_servicio AS opciones, t_info_servicios.info_servicios AS info, t_info_servicios.nombre_imagen AS nom_img FROM t_info_servicios INNER JOIN t_cat_opciones_servicios ON t_info_servicios.id_info_servicios = t_cat_opciones_servicios.id_cat_servicios;

INSERT INTO alineum.t_info_servicios(id_servicios,info_servicios,nombre_imagen)
    VALUES ('1',
            'Para que una empresa pueda seguir creciendo, es necesario contar con un plan estratégico e “insights” más inteligentes sobre el cliente y factores externos a la empresa. Las decisiones y soluciones establecidas hoy ayudarán a definir el futuro de la empresa.
            El objetivo es ayudar a los líderes de empresas a resolver decisiones para generar valor y lograr una transformación exitosa',
            'servicios_1.jpg');

INSERT INTO alineum.t_info_servicios (id_servicios,info_servicios,nombre_imagen)
    VALUES ('2',
            'Como empresarios sabemos que la innovación es un importante paso para el éxito de tu negocio porque permite crear un valor agregado a través de la implementación de nuevas herramientas, equipo, tecnología, metodologías y procesos innovadores que desafían lo establecido para tomar ventaja de los competidores y diferenciarte por un alto status en tus servicios.
            Por nuestros años de experiencia en el  ámbito de la Innovación, mejoramos procesos y metodologías para que tu negocio pueda ir de la mano con las nuevas tecnologías y los recursos necesarios para seguir creciendo en el mercado y lograr posicionar en el.',
            'servicios_2.jpg');

INSERT INTO alineum.t_info_servicios (id_servicios,info_servicios,nombre_imagen)
    VALUES ('3',
            'Ayudamos a los líderes a generar cambios que impacten de manera positiva tanto a la organización como a los clientes. Ofrecemos distintas soluciones con base en las necesidades de cada cliente: branding, estrategia de precios, marketing digital y análisis de mercado.
            Las estrategias de hoy necesitan innovación gracias a la evolución de tecnología. Se requiere generar atracción, experiencia y lealtad creando objetivos basados en datos, creatividad y centrados en el cliente.',
            'servicios_3.jpg');

INSERT INTO alineum.t_info_servicios (id_servicios,info_servicios,nombre_imagen)
    VALUES ('4',
            'Son las experiencias que el cliente tiene con su empresa a lo largo de todo el “consumer journey”, desde el primer contacto con el producto o servicio, hasta que el cliente sea leal a la organización. 
            Se necesita una comprensión clara de las interacciones del cliente con la empresa y su percepción de la oferta de valor en cada etapa del “consumer journey” para poder brindar el mejor servicio.',
            'servicios_4.jpg');

INSERT INTO alineum.t_info_servicios (id_servicios,info_servicios,nombre_imagen)
    VALUES ('5',
            'Gracias nuestro saber qué hacer en la área de asesoría tecnológica te ofrecemos un servicio altamente especializado que nos permiten abordar proyectos que necesiten una fuerte solución y adaptación a las  particularidades de tu empresa para que no te alejes de tus competidores ,empezando de lo más básico que es la identificación del problema hasta la resolución de este, todo basado en estrategias altamente personalizadas para tu organización, por lo que se mantiene en todo momento una estrecha colaboración con la empresa. ',
            'servicios_5.jpg');

INSERT INTO alineum.t_info_servicios (id_servicios,info_servicios,nombre_imagen)
    VALUES ('6',
            'Al implementar el uso de data analytics e inteligencia de negocios, las organizaciones suelen estar mejor equipadas para tomar decisiones estratégicas más informadas y certeras. Dispuestos a ayudarte tenemos un servicio para darte soluciones con inteligencia y Data Analytics para resolver problemas que se presentan en tu negocio. Primero comenzamos con una serie de estrategias e iniciativas de Big Data y Data Analytics para llevar al límite tu negocio, para mejorar inversión y reducir el riesgo de implementación, cumpliendo con los objetivos de tu organización.',
            'servicios_6.jpg');

INSERT INTO alineum.t_info_servicios (id_servicios,info_servicios,nombre_imagen)
    VALUES ('7',
            'La operación es la conexión entre la estrategia de la empresa y el éxito de la organización. Por ello, para ofrecer un crecimiento sostenible, se necesita una aplicación de tecnología cuando se necesite y donde se necesite. Esta aplicación requerirá ser innovadora para poder transformar y ejecutar tecnologías existentes, sabiendo aprovecharlas para impulsar mejoras en el producto, servicio y/o rendimiento financiero.',
            'servicios_7.jpg');

INSERT INTO alineum.t_info_servicios (id_servicios,info_servicios,nombre_imagen)
    VALUES ('8',
            'Trabajamos de la mano con nuestros clientes para asegurar que sus organizaciones sean capaces de lograr sus objetivos y que sus estrategias sean sostenibles en años futuros. Para ello, integramos de manera holística los siguientes aspectos: Cultura y cambio continuo para asegurar la salud de la organización Agilidad para adaptarse a cambios y adoptar nuevas herramientas a lo largo de la organización. Diseño de organización que incluya la estructura de la empresa, procesos y responsabilidades de puesto.',
            'servicios_8.jpg');


INSERT INTO alineum.t_info_servicios (id_servicios,info_servicios,nombre_imagen)
    VALUES ('9',
            'Nosotros sabemos que es importante el éxito en tu negocio por eso estamos comprometidos para ofrecerte el mejor servicio dentro del mercado,  para que logres tus objetivos empresariales de mano de nuestros especialistas. Te guiaremos hacia tu crecimiento organizacional con estrategias que implementan los métodos, procesos y tecnología más recientes e innovadores que existen en mundo empresarial. ',
            'servicios_9.jpg');


INSERT INTO alineum.t_info_servicios (id_servicios,info_servicios,nombre_imagen)
    VALUES ('10',
            'Gracias a nuestros especialistas en Marketing, Finanzas, Sistemas, Supply Chain y Control podemos brindarte una asesoría altamente personalizada que tome los objetivos de tu empresa para implementar planes estratégicos que estén alineados a tus necesidades y así lograr el éxito que tanto deseas. Estamos altamente comprometidos en transferir experiencia para asesorarte a ti como empresario para lograr una apertura y operación de tu organización basados ​​en la tecnología e innovación.',
            'servicios_10.jpg');

INSERT INTO alineum.t_info_servicios (id_servicios,info_servicios,nombre_imagen)
    VALUES ('11',
            'Combinamos nuestras herramientas y “expertise” para ayudar al CFO de cualquier empresa a maximizar su valor. Esto involucra un establecimiento de estrategia para poder generar valor a lo largo de toda la empresa. Con base en las necesidades del cliente, transformamos la organización financiera y establecemos caminos para poder tomar las mejores decisiones financieras.',
            'servicios_11.jpg');
 



INSERT INTO alineum.t_info_nosotros(id_nosotros,info_nosotros,nombre_imagen)
    VALUES ('1',
            'Nuestros clientes son los dueños de Empresas PYME´s, Directores Generales o fundadores que buscan redefinir el rumbo, innovar y buscar horizontes más rentables con un enfoque patrimonial, asegurando la sostenibilidad de su negocio.<br>
             Disparadores de cambio: <br>
            <ul>
                <li>Búsqueda de certeza en la estrategia y nuevas iniciativas.</li>
                <li>Adquisiciones y Fusiones</li>
                <li>Factibilidad del cambio ante un entorno dinámico</li>
                <li>«Discovery» para encontrar modelos novedosos</li>
                <li>Necesidad de diagnosticar problemas y hallar soluciones</li>
                <li>Necesidad de elevar el nivel de eficiencia y competencia del área comercial</li>
                <li>Necesidad de generar barreras y minimizar dependencias</li>
            </ul> <br> ¿Con qué industrias hemos trabajado? <br>
            ¿Cuál es la cartera de clientes (Nombre, Industria, Resultado tangible)?
            <ul>
                <li>Vazza</li>
                <li>Lineas</li>
                <li>Garabatos</li>
                <li>Vonhaucke</li>
                <li>Compucentro</li>
                <li>Pakmail</li>
                <li>México solar</li>
                <li>Grupo Aguavento</li>
                <li>Marinter</li>
                <li>Novelty</li>
                <li>Dentadec</li>
                <li>Kram</li>
                <li>Eximex</li>
                <li>Green republic</li>
                <li>ifahto</li>
            </ul>
            ¿Cómo ayudamos a nuestros clientes? <br>
            Hemos construido un networking valioso para ofrecer alianzas estratégicas, con compañías nacionales e internacionales.',
            'nosotros_1.jpg');

INSERT INTO alineum.t_info_nosotros(id_nosotros,info_nosotros,nombre_imagen)
    VALUES ('2',
            '¿Por qué nace ALINEUM? <br> Alineum es una consultora que ofrece experiencia personalizada para pymes y start-ups. Somos un grupo de empresarios trabajando para empresarios, resolviendo problemas que son importantes para nuestros clientes y el mundo. Hacemos una diferencia a través de resultados apegados a la realidad mediante un “mindset” innovador y transformador.',
            'nosotros_2.jpg');

INSERT INTO alineum.t_info_nosotros(id_nosotros,info_nosotros,nombre_imagen)
    VALUES ('3','vacio','nosotros_3.jpg');


INSERT INTO alineum.t_info_nosotros(id_nosotros,info_nosotros,nombre_imagen)
    VALUES ('4',
            'El trabajo colaborativo y de acompañamiento en las diferentes etapas que realiza Alineum y sus clientes permite desarrollar el mindset innovador y transformador, equipos de trabajo con competencias alineadas a la iniciativa propuesta, condiciones necesarias para afrontar la incertidumbre y ser capaces de responder rápidamente a los cambios. <br> Gracias a la metodología propia probada y exitosa llevamos a las empresas del punto en el que se encuentran hasta el punto a donde quieren llegar. Esta metodología pone a nuestros clientes en el centro de todo el quehacer empresarial. "Client Centric" <br> 
            <ul>
                <li>Analizamos el desempeño actual de la empresa y su potencial.</li>
                <li>Plan de acción Llevamos a nuestros clientes desde el punto en el que se encuentran al punto en donde quieren llegar implantando y ejecutando estrategias, transformando los diferentes procesos de negocio de nuestros clientes para alinearse al mercado</li>
                <li>Construimos inteligencia de negocios, ofrecemos información analizada y procesada, así como modelos predictivos, logrando que nuestros clientes tomen decisiones fundamentadas, certeras y con oportunidad.</li>
                <li>Acompañamos y participamos en la ejecución de los planes de acción para así asegurar su éxito. Evaluamos y monitoreamos constantemente los avances generando un proceso de mejora continua que incremente la eficiencia y eficacia de la organización.</li>
            </ul>',
            'nosotros_4.jpg');
CREATE TABLE alineum.t_contactanos (
  id_contactanos INT NOT NULL AUTO_INCREMENT,
  empresa VARCHAR(245) NOT NULL,
  empleados VARCHAR(245) NOT NULL,
  delegacion VARCHAR(245) NOT NULL,
  necesitas VARCHAR(245) NOT NULL,
  necesito VARCHAR(245) NOT NULL,
  insersion_contactanos DATETIME NOT NULL DEFAULT now(),
  PRIMARY KEY (id_contactanos));

  
#---------------------------------NUEVO
CREATE TABLE alineum.t_usuarios (
  id_usuarios INT NOT NULL AUTO_INCREMENT,
  nombres_persona VARCHAR(245) NOT NULL,
  apellidos_persona VARCHAR(245) NOT NULL,
  fecha_nacimiento VARCHAR(245) NOT NULL,
  sexo_persona VARCHAR(245) NOT NULL,
  telefono_persona VARCHAR(245) NOT NULL,
  descripcion TEXT NOT NULL,
  estado INT NOT NULL,
  insersion_usuario DATETIME NOT NULL DEFAULT now(),
  PRIMARY KEY (id_usuarios));

CREATE TABLE alineum.t_cat_roles (
  id_cat_roles INT NOT NULL AUTO_INCREMENT,
  roles VARCHAR(45) NOT NULL,
  insersion_roles DATETIME NOT NULL DEFAULT now(),
  PRIMARY KEY (id_cat_roles));

CREATE TABLE alineum.users (
  id BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  id_usuario INT NOT NULL,
  id_rol INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  email_verified_at TIMESTAMP NULL DEFAULT NULL,
  password VARCHAR(255) NOT NULL,
  url_image VARCHAR(255) NOT NULL,
  remember_token VARCHAR(100) NULL DEFAULT NULL,
  created_at TIMESTAMP NULL DEFAULT NULL,
  updated_at TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX email_UNIQUE (email ASC))
ENGINE = InnoDB;

ALTER TABLE alineum.users
ADD INDEX fk_usuarios_idx (id_usuario ASC);
;
ALTER TABLE alineum.users
ADD CONSTRAINT fk_datos_usuarios
  FOREIGN KEY (id_usuario)
  REFERENCES alineum.t_usuarios (id_usuarios)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE alineum.users
ADD INDEX fk_rol_users_idx (id_rol ASC);
;
ALTER TABLE alineum.users
ADD CONSTRAINT fk_rol_users
  FOREIGN KEY (id_rol)
  REFERENCES alineum.t_cat_roles (id_cat_roles)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE alineum.t_contactanos 
ADD COLUMN id_usuarios INT NOT NULL AFTER id_contactanos;

ALTER TABLE alineum.t_contactanos 
ADD INDEX fk_usuarios_idx (id_usuarios ASC);
;
ALTER TABLE alineum.t_contactanos 
ADD CONSTRAINT fk_usuarios
  FOREIGN KEY (id_usuarios)
  REFERENCES alineum.t_usuarios (id_usuarios)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
INSERT INTO alineum.t_cat_roles (roles) VALUES ('Empresa');
INSERT INTO alineum.t_cat_roles (roles) VALUES ('Usuario comun');
INSERT INTO alineum.t_cat_roles (roles) VALUES ('Usuario Alineum');
INSERT INTO alineum.t_cat_roles (roles) VALUES ('Admin');

CREATE TABLE alineum.t_temas_relacionados (
  id_temas_relacionados INT NOT NULL AUTO_INCREMENT,
  id_usuarios INT NOT NULL,
  id_temas INT NOT NULL,
  insersion_temas DATETIME NOT NULL DEFAULT now(),
  PRIMARY KEY (id_temas_relacionados));

ALTER TABLE alineum.t_temas_relacionados 
ADD INDEX fk_temas_usuarios_idx (id_usuarios ASC),
ADD INDEX fk_temas_idx (id_temas ASC);
;
ALTER TABLE alineum.t_temas_relacionados 
ADD CONSTRAINT fk_temas_usuarios
  FOREIGN KEY (id_usuarios)
  REFERENCES alineum.t_usuarios (id_usuarios)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT fk_temas
  FOREIGN KEY (id_temas)
  REFERENCES alineum.t_cat_opciones_insights (id_cat_insights)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

#---------------------------------ARTICULO

CREATE TABLE alineum.t_articulos (
  id_articulo INT NOT NULL AUTO_INCREMENT,
  id_usuario INT NOT NULL,
  categoria varchar(255) NOT NULL,
  titulo_articulo VARCHAR(245) NOT NULL,
  nom_image VARCHAR(245) NOT NULL,
  contenido_articulo TEXT NOT NULL,
  resumen TEXT NOT NULL,
  reacciones INT NOT NULL DEFAULT 0
  insersion_articulo DATETIME NOT NULL DEFAULT now(),
  PRIMARY KEY (id_articulo));
USE alineum;
CREATE  OR REPLACE VIEW view_articulos AS
SELECT 
    articulos.id_articulo AS idArticulo,
    articulos.categoria AS categoria,
    articulos.titulo_articulo AS tituloArticulo,
    articulos.nom_image AS portada,
    articulos.contenido_articulo AS contenido,
    articulos.resumen AS resumen,
    articulos.reacciones AS reacciones,
    usuarios.name AS nameuser,
    usuarios.email AS correo,
    usuarios.url_image AS nomImage,
    users.descripcion AS descripcion
FROM
    t_articulos AS articulos
        INNER JOIN
    users AS usuarios
        INNER JOIN
    t_usuarios AS users ON articulos.id_usuario = usuarios.id_usuario AND articulos.id_usuario = users.id_usuarios;

CREATE TABLE alineum.t_reacciones (
  id_reacciones INT NOT NULL AUTO_INCREMENT,
  id_user INT NOT NULL,
  id_articulo INT NOT NULL,
  reaccion INT NOT NULL DEFAULT 1,
  insersion DATETIME NOT NULL DEFAULT now(),
  PRIMARY KEY (id_reacciones));

ALTER TABLE alineum.t_reacciones 
ADD INDEX fk_usersR_idx (id_user ASC),
ADD INDEX fk_articulosR_idx (id_articulo ASC);
;
ALTER TABLE alineum.t_reacciones 
ADD CONSTRAINT fk_usersR
  FOREIGN KEY (id_user)
  REFERENCES alineum.users (id_usuario)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT fk_articulosR
  FOREIGN KEY (id_articulo)
  REFERENCES alineum.t_articulos (id_articulo)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
