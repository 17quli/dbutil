CREATE TABLE ${var:target_db}.app_tblnz_rtnfinanstmts (
flngDocKey INT,
fblnMultipleActivity SMALLINT,
fcurGrossSales DECIMAL(19,4),
fcurGoodsOpeningStock DECIMAL(19,4),
fcurGoodsPurchases DECIMAL(19,4),
fcurGoodsClosingStock DECIMAL(19,4),
fcurGrossProfit DECIMAL(19,4),
fcurOtherGrossInterest DECIMAL(19,4),
fcurOtherGrossDividends DECIMAL(19,4),
fcurOtherRental DECIMAL(19,4),
fcurOtherIncome DECIMAL(19,4),
fcurTotalIncome DECIMAL(19,4),
fcurBadDebt DECIMAL(19,4),
fcurAccountingDepreciation DECIMAL(19,4),
fcurInsurance DECIMAL(19,4),
fcurInterestExpense DECIMAL(19,4),
fcurProfessionalFees DECIMAL(19,4),
fcurRates DECIMAL(19,4),
fcurRentalPayments DECIMAL(19,4),
fcurRepairsMaintenance DECIMAL(19,4),
fcurResearchDevelopment DECIMAL(19,4),
fcurAssociatedRemuneration DECIMAL(19,4),
fcurEmployeeSalary DECIMAL(19,4),
fcurContractorPayments DECIMAL(19,4),
fcurOtherExpenses DECIMAL(19,4),
fcurTotalExpenses DECIMAL(19,4),
fcurExceptionalItems DECIMAL(19,4),
fcurNetProfitBeforeTax DECIMAL(19,4),
fcurTaxAdjustments DECIMAL(19,4),
fcurCurrentTaxableProfit DECIMAL(19,4),
fcurAccountsReceivable DECIMAL(19,4),
fcurCashDeposits DECIMAL(19,4),
fcurOtherAssets DECIMAL(19,4),
fcurVehicles DECIMAL(19,4),
fcurPlantMachinery DECIMAL(19,4),
fcurFurnitureFittings DECIMAL(19,4),
fcurLand DECIMAL(19,4),
fcurBuildings DECIMAL(19,4),
fcurOtherFixedAssets DECIMAL(19,4),
fcurIntangibles DECIMAL(19,4),
fcurSharesInterests DECIMAL(19,4),
fcurTermDeposits DECIMAL(19,4),
fcurNonCurrentAssets DECIMAL(19,4),
fcurTotalAssets DECIMAL(19,4),
fcurProvisions DECIMAL(19,4),
fcurAccountsPayable DECIMAL(19,4),
fcurCurrentLoan DECIMAL(19,4),
fcurOtherCurrentLiabilities DECIMAL(19,4),
fcurTotalCurrentLiabilities DECIMAL(19,4),
fcurNonCurrentLiabilities DECIMAL(19,4),
fcurFinalTotalLiabilities DECIMAL(19,4),
fcurOwnersEquity DECIMAL(19,4),
fcurTaxDepreciation DECIMAL(19,4),
fcurUntaxedGains DECIMAL(19,4),
fcurAdditionFixedAssets DECIMAL(19,4),
fcurDisposalsFixedAssets DECIMAL(19,4),
fcurDividendsPaid DECIMAL(19,4),
fcurDrawings DECIMAL(19,4),
fcurCurrentAccountBalances DECIMAL(19,4),
fcurTaxDeductibleLoss DECIMAL(19,4),
fstrWho VARCHAR(20),
fdtmWhen TIMESTAMP,
record_effective_timestamp TIMESTAMP,
record_expiry_timestamp TIMESTAMP,
record_active_flag VARCHAR(1),
record_deleted_flag VARCHAR(1),
insert_object_run_key INT,
update_object_run_key INT
 ) STORED AS PARQUET;
