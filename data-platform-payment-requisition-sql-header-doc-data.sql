CREATE TABLE `data_platform_payment_requisition_header_doc_data`
(
  `PayerPaymentRequisitionID`      int(16) NOT NULL,
  `DocType`                        varchar(100) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `FileExtension`                  varchar(20) NOT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,
  `FilePath`                       varchar(1000) DEFAULT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,

    PRIMARY KEY (`PayerPaymentRequisitionID`, `DocType`, `DocVersionID`, `DocID`),

    CONSTRAINT `DataPlatformPaymentRequisitionHeaderDocData_fk` FOREIGN KEY (`PayerPaymentRequisitionID`) REFERENCES `data_platform_payment_requisition_header_data` (`PayerPaymentRequisitionID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
