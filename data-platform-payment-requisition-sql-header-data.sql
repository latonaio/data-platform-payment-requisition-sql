CREATE TABLE `data_platform_payment_requisition_header_data`
(
  `PayerPaymentRequisitionID`            int(16) NOT NULL,
  `Payer`                                int(12) NOT NULL,
  `PayerPaymentDate`                     date NOT NULL,
  `PaymentReqnStatus`                    varchar(2) NOT NULL,
  `AcceptanceNoByFinInst`                varchar(40) DEFAULT NULL,
  `PaytReqnAmtInTransCrcy`               float(13) NOT NULL,
  `Currency`                             varchar(3) NOT NULL,
  `PaymentMethod`                        varchar(1) NOT NULL,
  `PayerPostingDate`                     date NOT NULL,
  `PayerHouseBank`                       varchar(5) DEFAULT NULL,
  `PayerHouseBankAccount`                varchar(5) DEFAULT NULL,
  `PayerFinInstCountry`                  varchar(3) NOT NULL, 
  `PayerFinInstCode`                     varchar(10) NOT NULL,
  `PayerFinInstBranchCode`               varchar(10) NOT NULL,
  `PayerFinInstFullCode`                 varchar(15) NOT NULL,
  `PayerFinInstSWIFTCode`                varchar(11) DEFAULT NULL,
  `PayerInternalFinInstCustomerID`       int(12) NOT NULL,
  `PayerInternalFinInstAccountID`        int(12) NOT NULL,
  `PayerFinInstControlKey`               varchar(2) NOT NULL,
  `PayerFinInstAccount`                  varchar(18) NOT NULL,
  `PayerFinInstAccountName`              varchar(40) NOT NULL,
  `PayerFinInstName`                     varchar(100) NOT NULL,
  `PayerFinInstBranchName`               varchar(100) NOT NULL,
  `PayerFinInstCustomerIDByFinInst`      varchar(10) NOT NULL,
  `PaymentRequisitionIsCanceled`         tinyint(1) 
  `CreationDateTime`                     datetime DEFAULT NULL,
  `ChangedOnDateTime`                    datetime DEFAULT NULL,

    PRIMARY KEY (`PayerPaymentRequisitionID`),

    CONSTRAINT `DataPlatformPaymentRequisitionHeaderDataPayer_fk` FOREIGN KEY (`Payer`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformPaymentRequisitionHeaderDataCurrency_fk` FOREIGN KEY (`Currency`) REFERENCES `data_platform_currency_currency_data` (`Currency`),
    CONSTRAINT `DataPlatformPaymentRequisitionHeaderDataFinInstAccount_fk` FOREIGN KEY (`PayerFinInstCountry`, `PayerFinInstCode`, `PayerFinInstBranchCode`, `PayerFinInstFullCode`, `PayerInternalFinInstCustomerID`, `PayerInternalFinInstAccountID`) REFERENCES `data_platform_fin_inst_acccount_item_data` (`FinInstCountry`, `FinInstCode`, `FinInstBranchCode`, `FinInstFullCode`, `InternalFinInstCustomerID`, `InternalFinInstAccountID`)

) ENGINE = InnoDB
DEFAULT CHARSET = utf8mb4;
