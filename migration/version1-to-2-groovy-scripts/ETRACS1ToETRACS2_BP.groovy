import tester.*


def proxy = new TestProxy([
     'default.host' : 'localhost:8080',
     'app.context'  : 'loon',   
])

def svc = proxy.create('BPV1MigrationService') 

def version_name = 'etracsv1'

def insertRecords = { objname ->
    svc.getObjidList(version_name, objname).each{
        println 'Processing ' + objname + ' -> ' + it.objid 
        svc.insertObject( version_name, objname, it )
    }
}

svc.cleanTargetDB( 'lobclassification', '')
svc.cleanTargetDB( 'lobattribute', '')
svc.cleanTargetDB( 'lob', '')
svc.cleanTargetDB( 'variable', '')


insertRecords('lobclassification')
svc.initLobAttribure()
insertRecords('lob')
insertRecords('lob_retailer')
insertRecords('lob_remaining')
insertRecords('variable')


svc.cleanTargetDBSys( 'rulegroup', " where ruleset = 'bpassessment'");
svc.initRuleGroup();

svc.cleanTargetDBSys( 'rule', " where ruleset = 'bpassessment'")
insertRecords( 'rule' )

insertRecords( 'bpapplication' )
insertRecords( 'bpapplicationlisting' )
insertRecords( 'bpappinfolisting' )
insertRecords( 'bploblisting' )
insertRecords( 'business' )
insertRecords( 'bppermit' )

svc.updateBPApplication()
println 'done updateBPApplication()'

svc.updateBPPermitLobs()
println 'done updateBPPermitLobs()'

svc.cleanupRuleConditions()
println 'done cleanupRuleConditions()'

svc.migrateApplicationTypeConditions()
println 'done migrateApplicationTypeConditions()'

svc.migrateLobClassificationConditions()
println 'done migrateLobClassificationConditions()'

svc.migrateBusinessOrgConditions()
println 'done migrateBusinessOrgConditions()'

svc.migrateOfficeTypeConditions()
println 'done migrateOfficeTypeConditions()'

svc.migrateBarangayConditions()
println 'done migrateBarangayConditions()'

svc.migrateLobConditions()
println 'done migrateLobConditions()'

svc.migrateVariableConditions()
println 'done migrateVariableConditions()'

svc.migrateTaxFeeConditions()
println 'done migrateTaxFeeConditions()'

svc.cleanupRuleAction() 
println 'done cleanupRuleAction()'

svc.migrateAskInfoAction()
println 'done migrateAskInfoAction()'

svc.migrateTaxFeeChargeFormulaModeAction()
println 'done migrateTaxFeeChargeFormulaModeAction()'

svc.migrateTaxFeeChargeRangeModeAction()
println 'done migrateTaxFeeChargeRangeModeAction()'

svc.migrateUpdateAmountDueAction()
println 'done migrateUpdateAmountDueAction()'

println 'done'