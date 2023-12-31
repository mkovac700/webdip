-- MySQL Script generated by MySQL Workbench
-- Tue Apr 12 20:11:01 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema WebDiP2021x051
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema WebDiP2021x051
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `WebDiP2021x051` DEFAULT CHARACTER SET utf8 ;
USE `WebDiP2021x051` ;

-- -----------------------------------------------------
-- Table `WebDiP2021x051`.`tip_korisnika`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `WebDiP2021x051`.`tip_korisnika` (
  `tip_korisnika_id` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`tip_korisnika_id`),
  UNIQUE INDEX `tip_korisnika_id_UNIQUE` (`tip_korisnika_id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `WebDiP2021x051`.`korisnik`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `WebDiP2021x051`.`korisnik` (
  `korisnik_id` INT NOT NULL,
  `tip_korisnika_tip_korisnika_id` VARCHAR(20) NOT NULL,
  `ime` VARCHAR(45) NOT NULL,
  `prezime` VARCHAR(45) NOT NULL,
  `datum_rodenja` DATE NOT NULL,
  `adresa` VARCHAR(100) NOT NULL,
  `broj_mobitela` VARCHAR(15) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`korisnik_id`, `tip_korisnika_tip_korisnika_id`),
  UNIQUE INDEX `korisnik_id_UNIQUE` (`korisnik_id` ASC) ,
  INDEX `fk_korisnik_tip_korisnika_idx` (`tip_korisnika_tip_korisnika_id` ASC) ,
  CONSTRAINT `fk_korisnik_tip_korisnika`
    FOREIGN KEY (`tip_korisnika_tip_korisnika_id`)
    REFERENCES `WebDiP2021x051`.`tip_korisnika` (`tip_korisnika_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `WebDiP2021x051`.`vozilo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `WebDiP2021x051`.`vozilo` (
  `vozilo_id` VARCHAR(10) NOT NULL,
  `korisnik_korisnik_id` INT NOT NULL,
  `marka` VARCHAR(20) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `prijedeni_km` INT NOT NULL,
  `slika` BLOB NOT NULL,
  PRIMARY KEY (`vozilo_id`, `korisnik_korisnik_id`),
  UNIQUE INDEX `vozilo_id_UNIQUE` (`vozilo_id` ASC) ,
  INDEX `fk_vozilo_korisnik1_idx` (`korisnik_korisnik_id` ASC) ,
  CONSTRAINT `fk_vozilo_korisnik1`
    FOREIGN KEY (`korisnik_korisnik_id`)
    REFERENCES `WebDiP2021x051`.`korisnik` (`korisnik_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `WebDiP2021x051`.`lokacija`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `WebDiP2021x051`.`lokacija` (
  `lokacija_id` INT NOT NULL AUTO_INCREMENT,
  `naziv` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`lokacija_id`),
  UNIQUE INDEX `lokacija_id_UNIQUE` (`lokacija_id` ASC) ,
  UNIQUE INDEX `naziv_UNIQUE` (`naziv` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `WebDiP2021x051`.`benzinska_postaja`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `WebDiP2021x051`.`benzinska_postaja` (
  `benzinska_postaja_id` INT NOT NULL,
  `lokacija_lokacija_id` INT NOT NULL,
  `oznaka` VARCHAR(30) NOT NULL,
  `adresa` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`benzinska_postaja_id`),
  INDEX `fk_benzinska_postaja_lokacija1_idx` (`lokacija_lokacija_id` ASC) ,
  CONSTRAINT `fk_benzinska_postaja_lokacija1`
    FOREIGN KEY (`lokacija_lokacija_id`)
    REFERENCES `WebDiP2021x051`.`lokacija` (`lokacija_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `WebDiP2021x051`.`vrste_goriva`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `WebDiP2021x051`.`vrste_goriva` (
  `vrste_goriva_id` INT NOT NULL AUTO_INCREMENT,
  `tip` VARCHAR(20) NOT NULL,
  `naziv` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`vrste_goriva_id`),
  UNIQUE INDEX `vrste_goriva_id_UNIQUE` (`vrste_goriva_id` ASC) ,
  UNIQUE INDEX `naziv_UNIQUE` (`naziv` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `WebDiP2021x051`.`bp_ima_vg`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `WebDiP2021x051`.`bp_ima_vg` (
  `benzinska_postaja_id` INT NOT NULL,
  `vrste_goriva_vrste_goriva_id` INT NOT NULL,
  `cijena` DECIMAL(4,2) NOT NULL,
  `kolicina` DECIMAL(6,2) NOT NULL,
  `status` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`benzinska_postaja_id`, `vrste_goriva_vrste_goriva_id`),
  INDEX `fk_bp_ima_vg_vrste_goriva1_idx` (`vrste_goriva_vrste_goriva_id` ASC) ,
  INDEX `fk_bp_ima_vg_benzinska_postaja1_idx` (`benzinska_postaja_id` ASC) ,
  CONSTRAINT `fk_bp_ima_vg_benzinska_postaja1`
    FOREIGN KEY (`benzinska_postaja_id`)
    REFERENCES `WebDiP2021x051`.`benzinska_postaja` (`benzinska_postaja_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_bp_ima_vg_vrste_goriva1`
    FOREIGN KEY (`vrste_goriva_vrste_goriva_id`)
    REFERENCES `WebDiP2021x051`.`vrste_goriva` (`vrste_goriva_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `WebDiP2021x051`.`mjesto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `WebDiP2021x051`.`mjesto` (
  `mjesto_id` INT NOT NULL AUTO_INCREMENT,
  `oznaka` VARCHAR(45) NOT NULL,
  `status` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`mjesto_id`),
  UNIQUE INDEX `mjesto_id_UNIQUE` (`mjesto_id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `WebDiP2021x051`.`mjesto_ima_bp_ima_vg`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `WebDiP2021x051`.`mjesto_ima_bp_ima_vg` (
  `mjesto_mjesto_id` INT NOT NULL,
  `bp_ima_vg_benzinska_postaja_id` INT NOT NULL,
  `bp_ima_vg_vrste_goriva_vrste_goriva_id` INT NOT NULL,
  PRIMARY KEY (`mjesto_mjesto_id`, `bp_ima_vg_benzinska_postaja_id`, `bp_ima_vg_vrste_goriva_vrste_goriva_id`),
  INDEX `fk_mjesto_ima_bp_ima_vg_benzinska__idx` (`bp_ima_vg_benzinska_postaja_id` ASC, `bp_ima_vg_vrste_goriva_vrste_goriva_id` ASC) ,
  INDEX `fk_mjesto_ima_bp_ima_vg_mjesto1_idx` (`mjesto_mjesto_id` ASC) ,
  CONSTRAINT `fk_mjesto_ima_bp_ima_vg_mjesto1`
    FOREIGN KEY (`mjesto_mjesto_id`)
    REFERENCES `WebDiP2021x051`.`mjesto` (`mjesto_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_mjesto_ima_bp_ima_vg_benzinska_po1`
    FOREIGN KEY (`bp_ima_vg_benzinska_postaja_id` , `bp_ima_vg_vrste_goriva_vrste_goriva_id`)
    REFERENCES `WebDiP2021x051`.`bp_ima_vg` (`benzinska_postaja_id` , `vrste_goriva_vrste_goriva_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `WebDiP2021x051`.`evidencija_tocenja`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `WebDiP2021x051`.`evidencija_tocenja` (
  `vozilo_vozilo_id` VARCHAR(10) NOT NULL,
  `vozilo_korisnik_korisnik_id` INT NOT NULL,
  `mjesto_mjesto_id` INT NOT NULL,
  `novo_stanje_km` INT NOT NULL,
  `potroseno_goriva` DECIMAL(5,2) NOT NULL,
  `natoceno_goriva` DECIMAL(5,2) NOT NULL,
  `vrsta_goriva` VARCHAR(45) NOT NULL,
  `datum_vrijeme` DATETIME NOT NULL,
  PRIMARY KEY (`vozilo_vozilo_id`, `vozilo_korisnik_korisnik_id`, `mjesto_mjesto_id`),
  INDEX `fk_vozilo_has_mjesto_mjesto1_idx` (`mjesto_mjesto_id` ASC) ,
  INDEX `fk_vozilo_has_mjesto_vozilo1_idx` (`vozilo_vozilo_id` ASC, `vozilo_korisnik_korisnik_id` ASC) ,
  CONSTRAINT `fk_vozilo_has_mjesto_vozilo1`
    FOREIGN KEY (`vozilo_vozilo_id` , `vozilo_korisnik_korisnik_id`)
    REFERENCES `WebDiP2021x051`.`vozilo` (`vozilo_id` , `korisnik_korisnik_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_vozilo_has_mjesto_mjesto1`
    FOREIGN KEY (`mjesto_mjesto_id`)
    REFERENCES `WebDiP2021x051`.`mjesto` (`mjesto_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
