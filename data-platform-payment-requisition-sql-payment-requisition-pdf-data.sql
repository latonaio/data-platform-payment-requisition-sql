CREATE TABLE `data_platform_payment_requisition_payment_requisition_pdf_data` -- 新規追加
(
  `BusinessPartner`                int(10) NOT NULL,          -- 新規追加
  `PaymentDate`                    varchar(80) NOT NULL,      -- 新規追加
  `PaymentRequisitionID`           int(10) NOT NULL,          -- 新規追加
  `DocType`                        varchar(20) NOT NULL,      -- 新規追加
  `DocVersionID`                   int(4) NOT NULL,           -- 新規追加
  `DocID`                          varchar(100) NOT NULL,     -- 新規追加
  `FileName`                       varchar(200) DEFAULT NULL, -- 新規追加
    PRIMARY KEY (`BusinessPartner`, `PaymentDate`, `PaymentRequisitionID`, `DocType`, `DocVersionID`, `DocID`),
    CONSTRAINT `DataPlatformPaymentRequisitionPaymentRequisitionPDFData_fk` FOREIGN KEY (`BusinessPartner`, `PaymentDate`, `PaymentRequisitionID`) REFERENCES `data_platform_payment_requisition_payment_requisition_data` (`BusinessPartner`, `PaymentDate`, `PaymentRequisitionID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
