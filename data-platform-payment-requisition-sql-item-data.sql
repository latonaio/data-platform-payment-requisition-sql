CREATE TABLE `data_platform_payment_requisition_item_data`
(
  `Payer`                                int(12) NOT NULL,
  `PayerPaymentDate`                     date NOT NULL,
  `PayerPaymentRequisitionID`            int(6) NOT NULL,
  `PayerPaymentRequisitionItem`          int(6) NOT NULL,
  `Payee`                                int(12) NOT NULL,
  `PayeeFinInstCountry`                  varchar(3) NOT NULL,
  `PayeeFinInstCode`                     varchar(10) NOT NULL,
  `PayeeFinInstBranchCode`               varchar(10) NOT NULL,
  `PayeeFinInstFullCode`                 varchar(15) NOT NULL,
  `PayeeFinInstSWIFTCode`                varchar(11) DEFAULT NULL,
　`PaytReqnItemAmtInTransCrcy`           float(13) NOT NULL,
  `PayeeInternalFinInstCustomerID`       int(12) NOT NULL,
  `PayeeInternalFinInstAccountID`        int(12) NOT NULL,
  `PayeeFinInstControlKey`               varchar(2) NOT NULL,
  `PayeeFinInstAccount`                  varchar(18) NOT NULL,
  `PayeeFinInstAccountName`              varchar(40) NOT NULL,
  `PayeeFinInstName`                     varchar(100) NOT NULL,
  `PayeeFinInstBranchName`               varchar(100) NOT NULL,
  `PayerAccountingDocument`              int(16) DEFAULT NULL,
  `PayerAccountingDocumentItem`          int(3) DEFAULT NULL,
  `CreationDateTime`                     datetime DEFAULT NULL,
  `ChangedOnDateTime`                    datetime DEFAULT NULL,

    PRIMARY KEY (`Payer`, `PayerPaymentDate`, `PayerPaymentRequisitionID`, `PayerPaymentRequisitionItem`),

    CONSTRAINT `DataPlatformPaymentRequisitionItemData_fk` FOREIGN KEY (`Payer`, `PayerPaymentDate`, `PayerPaymentRequisitionID`) REFERENCES `data_platform_payment_requisition_header_data` (`Payer`, `PayerPaymentDate`, `PayerPaymentRequisitionID`),
    CONSTRAINT `DataPlatformPaymentRequisitionItemDataPayee_fk` FOREIGN KEY (`Payee`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformPaymentRequisitionItemDataFinInstAccount_fk` FOREIGN KEY (`PayeeFinInstCountry`, `PayeeFinInstCode`, `PayeeFinInstBranchCode`, `PayeeFinInstFullCode`, `PayeeInternalFinInstCustomerID`, `PayeeInternalFinInstAccountID`) REFERENCES `data_platform_fin_inst_acccount_item_data` (`FinInstCountry`, `FinInstCode`, `FinInstBranchCode`, `FinInstFullCode`, `InternalFinInstCustomerID`, `InternalFinInstAccountID`)

) ENGINE = InnoDB
DEFAULT CHARSET = utf8mb4;
