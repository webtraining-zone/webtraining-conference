-- MySQL dump 10.13  Distrib 8.0.11, for macos10.13 (x86_64)
--
-- Host: localhost    Database: conference_db
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(6,'2018_08_01_232116_create_rooms_table',2),(7,'2018_08_01_234520_create_talks_table',2),(9,'2018_08_03_194135_create_news_table',3),(10,'2019_04_09_183850_create_sponsors_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `news_user_id_foreign` (`user_id`),
  CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Ya está confirmada la fecha y lugar de la primera edición de Webtraining Conference','ya-esta-confirmada-la-fecha-y-lugar-de-la-primera-edicion-de-webtraining-conference','Prepara tus maletas, ya tenemos la sede lista para la primera edición del evento sobre\n                                la web más genial del año. Ven y aprende de muchos profesionales de la web reunidos en\n                                un mismo lugar. Sé parte de esta experiencia y aprende cómo se hacen proyectos en las grandes ligas.','Prepara tus maletas, ya tenemos la sede lista para la primera edición del evento sobre\n                                la web más genial del año. Ven y aprende de muchos profesionales de la web reunidos en\n                                un mismo lugar. Sé parte de esta experiencia y aprende cómo se hacen proyectos en las grandes ligas.',33,NULL,NULL,'2018-08-03 11:00:00','2018-08-03 16:00:00','2018-08-03 16:00:00'),(2,'A news about something interesting','a-news-about-something-interesting','summary','body',1,NULL,NULL,'2018-10-23 14:56:34','2018-08-11 07:14:33','2018-08-11 07:14:33');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rooms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'Room A','room-a','Non aut ab laboriosam tempore ea dolorem. Rerum deserunt voluptatem voluptate non et cum. Et incidunt quaerat dolor unde.','2018-08-03 04:07:03','2018-08-03 04:07:03'),(2,'Room B','room-b','Placeat neque eaque debitis in occaecati. Officiis placeat sunt iusto distinctio consequuntur molestiae temporibus. Ut distinctio commodi odit saepe eius repudiandae reprehenderit eos.','2018-08-03 04:07:03','2018-08-03 04:07:03'),(3,'Room C','room-c','Aut voluptatem adipisci ea pariatur rerum eius est. Neque voluptatem assumenda totam dignissimos consectetur facilis rerum. Sequi eveniet voluptas culpa eum harum.','2018-08-03 04:07:03','2018-08-03 04:07:03'),(4,'Room D','room-d','Numquam voluptate est quia quasi error. Labore sint ea voluptas iusto. Nihil recusandae quibusdam ducimus et explicabo repellendus ea. Et natus totam culpa necessitatibus optio.','2018-08-03 04:07:03','2018-08-03 04:07:03'),(5,'Room E','room-e','Adipisci voluptate earum cumque ex minus aliquid. Est officia voluptatem tempora error sit. Corrupti aut laudantium similique totam ut nulla. Porro facilis eveniet est vitae quo libero porro consequatur.','2018-08-03 04:07:03','2018-08-03 04:07:03'),(6,'Room F','room-f','Voluptatibus quaerat odio et sit ut. Minima distinctio et et porro officiis odit. Ut et natus accusantium repellat voluptatibus explicabo. Rerum omnis temporibus et quaerat eum adipisci iusto. Veritatis a quae corrupti autem quam.','2018-08-03 04:07:03','2018-08-03 04:07:03'),(7,'Room G','room-g','Fugit sed blanditiis culpa. Dolorem molestiae dolore dolorem ea ipsam iusto sed magnam. Doloremque deserunt doloremque voluptate ut. Inventore voluptates sed recusandae tempora.','2018-08-03 04:07:03','2018-08-03 04:07:03'),(8,'Room H','room-h','Praesentium expedita praesentium culpa consequatur. Repudiandae incidunt sint velit consequuntur nesciunt. Laboriosam totam cumque commodi voluptatem ex. Impedit vel sed impedit aut debitis expedita quisquam. Occaecati velit inventore et.','2018-08-03 04:07:03','2018-08-03 04:07:03'),(9,'Room I','room-i','Quas at quia aut voluptatem voluptatem dicta eum. Nostrum amet quo sed molestiae eveniet. Optio eligendi sint repellendus. Quisquam exercitationem explicabo ut nihil minus occaecati.','2018-08-03 04:07:03','2018-08-03 04:07:03'),(10,'Room J','room-j','Tempore corrupti omnis ratione ex modi et. Ullam occaecati et minus id. Iste hic optio perspiciatis repellat occaecati enim. Ut qui tenetur reprehenderit voluptate ipsam.','2018-08-03 04:07:03','2018-08-03 04:07:03');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsors`
--

DROP TABLE IF EXISTS `sponsors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sponsors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('PLATINUM','GOLD','SILVER') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsors`
--

LOCK TABLES `sponsors` WRITE;
/*!40000 ALTER TABLE `sponsors` DISABLE KEYS */;
INSERT INTO `sponsors` VALUES (1,'Carbon LDP','carbonldp','Carbon is the platform we’ve always wanted.\nIt speeds up our development and\nconnects all of our data sources.','https://carbonldp.com/wp-content/uploads/2018/10/logo-official.svg','https://carbonldp.com/wp-content/uploads/2018/10/logo-official.svg','PLATINUM','2019-04-04 19:23:40','2019-04-04 19:23:40'),(2,'Webtraining World','webtraining-world','Education for the future we envision','https://webtraining.zone/img/logo-webtraining.png','https://webtraining.zone/img/logo-webtraining.png','GOLD','2019-04-02 19:23:40','2019-04-02 19:23:40');
/*!40000 ALTER TABLE `sponsors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `talks`
--

DROP TABLE IF EXISTS `talks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `talks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `room_id` int(10) unsigned NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `starts_at` datetime NOT NULL,
  `ends_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `talks_user_id_foreign` (`user_id`),
  KEY `talks_room_id_foreign` (`room_id`),
  CONSTRAINT `talks_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE,
  CONSTRAINT `talks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talks`
--

LOCK TABLES `talks` WRITE;
/*!40000 ALTER TABLE `talks` DISABLE KEYS */;
INSERT INTO `talks` VALUES (1,'Observables con JavaScript','observables-con-javascript','¿Así que has escuchado hablar sobre programación reactiva pero el concepto no te ha quedado claro? ¿Te gustaría saber cuál es la diferencia entre una Promesa y un Observable? ¿Quisieras comprender cómo Angular hace uso de los famosos streams?',33,1,'/img/talks/observables-javascript.jpg','/img/talks/observables-javascript.jpg','¿Así que has escuchado hablar sobre programación reactiva pero el concepto no te ha quedado claro? ¿Te gustaría saber cuál es la diferencia entre una Promesa y un Observable? ¿Quisieras comprender cómo Angular hace uso de los famosos streams?','2018-11-01 09:00:00','2018-11-01 10:00:00','2018-08-03 04:07:03','2018-08-03 04:07:03'),(2,'Herramientas Profesionales para Desarrollo Front-end','herramientas-profesionales-para-desarrollo-front-end','¿Has escuchado hablar de compresión de código fuente, compilación, pre-procesadores, optimización de imágenes y cosas por el estilo? Pues bien, durante este curso aprenderás las herramientas preferidas por los desarrolladores front-end profesionales, Gulp.js, NPM, Bower, Uglify y mucho mucho más.',34,2,'/img/talks/event-herramientas-profesionales.jpg','/img/talks/event-herramientas-profesionales.jpg','<p>&iquest;Has escuchado hablar de compresi&oacute;n de c&oacute;digo fuente, compilaci&oacute;n, pre-procesadores, optimizaci&oacute;n de im&aacute;genes y cosas por el estilo? Pues bien, durante este curso aprender&aacute;s las herramientas preferidas por los desarrolladores front-end profesionales, Gulp.js, NPM, Bower, Uglify y mucho mucho m&aacute;s.</p>','2018-11-01 10:00:00','2018-11-01 11:00:00','2018-08-03 04:07:03','2018-08-03 04:07:03'),(3,'Datos Estructurados para SEO','datos-estructurados-para-seo','¿Te has preguntado cómo le hacen los buscadores para encontrar información? ¿cómo podrías enriquecer tu sitio con datos para que refinar los resultados de buscadores como Google? ¿Has escuchado sobre Schema.org  pero no te queda claro qué es eso y qué beneficios podría traer para tu negocio?',35,3,'/img/talks/evento-datos-estructurados-seo.jpg','/img/talks/evento-datos-estructurados-seo.jpg','<p>Durante este taller estaremos revisando el concepto de &quot;<strong>fragmentos enriquecidos mediante datos estructurados</strong>&quot;, daremos un <strong>ejemplo pr&aacute;ctico de implementaci&oacute;n</strong> y revisaremos algo que se est&aacute; convirtiendo en un est&aacute;ndar.</p>','2018-11-01 11:00:00','2018-11-01 12:00:00','2018-08-03 04:07:03','2018-08-03 04:07:03'),(4,'Cómo usar Vue CLI','como-usar-vue-cli','Durante este taller estaremos revisando a detalle la versión más reciente de la Vue CLI, que nos permite optimizar nuestro flujo de trabajo con aplicaciones de Vue.',36,4,'/img/talks/vue-cli.png','/img/talks/vue-cli.png','<p>&iquest;As&iacute; que has escuchado hablar sobre <strong>programaci&oacute;n reactiva</strong> pero el concepto no te ha quedado claro? &iquest;Te gustar&iacute;a saber cu&aacute;l es la diferencia entre una <strong>Promesa</strong> y un <strong>Observable</strong>?</p>\n<p>&iquest;Quisieras comprender c&oacute;mo Angular hace uso de los famosos <em>streams</em>?</p>\n<p>En este taller estaremos revisando con detenimiento varios de los conceptos que a veces no son tan f&aacute;ciles de comprender. Ven y aprende los fundamentos que te permitir&aacute;n crear <strong>componentes reactivos </strong>en JavaScript.</p>','2018-11-01 12:00:00','2018-11-01 13:00:00','2018-08-03 04:07:03','2018-08-03 04:07:03'),(5,'REST APIs con Postman y HTTPie','rest-apis-con-postman-y-httpie','Durante este evento aprenderemos a utilizar estas interesantes herramientas para desarrollar y probar APIs.',37,5,'/img/talks/event-postman-httpie_.jpg','/img/talks/event-postman-httpie_.jpg','<p>Durante este evento aprenderemos a utilizar estas interesantes herramientas para desarrollar y probar APIs.</p>\n\n<ul>\n<li>Interfaz para enviar request, guardar respuestas, a&ntilde;adir test y crear flujos de trabajo.</li>\n<li>Historial de request</li>\n<li>Creaci&oacute;n de variables</li>\n<li>Creaci&oacute;n de Entornos</li>\n<li>Creaci&oacute;n de Collections</li>\n</ul>','2018-11-01 13:00:00','2018-11-01 14:00:00','2018-08-03 04:07:03','2018-08-03 04:07:03'),(6,'Creando un REST API con Node.js','creando-un-rest-api-con-nodejs','¿Has escuchado el concepto de REST API pero no te quedó claro para qué sirve y cómo puede ser utilizado para crear aplicaciones web o móviles? Durante este curso corto pero efectivo, estaremos revisando cómo crear un REST API completamente desde cero. Pasaremos por la revisión de dos excelentes lenguajes de descripción: RAML y SWAGGER. ',38,6,'/img/talks/event-restApi-nodejs.jpg','/img/talks/event-restApi-nodejs.jpg','<p>&iquest;Has escuchado el concepto de REST API pero no te qued&oacute; claro para qu&eacute; sirve y c&oacute;mo puede ser utilizado para crear aplicaciones web o m&oacute;viles? Durante este curso corto pero efectivo, estaremos revisando c&oacute;mo crear un REST API completamente desde cero. Pasaremos por la revisi&oacute;n de dos excelentes lenguajes de descripci&oacute;n: RAML y SWAGGER.&nbsp;</p>','2018-11-02 09:00:00','2018-11-02 10:00:00','2018-08-03 04:07:03','2018-08-03 04:07:03'),(7,'UNIX y GNU/Linux para Desarrolladores Front-end','comandos-de-unix-para-desarrolladores-front-end','Un sistema de plantillas puede darte una excelente forma generar vistas dinámicas, no requieren un framework tan grande para poder funcionar y puede ayudarte a separar tu proyecto de front-end en capas. Durante este curso aprenderemos cómo instalar un template system, como integrarlo a una aplicación de Vanilla JavaScript y conceptos avanzados como helpers y rendering asíncrono.',39,7,'/img/talks/event-comandos-unix.jpg','/img/talks/event-comandos-unix.jpg','<p>Hoy por hoy los sistemas basados en UNIX se han vuelto de los favoritos para creaci&oacute;n de aplicaciones de front-end. Durante este curso estaremos revisando algunos de los comandos que puede ayudarte a hacer m&aacute;s eficiente tu flujo de trabajo como desarrollador de aplicaciones. No necesitas, ser un <strong><em>hacker</em></strong> para poder dominar las bases de <strong>UNIX</strong>, s&oacute;lo un poco de estudio y mucha pr&aacute;ctica. Ven y aclara tus dudas sobre este poderoso sistema operativo.</p>','2018-11-02 10:00:00','2018-11-02 11:00:00','2018-08-03 04:07:03','2018-08-03 04:07:03'),(8,'Template Systems en JavaScript (Handlebars, Dust.js)','template-systems-en-javascript-handlebars-dustjs','Un sistema de plantillas puede darte una excelente forma generar vistas dinámicas, no requieren un framework tan grande para poder funcionar y puede ayudarte a separar tu proyecto de front-end en capas. Durante este curso aprenderemos cómo instalar un template system, como integrarlo a una aplicación de Vanilla JavaScript y conceptos avanzados como helpers y rendering asíncrono.',40,8,'/img/talks/event-template-system-javascript.jpg','/img/talks/event-template-system-javascript.jpg','<p>Un sistema de plantillas puede darte una excelente forma generar vistas din&aacute;micas, no requieren un framework tan grande para poder funcionar y puede ayudarte a separar tu proyecto de front-end en capas. Durante este curso aprenderemos c&oacute;mo instalar un template system, como integrarlo a una aplicaci&oacute;n de Vanilla JavaScript y conceptos avanzados como helpers y rendering as&iacute;ncrono.</p>','2018-11-02 11:00:00','2018-11-02 12:00:00','2018-08-03 04:07:03','2018-08-03 04:07:03'),(9,'Angular vs Vue','angular-vs-vue','Durante esta sesión estaremos revisando dos excelentes frameworks para creación de aplicaciones front-end; en particular revisaremos a Angular (en su versión 4) y Vue.js, veremos pros y cons, cuándo usar uno u otro, cuál es la curva de aprendizaje, bajo qué circunstancias usarlos (o incluso cuándo y por qué elegir VanillaJs), cuánto me cuesta entrenarme en ellos y qué debo buscar para poder iniciar. Asimismo, revisaremos casos de éxito de ambos frameworks y su estado actual',41,9,'/img/talks/event-angular-vs-vue.jpg','/img/talks/event-angular-vs-vue.jpg','<p>Durante esta sesi&oacute;n estaremos revisando dos excelentes frameworks para creaci&oacute;n de aplicaciones front-end; en particular revisaremos a <strong>Angular </strong>(en su versi&oacute;n 4) y <strong>Vue.js</strong>, veremos pros y cons, cu&aacute;ndo usar uno u otro, cu&aacute;l es la curva de aprendizaje, bajo qu&eacute; circunstancias usarlos (o incluso cu&aacute;ndo y por qu&eacute; elegir VanillaJs), cu&aacute;nto me cuesta entrenarme en ellos y qu&eacute; debo buscar para poder iniciar. Asimismo, revisaremos casos de &eacute;xito de ambos frameworks y su estado actual.</p><p>Adem&aacute;s; explicaremos conceptos referentes a todo el ecosistema front-end como:</p><ul>	<li>Module loaders / bundlers: webpack, JSPM, rollup.</li>	<li>Gestores de dependencias.</li>	<li>Transpiles/compilers: TypeScript</li>	<li>Plataformas para versionamiento de c&oacute;digo</li>	<li>Y m&aacute;s...</li></ul>','2018-11-02 12:00:00','2018-11-02 13:00:00','2018-08-03 04:07:03','2018-08-03 04:07:03'),(10,'Programación Funcional con JavaScript','programacion-funcional-con-javascript','Revisaremos los fundamentos de este interesante paradigma de programación usando el lenguaje JavaScript. Aprenderemos sobre cómo usar diferentes funciones disponibles para manipulación de arreglos y además conceptos como: Inmutabilidad, Closure, Pure Functions y mucho más.',42,10,'/img/talks/evento-programacion-funcional.png','/img/talks/evento-programacion-funcional.png','<p>Revisaremos los fundamentos de este interesante paradigma de programaci&oacute;n usando el lenguaje JavaScript. Aprenderemos sobre c&oacute;mo usar diferentes funciones disponibles para manipulaci&oacute;n de arreglos y adem&aacute;s conceptos como: Inmutabilidad, Closure, Pure Functions y mucho m&aacute;s.</p>','2018-11-02 13:00:00','2018-11-02 14:00:00','2018-08-03 04:07:03','2018-08-03 04:07:03');
/*!40000 ALTER TABLE `talks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Esmeralda','esmeralda@webtraining.zone','$2y$10$SnsS0nQKPkJ8fQJFhBSCFeHCPEulBpi3ccgSuKdHTeV47jSafiYES','Tt3RzVZQ1NRtkJAPUVqrkwndRxIKD0z1Q964HdVNqrLp53NGz7Qtb6ppxpDj','2018-08-01 22:18:40','2018-08-01 22:18:40'),(2,'Jacques Daugherty','myrl17@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','F5owOanQoT','2018-08-02 04:11:35','2018-08-02 04:11:35'),(3,'Prof. Will Wintheiser I','kemmer.howell@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Jis8ZuPqRy','2018-08-02 04:11:35','2018-08-02 04:11:35'),(4,'Kali Prosacco','wskiles@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','rbkKISB1ls','2018-08-03 03:36:36','2018-08-03 03:36:36'),(5,'Rachelle Schaden Sr.','balistreri.rahul@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','PDSyr9U6rD','2018-08-03 03:45:51','2018-08-03 03:45:51'),(6,'Miss Reina Fahey PhD','frami.monserrate@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','gDBZ1SzmZx','2018-08-03 03:46:11','2018-08-03 03:46:11'),(7,'Therese Howell','ila.gutmann@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','d9jo9K9SEh','2018-08-03 03:52:36','2018-08-03 03:52:36'),(8,'Fiona Glover','skiles.diamond@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','A53Ns09uX5','2018-08-03 03:53:09','2018-08-03 03:53:09'),(9,'Bailee Abernathy','maurice.rutherford@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','pL3525pdWy','2018-08-03 03:55:33','2018-08-03 03:55:33'),(10,'Hellen Abbott','dwight00@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','mNkMyGrpXf','2018-08-03 03:55:56','2018-08-03 03:55:56'),(11,'Elody Carroll','blick.creola@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','MaMRjtMxD3','2018-08-03 03:55:56','2018-08-03 03:55:56'),(12,'Prof. Katherine Hilpert II','ignacio60@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','aZJsAo8blZ','2018-08-03 03:55:56','2018-08-03 03:55:56'),(13,'Mr. London Ledner','swalker@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','c0mkSVuGOk','2018-08-03 03:55:56','2018-08-03 03:55:56'),(14,'Karli Heller MD','rutherford.hilma@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Hu6HGmf35H','2018-08-03 03:55:56','2018-08-03 03:55:56'),(15,'Prof. Peter Cummings III','kris.jonathon@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','UPtLxI8TIB','2018-08-03 03:55:56','2018-08-03 03:55:56'),(16,'Lyda Renner','tiffany74@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','TveTDLsoRB','2018-08-03 03:55:56','2018-08-03 03:55:56'),(17,'Glen Walker','gordon.stark@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','hpbBJV2G1e','2018-08-03 03:55:56','2018-08-03 03:55:56'),(18,'Barbara Heller','hermann.dana@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','iM8a4ewHiC','2018-08-03 03:55:56','2018-08-03 03:55:56'),(19,'Prof. Kellie Rempel','branson.schaefer@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','LzhdOb01qo','2018-08-03 03:55:56','2018-08-03 03:55:56'),(20,'Dr. Grady VonRueden','eugenia31@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','XDEdGmpNNq','2018-08-03 03:56:37','2018-08-03 03:56:37'),(21,'Eduardo Reinger','kemmer.hoyt@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','4vlzNU5pX8','2018-08-03 04:04:58','2018-08-03 04:04:58'),(22,'Roma Bahringer','stanley16@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','aPNZgW0s8O','2018-08-03 04:05:05','2018-08-03 04:05:05'),(23,'Mr. Owen Von PhD','melisa.bayer@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','RDeEAePSsd','2018-08-03 04:05:48','2018-08-03 04:05:48'),(24,'Jaleel Kulas','sauer.paolo@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','hcF0JRBxQ5','2018-08-03 04:05:48','2018-08-03 04:05:48'),(25,'Randi Rolfson','malvina43@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','YxIgpCtu5H','2018-08-03 04:05:48','2018-08-03 04:05:48'),(26,'Tracey Jacobi II','macejkovic.abigail@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','bU87yrtcaq','2018-08-03 04:05:48','2018-08-03 04:05:48'),(27,'Prof. Maiya Schamberger','jonas.bailey@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','8oBiynToDS','2018-08-03 04:05:48','2018-08-03 04:05:48'),(28,'Luna Gutkowski','jason54@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','DtK8APxjPy','2018-08-03 04:05:48','2018-08-03 04:05:48'),(29,'Durward Schmeler PhD','carol.turcotte@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','SSZq2adarj','2018-08-03 04:05:48','2018-08-03 04:05:48'),(30,'Mr. Issac Roob II','elyse59@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','gIdysCGiyl','2018-08-03 04:05:48','2018-08-03 04:05:48'),(31,'Mrs. Edwina Durgan','umueller@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Ye6J6zFnTm','2018-08-03 04:05:48','2018-08-03 04:05:48'),(32,'Prof. Liam Wehner','erling74@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','LJumnQXQMl','2018-08-03 04:05:48','2018-08-03 04:05:48'),(33,'Prof. Louvenia Altenwerth II','nratke@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','3PMb2zCGmK','2018-08-03 04:07:03','2018-08-03 04:07:03'),(34,'Bailey Rodriguez','fisher.johan@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','TSX9TFMDqF','2018-08-03 04:07:03','2018-08-03 04:07:03'),(35,'Nicholaus Fritsch','dibbert.katelyn@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Jz37UWRnaj','2018-08-03 04:07:03','2018-08-03 04:07:03'),(36,'Mr. Lorenz Rippin','nikki14@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','IIpIk5RlHY','2018-08-03 04:07:03','2018-08-03 04:07:03'),(37,'Mrs. Kattie Schneider Sr.','jasper63@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','d9qtehlNRr','2018-08-03 04:07:03','2018-08-03 04:07:03'),(38,'Geoffrey Friesen','acassin@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','FDbwG1Nk9v','2018-08-03 04:07:03','2018-08-03 04:07:03'),(39,'Ramona Kiehn','goldner.otto@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','C2T0hDzcpV','2018-08-03 04:07:03','2018-08-03 04:07:03'),(40,'Mr. Orland Kozey','daugherty.aletha@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','jtNbsQEm0W','2018-08-03 04:07:03','2018-08-03 04:07:03'),(41,'Icie Muller','orin40@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','EJlIZ7JXij','2018-08-03 04:07:03','2018-08-03 04:07:03'),(42,'Leonie Mante','ernser.jules@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','nVOe8U6idG','2018-08-03 04:07:03','2018-08-03 04:07:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-09 13:48:30
