/* This file was generated by ODB, object-relational mapping (ORM)
 * compiler for C++.
 */

DROP TABLE IF EXISTS `QosData`;

CREATE TABLE `QosData` (
  `QosId` VARCHAR(128) NOT NULL PRIMARY KEY,
  `r_5qi` INT NOT NULL,
  `r_5qiIsSet` TINYINT(1) NOT NULL,
  `MaxbrUl` TEXT NOT NULL,
  `MaxbrUlIsSet` TINYINT(1) NOT NULL,
  `MaxbrDl` TEXT NOT NULL,
  `MaxbrDlIsSet` TINYINT(1) NOT NULL,
  `GbrUl` TEXT NOT NULL,
  `GbrUlIsSet` TINYINT(1) NOT NULL,
  `GbrDl` TEXT NOT NULL,
  `GbrDlIsSet` TINYINT(1) NOT NULL,
  `Arp_PriorityLevel` INT NOT NULL,
  `Arp_PreemptCap_value_value` ENUM('INVALID_VALUE_OPENAPI_GENERATED', 'NOT_PREEMPT', 'MAY_PREEMPT') NOT NULL,
  `Arp_PreemptVuln_value_value` ENUM('INVALID_VALUE_OPENAPI_GENERATED', 'NOT_PREEMPTABLE', 'PREEMPTABLE') NOT NULL,
  `ArpIsSet` TINYINT(1) NOT NULL,
  `Qnc` TINYINT(1) NOT NULL,
  `QncIsSet` TINYINT(1) NOT NULL,
  `PriorityLevel` INT NOT NULL,
  `PriorityLevelIsSet` TINYINT(1) NOT NULL,
  `AverWindow` INT NOT NULL,
  `AverWindowIsSet` TINYINT(1) NOT NULL,
  `MaxDataBurstVol` INT NOT NULL,
  `MaxDataBurstVolIsSet` TINYINT(1) NOT NULL,
  `ReflectiveQos` TINYINT(1) NOT NULL,
  `ReflectiveQosIsSet` TINYINT(1) NOT NULL,
  `SharingKeyDl` TEXT NOT NULL,
  `SharingKeyDlIsSet` TINYINT(1) NOT NULL,
  `SharingKeyUl` TEXT NOT NULL,
  `SharingKeyUlIsSet` TINYINT(1) NOT NULL,
  `MaxPacketLossRateDl` INT NOT NULL,
  `MaxPacketLossRateDlIsSet` TINYINT(1) NOT NULL,
  `MaxPacketLossRateUl` INT NOT NULL,
  `MaxPacketLossRateUlIsSet` TINYINT(1) NOT NULL,
  `DefQosFlowIndication` TINYINT(1) NOT NULL,
  `DefQosFlowIndicationIsSet` TINYINT(1) NOT NULL,
  `ExtMaxDataBurstVol` INT NOT NULL,
  `ExtMaxDataBurstVolIsSet` TINYINT(1) NOT NULL,
  `PacketDelayBudget` INT NOT NULL,
  `PacketDelayBudgetIsSet` TINYINT(1) NOT NULL,
  `PacketErrorRate` TEXT NOT NULL,
  `PacketErrorRateIsSet` TINYINT(1) NOT NULL)
 ENGINE=InnoDB;
