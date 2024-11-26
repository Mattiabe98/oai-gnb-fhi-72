/* This file was generated by ODB, object-relational mapping (ORM)
 * compiler for C++.
 */

DROP TABLE IF EXISTS `DnnPolicyDecision_PccRuleIds`;

DROP TABLE IF EXISTS `DnnPolicyDecision`;

CREATE TABLE `DnnPolicyDecision` (
  `Dnn` VARCHAR(128) NOT NULL PRIMARY KEY,
  `DnnIsSet` TINYINT(1) NOT NULL,
  `PccRuleIdsIsSet` TINYINT(1) NOT NULL)
 ENGINE=InnoDB;

CREATE TABLE `DnnPolicyDecision_PccRuleIds` (
  `object_id` VARCHAR(128) NOT NULL,
  `index` BIGINT UNSIGNED NOT NULL,
  `value` TEXT NOT NULL,
  CONSTRAINT `DnnPolicyDecision_PccRuleIds_object_id_fk`
    FOREIGN KEY (`object_id`)
    REFERENCES `DnnPolicyDecision` (`Dnn`)
    ON DELETE CASCADE)
 ENGINE=InnoDB;

CREATE INDEX `object_id_i`
  ON `DnnPolicyDecision_PccRuleIds` (`object_id`);

CREATE INDEX `index_i`
  ON `DnnPolicyDecision_PccRuleIds` (`index`);

