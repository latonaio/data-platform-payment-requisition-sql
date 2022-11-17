CREATE TABLE `data_platform_payment_requisition_item_data`
(
  `Payer`                                int(12) NOT NULL,
  `PayerPaymentDate`                     date NOT NULL,
  `PayerPaymentRequisitionID`            int(6) NOT NULL,
  `PayerPaymentRequisitionItem`          int(6) NOT NULL,
  `Payee`                                int(12) NOT NULL,
  `PayeeFinInstCountry`                  varchar(3) NOT NULL,
  `PayeeFinInstNumber`                   varchar(15) NOT NULL,
  `PayeeFinInstSWIFTCode`                varchar(11) DEFAULT NULL,
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

    PRIMARY KEY (`Payer`, `PayerPaymentDate`, `PayerPaymentRequisitionID`, `PayerPaymentRequisitionItem`)

) ENGINE = InnoDB
DEFAULT CHARSET = utf8mb4;
