# data-platform-payment-requisition-sql 
data-platform-payment-requisition-sqlは、データ連携基盤において、支払依頼データを維持管理するSQLテーブルを作成するためのレポジトリです。  


## 前提条件  
data-platform-payment-requisition-sqlは、は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview  

## sqlの設定ファイル
data-platform-payment-requisition-sqlには、sqlの設定ファイルとして以下のsqlファイルが含まれています。

* data-platform-payment-requisition-sql-payment-requisition-data.sql （データ連携基盤 支払依頼 - 支払依頼データ）
* data-platform-payment-requisition-sql-payment-requisition-pdf-data.sql （データ連携基盤 支払依頼 - PDFデータ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。
