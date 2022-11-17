CREATE TABLE `data_platform_payment_requisition_header_data`
(
  `Payer`                                int(12) NOT NULL,
  `PayerPaymentDate`                     date NOT NULL,
  `PayerPaymentRequisitionID`            int(6) NOT NULL,
  `PaymentReqnStatus`                    varchar(2) NOT NULL,
  `PaytReqnAmtInTransCrcy`               float(13) NOT NULL,
  `Currency`                             varchar(3) NOT NULL,
  `PaymentMethod`                        varchar(1) NOT NULL,
  `PayerPostingDate`                     date NOT NULL,
  `PayerHouseBank`                       varchar(5) DEFAULT NULL,
  `PayerHouseBankAccount`                varchar(5) DEFAULT NULL,
  `PayerFinInstCountry`                  varchar(3) NOT NULL,
  `PayerFinInstNumber`                   varchar(15) NOT NULL,
  `PayerFinInstSWIFTCode`                varchar(11) DEFAULT NULL,
  `PayerInternalFinInstCustomerID`       int(12) NOT NULL,
  `PayerInternalFinInstAccountID`        int(12) NOT NULL,
  `PayerFinInstControlKey`               varchar(2) NOT NULL,
  `PayerFinInstAccount`                  varchar(18) NOT NULL,
  `PayerFinInstAccountName`              varchar(40) NOT NULL,
  `PayeeFinInstName`                     varchar(100) NOT NULL,
  `PayeeFinInstBranchName`               varchar(100) NOT NULL,
  `CreationDateTime`                     datetime DEFAULT NULL,
  `ChangedOnDateTime`                    datetime DEFAULT NULL,

    PRIMARY KEY (`Payer`, `PayerPaymentDate`, `PayerPaymentRequisitionID`)

) ENGINE = InnoDB
DEFAULT CHARSET = utf8mb4;
