import tester.*


def proxy = new TestProxy([
     'default.host' : 'localhost:8080',
     'app.context'  : 'loon',   
])

def svc = proxy.create('RPTV1MigrationService') 

def version_name = 'etracsv1'

def insertRecords = { objname ->
    svc.getObjidList(version_name, objname).each{
        println 'Processing ' + objname + ' -> ' + it.objid 
        svc.insertObject( version_name, objname, it )
    }
}


svc.deleteTargetDB('rptsetting');
svc.deleteTargetDB('propertyclassification');
svc.deleteTargetDB('exemptiontype');
svc.deleteTargetDB('canceltdreason');
svc.deleteTargetDB('kindofbuilding');
svc.deleteTargetDB('materials');
svc.deleteTargetDB('structures');
svc.deleteTargetDB('machines');
svc.deleteTargetDB('plantsandtrees');
svc.deleteTargetDB('rptparameters');
svc.deleteTargetDB('miscitems');


insertRecords('rptsetting')
insertRecords('propertyclassification')
insertRecords('exemptiontype')
insertRecords('canceltdreason')
insertRecords('kindofbuilding')
insertRecords('materials')
insertRecords('structures')
insertRecords('machines')
insertRecords('plantsandtrees')
insertRecords('rptparameters')
insertRecords('miscitems')


//---------------- landrysetting --------------------

svc.deleteTargetDB( 'landadjustment');
svc.deleteTargetDB( 'lcuvstripping');
svc.deleteTargetDB( 'lcuvsubclass');
svc.deleteTargetDB( 'lcuvspecificclass');
svc.deleteTargetDB( 'lcuv');
svc.deleteTargetDB( 'landassesslevel' );
svc.deleteTargetDB( 'landrysetting' );


insertRecords('landrysetting')
insertRecords('landassesslevel')
svc.updateLandAssessLevelRanges()
insertRecords('lcuv')
insertRecords('lcuvspecificclass')
insertRecords('lcuvsubclass')
insertRecords('lcuvstripping')
insertRecords('landadjustment')

//---------------- bldgrysetting --------------------
svc.deleteTargetDB( 'bldgadditionalitem');
svc.deleteTargetDB( 'bldgkindbucc');
svc.deleteTargetDB( 'bldgtype');
svc.deleteTargetDB( 'bldgassesslevel');
svc.deleteTargetDB( 'bldgrysetting');

insertRecords('bldgrysetting')
insertRecords('bldgassesslevel')
svc.updateBldgAssessLevel()
insertRecords('bldgtype')
insertRecords('bldgkindbucc')
insertRecords('bldgadditionalitem')

svc.updateBldgAdditionalItem()
println 'done svc.updateBldgAdditionalItem()';

svc.updateBldgKindBucc()
println 'done svc.updateBldgKindBucc()'




//---------------- machrysetting --------------------

svc.deleteTargetDB('machassesslevel');
svc.deleteTargetDB('machrysetting');

insertRecords('machrysetting')
insertRecords('machassesslevel')
svc.updateMachAssessLevel()
println 'done updateMachAssessLevel() '


//---------------- planttreerysetting --------------------

svc.deleteTargetDB('planttreeunitvalue');
svc.deleteTargetDB('planttreerysetting');

insertRecords('planttreerysetting')
insertRecords('planttreeunitvalue')

svc.updatePlantTreeRySetting()
println 'done updatePlantTreeRySetting()'

//---------------- miscrysetting --------------------
svc.deleteTargetDB('miscassesslevel');
svc.deleteTargetDB('miscrysetting');

insertRecords('miscrysetting')
insertRecords('miscassesslevel')

svc.updateMiscAssessLevel();
println "done updateMiscAssessLevel()";


objname = 'entity';
svc.deleteTargetDB(objname);
insertRecords(objname)

objname = 'entitymember';
svc.deleteTargetDB(objname);
insertRecords(objname)

svc.updateIndividualEntityInfo()
println 'done svc.updateIndividualEntityInfo()...'

svc.updateMultipleEntityInfo()
println 'done svc.updateMultipleEntityInfo()...'

svc.deleteRPTRuleGroup()
println 'done svc.deleteRPTRuleGroup()...'

svc.insertRPTRuleGroup()
println 'done svc.insertRPTRuleGroup()...'



def faasSvc = proxy.create('RPTV1FAASMigrationService') 

faasSvc.insertPin()


svc.deleteTargetDB('faaslist');
svc.deleteTargetDB('faas');

def type = 'land'
faasSvc.getFaasIds(type).each {
    faasSvc.insertFaas( it.objid, lgupin )
}
printDone( "done faasSvc.insertFaast( ) type: land...", g_errorlist )


type = 'all'
faasSvc.getFaasIds(type).each{
    faasSvc.insertFaas(it, lgupin )
}
printDone( "done faasSvc.insertFaast( ) type: all...", g_errorlist )

faasSvc.updateImprovementsLandFaas();
println 'faasSvc.updateImprovementsLandFaas()'


svc.deleteTargetDB('rptledgeritem');
svc.deleteTargetDB('rptledger');

objname = 'rptledger';
svc.getObjidList('etracsv1', objname).each{
    svc.insertObjectById( 'etracsv1', objname, it.objid )
}
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )

objname = 'rptledgeritem';
svc.getObjidList('etracsv1', objname).each{
    svc.insertObjectById( 'etracsv1', objname, it.objid )
}
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )



println 'done'