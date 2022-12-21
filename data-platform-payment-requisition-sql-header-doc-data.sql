CREATE TABLE `data_platform_payment_requisition_header_doc_data`
(
  `BusinessPartner`                int(12) NOT NULL,
  `PaymentDate`                    date NOT NULL,
  `PaymentRequisitionID`           int(6) NOT NULL,
  `DocType`                        varchar(20) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `FileExtension`                  varchar(20) NOT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,
  `FilePath`                       varchar(1000) DEFAULT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`, `PaymentDate`, `PaymentRequisitionID`, `DocType`, `DocVersionID`, `DocID`),

    CONSTRAINT `DataPlatformPaymentRequisitionHeaderDocData_fk` FOREIGN KEY (`BusinessPartner`, `PaymentDate`, `PaymentRequisitionID`) REFERENCES `data_platform_payment_requisition_header_data` (`BusinessPartner`, `PaymentDate`, `PaymentRequisitionID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
