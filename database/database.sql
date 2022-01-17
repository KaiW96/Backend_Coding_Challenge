-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema shopify_inventory
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema shopify_inventory
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `shopify_inventory` DEFAULT CHARACTER SET utf8 ;
USE `shopify_inventory` ;

-- -----------------------------------------------------
-- Table `shopify_inventory`.`inventory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shopify_inventory`.`inventory` (
  `product_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `price` VARCHAR(45) NOT NULL,
  `department` VARCHAR(45) NOT NULL,
  `description` VARCHAR(250) NOT NULL,
  `store_URL` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`product_id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
