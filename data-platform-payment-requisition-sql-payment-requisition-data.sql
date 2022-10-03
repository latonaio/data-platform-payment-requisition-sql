CREATE TABLE `data_platform_payment_requisition_payment_requisition_data`
(
  `BusinessPartner`                      varchar(10) NOT NULL,        --新規追加
  `PaymentDate`                          varchar(80) NOT NULL,        --新規追加
  `PaymentRequisitionID`                 varchar(6) NOT NULL,         --新規追加
  `PaymentReqnStatus`                    varchar(2)  DEFAULT NULL,    --名称変更
  `PaytReqnAmtInTransCrcy`               varchar(15) DEFAULT NULL,    --名称変更
  `Currency`                             varchar(3)  DEFAULT NULL,
  `PaymentMethod`                        varchar(1)  DEFAULT NULL,
  `PostingDate`                          varchar(80) DEFAULT NULL,    --新規追加
  `HouseBank`                            varchar(5)  DEFAULT NULL,
  `HouseBankAccount`                     varchar(5)  DEFAULT NULL,
  `BankIdentification`                   varchar(4)  DEFAULT NULL,    --新規追加
  `BankNumber`                           varchar(15) DEFAULT NULL,    --名称変更
  `SWIFTCode`                            varchar(11) DEFAULT NULL,    --新規追加
  `BankName`                             varchar(60) DEFAULT NULL,    --新規追加
  `BankBranch`                           varchar(40) DEFAULT NULL,    --新規追加
  `BankAccount`                          varchar(18) DEFAULT NULL,
  `BankControlKey`                       varchar(2) DEFAULT NULL,     --新規追加
  `BankAccountName`                      varchar(40) DEFAULT NULL,    --新規追加
  `CreationDateTime`                     varchar(80) DEFAULT NULL,
  `ChangedOnDateTime`                    varchar(80) DEFAULT NULL,
  `AccountingDocument`                   varchar(10) DEFAULT NULL,    --新規追加
  `AccountingDocumentItem`               varchar(3) DEFAULT NULL,     --新規追加
    PRIMARY KEY (`BusinessPartner`, `PaymentDate`, `PaymentRequisitionID`)
) ENGINE = InnoDB
DEFAULT CHARSET = utf8mb4;
