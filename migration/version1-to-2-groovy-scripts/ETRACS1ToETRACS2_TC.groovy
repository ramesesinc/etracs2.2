import tester.*


def proxy = new TestProxy([
     'default.host' : 'localhost:8080',
     'app.context'  : 'loon',   
])

def svc = proxy.create('TCV1MigrationService') 

def version_name = 'etracsv1'

def insertRecords = { objname ->
    svc.getObjidList(version_name, objname).each{
        println 'Processing ' + objname + ' -> ' + it.objid 
        svc.insertObject( version_name, objname, it )
    }
}


svc.deleteTargetDB( 'revenue' )
svc.deleteTargetDB( 'liquidation' )
svc.deleteTargetDB( 'remittedform' )
svc.deleteTargetDB( 'remittance' )
svc.deleteTargetDB( 'paymentitem' )
svc.deleteTargetDB( 'receiptitem' )
svc.deleteTargetDB( 'receiptlist' )
svc.deleteTargetDB( 'craaf' )
svc.deleteTargetDB( 'afcontrol' )
svc.deleteTargetDB( 'afinventorycredit' )
svc.deleteTargetDB( 'afinventory' )
svc.deleteTargetDB( 'collectiontype' )
svc.deleteTargetDB( 'collectiongroup' )
svc.deleteTargetDB( 'incomeaccount' )
svc.deleteTargetDB( 'account' )
svc.deleteTargetDB( 'fund' )
svc.deleteTargetDB( 'af' )


insertRecords('af')
insertRecords('fund')
svc.initAccount()
insertRecords('account')
insertRecords('incomeaccount')
insertRecords('collectiongroup')
insertRecords('collectiontype')
insertRecords('afinventory')
insertRecords('afinventorycredit')
insertRecords('craaf')
insertRecords('craaf_inventory')
insertRecords('craaf_credit')
insertRecords('afcontrol')
insertRecords('receiptlist')
insertRecords('receiptitem')
insertRecords('paymentitem_cash')
insertRecords('paymentitem_check')
insertRecords('remittance')
insertRecords('remittedform')
insertRecords('liquidation')
insertRecords('revenue')

svc.updateAccountChartType();
println 'done updateAccountChartType()..  '

svc.updateIncomeAccount();
println 'done updateIncomeAccount().. '

svc.updateAccountPathbyTitle();
println 'done updateAccountPathbyTitle().. '

svc.insertLiquidationrcd();
println 'done insertLiquidationrcd().. '

svc.updateReceiptItemLiquidationId();
println 'done updateReceiptItemLiquidationId().. '

svc.updateRevenueLiquidationId();
println 'done updateRevenueLiquidationId().. '


svc.updateRevenueDepositInfo();
println 'done updateRevenueDepositInfo().. '


svc.updateAccount(null, 0)
println 'done updateAccount()...'

svc.updateRemittanceInfo()
println 'done updateRemittanceInfo()...'

svc.updateLiquidationInfo()
println 'done updateLiquidationInfo()...'

svc.updateBusinessReceipt() 
println 'done updateBusinessReceipt()...'

println 'done'