-- MySQL Script generated by MySQL Workbench
-- Sat Mar  6 23:26:40 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema pintureriabroch
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema pintureriabroch
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pintureriabroch` DEFAULT CHARACTER SET utf8mb4 ;
USE `pintureriabroch` ;

-- -----------------------------------------------------
-- Table `pintureriabroch`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pintureriabroch`.`user` (
  `id` INT(11) AUTO_INCREMENT NOT NULL,
  `username` VARCHAR(45) NULL DEFAULT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(60) NULL DEFAULT NULL,
  `password` VARCHAR(60) NULL DEFAULT NULL,
  `address` VARCHAR(45) NULL DEFAULT NULL,
  `location` VARCHAR(45) NULL DEFAULT NULL,
  `province` VARCHAR(45) NULL DEFAULT NULL,
  `country` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

INSERT INTO `pintureriabroch`.`user` (`id`,`username`,`name`,`email`,`password`,`address`,`location`,`province`,`country`) VALUES (1,'Admininstrador','Administrador','administrador@broch.com','$2a$10$5E4uEigJbWQ/bS6vEr2gV..qqj.c.hT0YKYYijUjGSnBqNMPRZmnO','-','-','-','-');

-- -----------------------------------------------------
-- Table `pintureriabroch`.`cart`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pintureriabroch`.`cart` (
  `id` INT(11) AUTO_INCREMENT NOT NULL,
  `status` INT(11) NOT NULL,
  `total` FLOAT NOT NULL,
  `user_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `user`
    FOREIGN KEY (`user_id`)
    REFERENCES `pintureriabroch`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `pintureriabroch`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pintureriabroch`.`category` (
  `id` INT(11) AUTO_INCREMENT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

INSERT INTO `pintureriabroch`.`category` (`id`, `name`) VALUES ('1', 'No tiene');
INSERT INTO `pintureriabroch`.`category` (`id`, `name`) VALUES ('2', 'Pinturas');
INSERT INTO `pintureriabroch`.`category` (`id`, `name`) VALUES ('3', 'Accesorios');
INSERT INTO `pintureriabroch`.`category` (`id`, `name`) VALUES ('4', 'Revestimientos');
INSERT INTO `pintureriabroch`.`category` (`id`, `name`) VALUES ('5', 'Herramientas');
-- -----------------------------------------------------
-- Table `pintureriabroch`.`color`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pintureriabroch`.`color` (
  `id` INT(11) AUTO_INCREMENT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

INSERT INTO `pintureriabroch`.`color` (`id`, `name`) VALUES ('1', 'Sin color');
INSERT INTO `pintureriabroch`.`color` (`id`, `name`) VALUES ('2', 'Neutros');
INSERT INTO `pintureriabroch`.`color` (`id`, `name`) VALUES ('3', 'Rojos');
INSERT INTO `pintureriabroch`.`color` (`id`, `name`) VALUES ('4', 'Amarillos');
INSERT INTO `pintureriabroch`.`color` (`id`, `name`) VALUES ('5', 'Blanco Naturales');
INSERT INTO `pintureriabroch`.`color` (`id`, `name`) VALUES ('6', 'Azules');
INSERT INTO `pintureriabroch`.`color` (`id`, `name`) VALUES ('7', 'Verdes');
INSERT INTO `pintureriabroch`.`color` (`id`, `name`) VALUES ('8', 'Naranja');
INSERT INTO `pintureriabroch`.`color` (`id`, `name`) VALUES ('9', 'Violetas');


-- -----------------------------------------------------
-- Table `pintureriabroch`.`trademark`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pintureriabroch`.`trademark` (
  `id` INT(11) AUTO_INCREMENT NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

INSERT INTO `pintureriabroch`.`trademark` (`id`, `name`) VALUES ('1', 'Sin Categoría');
INSERT INTO `pintureriabroch`.`trademark` (`id`, `name`) VALUES ('2', 'Black Decker');
INSERT INTO `pintureriabroch`.`trademark` (`id`, `name`) VALUES ('3', 'Dewalt');
INSERT INTO `pintureriabroch`.`trademark` (`id`, `name`) VALUES ('4', 'Lüsqtoff');
INSERT INTO `pintureriabroch`.`trademark` (`id`, `name`) VALUES ('5', 'Bosch');
INSERT INTO `pintureriabroch`.`trademark` (`id`, `name`) VALUES ('6', 'Skil');
INSERT INTO `pintureriabroch`.`trademark` (`id`, `name`) VALUES ('7', 'Pretul');
INSERT INTO `pintureriabroch`.`trademark` (`id`, `name`) VALUES ('8', 'Truper');
INSERT INTO `pintureriabroch`.`trademark` (`id`, `name`) VALUES ('9', 'Fullcover');
INSERT INTO `pintureriabroch`.`trademark` (`id`, `name`) VALUES ('10', 'Venier');
INSERT INTO `pintureriabroch`.`trademark` (`id`, `name`) VALUES ('11', 'Revear');
INSERT INTO `pintureriabroch`.`trademark` (`id`, `name`) VALUES ('12', 'Vadex');
INSERT INTO `pintureriabroch`.`trademark` (`id`, `name`) VALUES ('13', 'Sherwin Williams');
INSERT INTO `pintureriabroch`.`trademark` (`id`, `name`) VALUES ('14', 'Alba');
INSERT INTO `pintureriabroch`.`trademark` (`id`, `name`) VALUES ('15', 'Tersuave');
INSERT INTO `pintureriabroch`.`trademark` (`id`, `name`) VALUES ('16', 'Sinteplat');
INSERT INTO `pintureriabroch`.`trademark` (`id`, `name`) VALUES ('17', 'Plavicon');
INSERT INTO `pintureriabroch`.`trademark` (`id`, `name`) VALUES ('18', 'Sika');
INSERT INTO `pintureriabroch`.`trademark` (`id`, `name`) VALUES ('19', 'Casablanca');
INSERT INTO `pintureriabroch`.`trademark` (`id`, `name`) VALUES ('20', 'Polacrin');

-- -----------------------------------------------------
-- Table `pintureriabroch`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pintureriabroch`.`product` (
  `id` INT(11) AUTO_INCREMENT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `description` LONGTEXT NOT NULL,
  `price` FLOAT NOT NULL,
  `image` VARCHAR(45) NOT NULL,
  `idtrademark` INT(11) NOT NULL,
  `idcategory` INT(11) NOT NULL,
  `idcolor` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `category`
    FOREIGN KEY (`idcategory`)
    REFERENCES `pintureriabroch`.`category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `color`
    FOREIGN KEY (`idcolor`)
    REFERENCES `pintureriabroch`.`color` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `trademark`
    FOREIGN KEY (`idtrademark`)
    REFERENCES `pintureriabroch`.`trademark` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (1,'Amoladora Angular Dewalt 180mm 7\" 2400w Dwe45','- Potente Motor de 2400W - Entrega mayor velocidad y potencia hasta en las aplicaciones más duras  - Guarda sin llave - Permite cambios y movimientos en forma más fácil  - Caja de engranajes de bajo perfil - Permite al usuario trabajar en lugares estrechos  - Mango anti-vibración de tres posiciones - Provee al usuario diferentes opciones a la hora de trabajar reduciendo la vibración  - Mango con goma - Entrega mayor comodidad y control a la hora de trabajar  - Tapa removible - Facilita el acceso a los carbones  - Anillo Anti-vibración - Diseñado para reducir la vibración que se transmite al operario  - Gatillo de seguridad de dos pasos - Disminuye el riesgo de encendido accidental  - Cable ultra resistente - Previene roturas del cable por tirones',41019.6,'image-1615334841748.jpg',3,5,1);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (2,'Amoladora Angular 125 mm 1010w Lusqtoff','ncluye: Llave de ajuste, Mango lateral.  Tensión: 220V-50Hz Potencia: 1010 W Velocidad variable: 0-11000 Rpm Máximo de disco de corte: 125 mm Bobina autoprotegida Peso: 2,60 Kg',1176.25,'image-1615336255119.jpg',4,5,4);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (3,'Hidrolavadora Lusqtoff 105 bar 1200w Con Auto','AUTO-STOP Tensión: 220 V-50 Hz Potencia: 1200 W Presión Maxima: 105 Bar Presión Nominal: 70 Bar Caudal: 5.5 Lts / Minuto. Incluye: lanza, manguera de alta presión y recipiente para detergente con capacidad de 400ml Peso: 5.2 Kg',9166.39,'image-1615336450915.jpg',4,5,4);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (4,'Lijadora De Banda Skil 7640 900w + Accesorios','- Ajuste para uso estacionario con las grapas - Estabilizador “equalizer” para nivelar superficies - Sistema de ajuste de cinta de lija para una mayor precisión - Posibilidad de aspirar el polvo directamente a la maquina en bolsa de polvo o aspiradoras individual.  Ficha Tecnica: - Dimension de lija 75mm X 533mm - Superficie de trabajo: 76mm X 130mm - Peso: 3,6 Kgr - Velocidad de la cinta S/carga: 180 m/min - 330 m/min - Potencia. 900W',15356.2,'image-1615336643226.jpg',6,5,1);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (5,'Sierra Circular Skil 5200 1200w Disco 7 1/4\" ','- Visibilidad através de la placa base - Funcíon soplo que mantiene el área de corte limpio - Manilla ergonómica parecida con la de un serrucho. - Traba de eje para cambiar el disco - Base plana del motor para apoyar la sierra y cambiar el disco - Cambie el disco con la llave allen o sextavada  Ficha Tecnica: - Disco 7 1/4\" / 184 mm - Rotación 5000 min-1 - Peso 3.7 kg - Eje 5/8\" - Potencia 1,200 W - Profundida de corte a 45°: 45mm - Profundidad de corte a 90°: 65mm',11253.1,'image-1615336732436.jpg',6,5,1);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (6,'Set 10 Discos de Corte Amoladora 115 mm Stand','Diámetro del disco: 115 mm Espesor: 1 mm Material: Oxido de aluminio Combo x 10 Unidades.',972.19,'image-1615337042835.jpg',5,5,1);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (7,'Maletin de Transporte Herramientas Apilable B','El maletín ideal para profesionales. Siempre bien ordenado: para mantener todo a la vista, no olvidar nada y ahorrar tiempo y nervios Ajuste individual: con bandejas flexibles que pueden configurarse libremente para herramientas, accesorios y materiales de consumo. Transporte con sistema: los distintos maletines BOXX pueden unirse y separarse entre sí gracias a la unión por clic patentada.',6808.42,'image-1615337118732.jpg',5,5,1);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (8,'Detector De Metales Multimaterial Scanner D-t','Aviso sonoro y óptico: indica el tipo de material y la profundidad máxima de perforación permitida Posee protección IP 54 contra polvo y salpicaduras de agua Los cinco modos permiten una detección óptima en cualquier material Resultados de un vistazo gracias a la pantalla grande con indicador gráfico Ruler View: detección de la distancia de los objetos, marcación en la pared con exactitud milimétrica',123501,'image-1615337193111.jpg',5,1,1);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (9,'Escalera Pintor Reforzada Madera 8 Escalones','Escalera tipo pintor de madera reforzada Herrajes y buloneria especial Tensor de hierro 1/4\'\' cada 4 escalones Seguridad en apoyos inferiores  Altura 2,40 mts Ancho Interior Exterior: 0.665 m Peso Aproximado: 16,8 kg Volumen Escalera Aprox: 0,17 m3',6104.45,'image-1615337803911.jpg',1,3,1);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (10,'Escalera Pintor Reforzada Madera 7 Escalones','Escalera tipo pintor de madera reforzada Herrajes y buloneris especial Tensor de hierro 1/4\" cada 4 escalones Seguridad en apoyos inferiores  Altura: 2,10 mts Ancho Interior Exterior: 0.620 m Peso Aproximado: 14,6 kg Volumen Escalera Aprox: 0,14 m3',5344.53,'image-1615337893263.jpg',1,3,1);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (11,'Sellador Multiuso Blanco Plavicon 1 Kg','Sellador elástico formulado en base a resinas acrílicas en medio acuoso, especialmente indicado para el sellado flexible e impermeable de juntas de trabajo, juntas entre premoldeados, uniones de distintos materiales, rajaduras de magnitud en mampostería, hormigón, sanitarios u otros. Incombustible, otorga además una adecuada compatibilidad con restos de humedad tan frecuentes en las juntas o rajaduras de las obras. Característica destacable es su elasticidad, que se conserva en un amplio rango de temperaturas, y su reducido envejecimiento.',1047.27,'image-1615338116261.jpg',17,3,5);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (12,'Sellador Multiuso Blanco Plavicon 5 Kg','Sellador elástico formulado en base a resinas acrílicas en medio acuoso, especialmente indicado para el sellado flexible e impermeable de juntas de trabajo, juntas entre premoldeados, uniones de distintos materiales, rajaduras de magnitud en mampostería, hormigón, sanitarios u otros. Incombustible, otorga además una adecuada compatibilidad con restos de humedad tan frecuentes en las juntas o rajaduras de las obras. Característica destacable es su elasticidad, que se conserva en un amplio rango de temperaturas, y su reducido envejecimiento.',4486.74,'image-1615338208480.jpg',17,3,5);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (13,'Thinner Standard 18 Lts Tersuave','Tersuave Thinner Standard es un diluyente para limpieza y desengrasado de superficies, dejándolas libre de contaminantes para su pintado posterior. Es ideal para limpieza de herramientas de aplicación como pinceles, rodillos o pistolas, luego de su uso con pinturas base solvente de cualquier tipo.  Thinner Standard podría usarse como diluyente de fondos o ciertas lacas si las hojas técnicas de estos productos lo aconsejan.  Importante: NO apto para productos poliuretánicos, alquídicos (sintéticos) ó epoxis.',5750.25,'image-1615338554977.jpg',15,3,1);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (14,'Thinner Standard 1 L Tersuave','Tersuave Thinner Standard es un diluyente para limpieza y desengrasado de superficies, dejándolas libre de contaminantes para su pintado posterior. Es ideal para limpieza de herramientas de aplicación como pinceles, rodillos o pistolas, luego de su uso con pinturas base solvente de cualquier tipo.  Thinner Standard podría usarse como diluyente de fondos o ciertas lacas si las hojas técnicas de estos productos lo aconsejan.  Importante: NO apto para productos poliuretánicos, alquídicos (sintéticos) ó epoxis.',601.65,'image-1615338590693.jpg',15,3,1);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (15,'Aguarras Mineral Tersirras 18 Lts Tersuave','Tersirrás diluyente especial a base de aguarrás mineral Tersuave permite diluir eficazmente fondos y esmaltes de la línea de sintéticos (alquídicos) tradicionales otorgando alta performance de brillo y un acabado final inmejorable de acuerdo al magnífico balance de sus componentes y una fórmula de alta performance, que favorece la aplicación con pincel, rodillo o pistola en todos los casos.  La cantidad de diluyente Tersirrás a agregar dependerá de lo aconsejado en la hoja técnica de la pintura a diluir. Métodos de Aplicación: El producto adelgazado con Tersirrás puede aplicarse con pincel, rodillo o pistolas adiabáticas, equipos airless ó sistemas de inmersión.',6951.04,'image-1615338669431.jpg',15,3,1);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (16,'Entonador para Pintura Tonalba 120 Cm X 3 Uni','Entonador para Pintura Tonalba 120 Cm X 3 Uni Bermellon',724.74,'image-1615339079225.jpg',14,2,3);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (17,'Entonador para Pintura Tonalba 120 Cm X 3 Uni','Entonador para Pintura Tonalba 120 Cm X 3 Uni Azul',724.74,'image-1615339110815.jpg',14,2,6);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (18,'Entonador para Pintura Tonalba 120 Cm X 3 Uni','Entonador para Pintura Tonalba 120 Cm X 3 Uni Verde',724.74,'image-1615339142824.jpg',14,2,7);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (19,'Entonador para Pintura Tonalba 120 Cm X 3 Uni','Entonador para Pintura Tonalba 120 Cm X 3 Uni Amarillo',724.74,'image-1615339169771.jpg',14,2,4);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (20,'Entonador para Pintura Tonalba 120 Cm X 3 Uni','Entonador para Pintura Tonalba 120 Cm X 3 Uni Violeta',724.74,'image-1615339195455.jpg',14,2,9);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (21,'Latex Exterior Interior Casablanca Pro Mate B','Pintura de Base Acuosa adaptada para ser aplicada tanto en decoración de interiores como en protección de muros a la intemperie.',7723.51,'image-1615339788788.jpg',19,2,5);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (22,'Latex Interior Exterior Lavable Mate Blanco 2','Es un latex acrílico-estirénico de alta calidad y excelente poder cubritivo, dado por la calidad de los pigmentos, desarrollado para uso exterior e interior. **El color del envase puede diferir de acuerdo al stock **',6432.29,'image-1615339854206.jpg',10,2,5);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (23,'Latex Interior Tersen Mate Blanco 20 Lts Ters','Tersen Latex Interior Blanco ha sido desarrollado con la mas moderna tecnologia, polimeros y pigmentos de ultima generacion. El resultado es un recubrimiento de alto poder cubritivo, maxima resistencia y la mayor performance de rendimiento.  Gran Blancura Excelente poder cubritivo Maxima Resistencia Anti-hongo',9809.83,'image-1615339902381.jpg',15,2,5);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (24,'Recuplast Frentes Impermeabilizante 20l Sinte','Recubrimiento acrílico para paredes exteriores, de base acuosa, con características de membrana líquida. Aplicado en el espesor recomendado, una vez seco, forma una película de gran elasticidad y alta resistencia a los factores climáticos, que impermeabiliza el sustrato en forma integral, ya que sella tanto la superficie del material como las pequeñas fisuras. Se aplica con mínimo salpicado y buena nivelación. Decora y cuida las paredes exteriores, con un potente anti hongo /anti algas y se mantiene elástico y resistente durante años. Al evitar filtraciones protege también los ambientes interiores',10294.4,'image-1615340008128.jpg',16,2,5);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (25,'Latex Profesional Interior Sherwin Williams X','Pintura de Base Acuosa para decoración y protección de muros en interiores, en diferentes niveles de brillo',7468.33,'image-1615340474852.jpg',13,2,9);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (26,'Latex Profesional Interior Sherwin Williams X','Pintura de Base Acuosa para decoración y protección de muros en interiores, en diferentes niveles de brillo',7468.33,'image-1615340490711.jpg',13,2,6);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (27,'Recubrimiento Especial Pisos Rojo 4 Lts Sherw','Recubrimiento especial esmalte para pisos es una pintura que permite embellecer y proteger pisos tanto interiores como exteriores. Posee una gran resistencia a la intemperie y al tránsito peatonal. Ideal para todo tipo de pisos domésticos.  BENEFICIOS -Òptima resistencia a la intemperie -Fácil de aplicar y limpiar -Uso interior y exterior  SUPERFICIES - Hormigón, cemento, ladrillos, solados deportivos, canchas de paddle, papi-fútbol',5086.43,'image-1615340559797.jpg',13,2,3);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (28,'Recubrimiento Especial Pisos Verde 4 Lts Sher','Recubrimiento especial esmalte para pisos es una pintura que permite embellecer y proteger pisos tanto interiores como exteriores. Posee una gran resistencia a la intemperie y al tránsito peatonal. Ideal para todo tipo de pisos domésticos.  BENEFICIOS -Òptima resistencia a la intemperie -Fácil de aplicar y limpiar -Uso interior y exterior  SUPERFICIES - Hormigón, cemento, ladrillos, solados deportivos, canchas de paddle, papi-fútbol',5086.34,'image-1615340621961.jpg',13,2,7);
INSERT INTO `pintureriabroch`.`product` (`id`,`name`,`description`,`price`,`image`,`idtrademark`,`idcategory`,`idcolor`) VALUES (29,'hhhh','hhh',6767,'bbbb.jpg',1,1,1);

-- -----------------------------------------------------
-- Table `pintureriabroch`.`cart_product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pintureriabroch`.`cart_product` (
  `id` INT(11) AUTO_INCREMENT NOT NULL,
  `carrito_id` INT(11) NULL DEFAULT NULL,
  `product_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `cart`
    FOREIGN KEY (`carrito_id`)
    REFERENCES `pintureriabroch`.`cart` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `product`
    FOREIGN KEY (`product_id`)
    REFERENCES `pintureriabroch`.`product` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
