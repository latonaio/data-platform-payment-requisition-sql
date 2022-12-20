CREATE TABLE `data_platform_payment_requisition_header_doc_data`
(
  `BusinessPartner`                int(12) NOT NULL,
  `PaymentDate`                    date NOT NULL,
  `PaymentRequisitionID`           int(6) NOT NULL,
  `DocType`                        varchar(20) NOT NULL,
  `FileExtension`                  varchar(3) DEFAULT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,
  `FilePath`                       varchar(1000) DEFAULT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`, `PaymentDate`, `PaymentRequisitionID`, `DocType`, `DocVersionID`, `DocID`),

    CONSTRAINT `DataPlatformPaymentRequisitionHeaderPDFData_fk` FOREIGN KEY (`BusinessPartner`, `PaymentDate`, `PaymentRequisitionID`) REFERENCES `data_platform_payment_requisition_header_data` (`BusinessPartner`, `PaymentDate`, `PaymentRequisitionID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
