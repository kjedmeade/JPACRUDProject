-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Bouquet
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Bouquet` ;

-- -----------------------------------------------------
-- Schema Bouquet
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Bouquet` DEFAULT CHARACTER SET utf8 ;
USE `Bouquet` ;

-- -----------------------------------------------------
-- Table `flower`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `flower` ;

CREATE TABLE IF NOT EXISTS `flower` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `pronounciation` VARCHAR(45) NULL,
  `family` VARCHAR(45) NULL,
  `noofspecies` INT NULL,
  `type` VARCHAR(45) NULL,
  `examplespecies` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS floweruser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'floweruser'@'localhost' IDENTIFIED BY 'floweruser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'floweruser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `flower`
-- -----------------------------------------------------
START TRANSACTION;
USE `Bouquet`;
INSERT INTO `flower` (`id`, `name`, `pronounciation`, `family`, `noofspecies`, `type`, `examplespecies`) VALUES (1, 'Peony', 'pee uh nee', 'Liliaceae', 33, 'perennial', 'Paeonia algeriensis');
INSERT INTO `flower` (`id`, `name`, `pronounciation`, `family`, `noofspecies`, `type`, `examplespecies`) VALUES (2, 'Rose', 'rohz', 'Rose', 100, 'perennial', 'Rosa acicularis');
INSERT INTO `flower` (`id`, `name`, `pronounciation`, `family`, `noofspecies`, `type`, `examplespecies`) VALUES (3, 'Hydrangea', 'hahy dreyn juh', 'Hydrangeaceae', 75, 'perennial', 'Hydrangea macrophylla');
INSERT INTO `flower` (`id`, `name`, `pronounciation`, `family`, `noofspecies`, `type`, `examplespecies`) VALUES (4, 'Gardenia', 'gahr dee nyuh', 'Rubiaceae', 140, 'perennial', 'Gardenia Jasminoides');
INSERT INTO `flower` (`id`, `name`, `pronounciation`, `family`, `noofspecies`, `type`, `examplespecies`) VALUES (5, 'Lily', 'lil ee', 'Liliaceae', 100, 'annual/perennial', 'Lilium columbianum');
INSERT INTO `flower` (`id`, `name`, `pronounciation`, `family`, `noofspecies`, `type`, `examplespecies`) VALUES (6, 'Daisy', 'dey zee', 'Asteraceae', 23000, 'annual/perennial', ' Bellis perennis');
INSERT INTO `flower` (`id`, `name`, `pronounciation`, `family`, `noofspecies`, `type`, `examplespecies`) VALUES (7, 'Orchid', 'awr kid', 'Orchidaceae', 26000, 'perennial', 'Cattleya mossiae');
INSERT INTO `flower` (`id`, `name`, `pronounciation`, `family`, `noofspecies`, `type`, `examplespecies`) VALUES (8, 'Dahlia', 'dal yuh', 'Asteraceae', 42, 'annual/perennial', 'Dahlia coccinea');
INSERT INTO `flower` (`id`, `name`, `pronounciation`, `family`, `noofspecies`, `type`, `examplespecies`) VALUES (9, 'Tulip', 'too lip', 'Liliaceae', 75, 'perennial', 'Tulipa acuminata');
INSERT INTO `flower` (`id`, `name`, `pronounciation`, `family`, `noofspecies`, `type`, `examplespecies`) VALUES (10, 'Ranunculus', 'run nuhng kyuh luhs', 'Ranunculaceae', 250, 'perennial', 'Ranunculus glaberrimus');

COMMIT;

