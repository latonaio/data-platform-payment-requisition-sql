CREATE TABLE `data_platform_payment_requisition_payment_requisition_pdf_data` -- 新規追加
(
  `BusinessPartner`                int(10) NOT NULL,          -- 新規追加
  `PaymentRequisitionID`           int(10) NOT NULL,          -- 新規追加
  `DocType`                        varchar(4) NOT NULL,       -- 新規追加
  `DocID`                          int(20) NOT NULL,          -- 新規追加
  `DocVersionID`                   int(4) NOT NULL,           -- 新規追加
  `FileName`                       varchar(200) DEFAULT NULL, -- 新規追加
    PRIMARY KEY (`BusinessPartner`, `PaymentRequisitionID`, `DocType`, `DocID`, `DocVersionID`),
    CONSTRAINT `DataPlatformPaymentRequisitionPaymentRequisitionPDFData_fk` FOREIGN KEY (`BusinessPartner`, `PaymentRequisitionID`) REFERENCES `data_platform_payment_requisition_payment_requisition_data` (`BusinessPartner`, `PaymentRequisitionID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
