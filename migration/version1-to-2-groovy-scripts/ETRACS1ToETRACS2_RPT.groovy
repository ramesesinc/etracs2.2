import tester.*


def proxy = new TestProxy([
     'default.host' : '192.168.56.1:8080',
     'app.context'  : 'catanduanes',   
])



int BATCHSIZE = 25
int THREAD_COUNT = 20
def g_errorlist = []

def getNextBatch( list, size) {
    def batch = []
    if( list.size() >= size ) {
        list[0..(size-1)].each{ batch.add(it) }
    }
    else if( list.size() > 0 )  {
        list.each{ batch.add(it) }
    }
    list.removeAll( batch )
    return batch
}

def executeAction = { action, list ->
    int batchno = 0
    def batch = getNextBatch( list, BATCHSIZE)
    while( faasbatch ) {
        println 'processing batch -> ' + (++batchno)
        action( batch )
        batch = getFAASBatch( faaslist , BATCHSIZE)
        
    }
}

def executeAction2 = { action, list, processname ->
    int batchno = 0
    
    def batch = getNextBatch( list, BATCHSIZE)
    while( batch ) {
        def batchlist = [ batch ]
        1.upto(THREAD_COUNT-1) {
            batchlist[it] = getNextBatch(list, BATCHSIZE)
        }
        batchlist.each{ item ->
            if( item ) {
                println processname + ': processing item ' + (++batchno)
                Thread.start{ action( item ) } as Runnable
            }
        }
        
        println 'waiting for all tasks to be done...'
        while( batchlist.findAll{ it != null && it.size() > 0 } ) {
            Thread.sleep(200)
        }
        
        batch = getNextBatch( list, BATCHSIZE)
    }
}

void printDone( action, g_errorlist ){
    try {
        println '-'*50
        println action
        println 'Error Listing'
        g_errorlist.each{ println it }
        g_errorlist = []
        println '-'*50
    }
    catch(e) {
        println 'error in printing print done'
    }
    g_errorlist = []
}



def svc = proxy.create('RPTV1MigrationService') 
/*
def objname = 'rptsetting';
svc.deleteTargetDB(objname);
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )



def objname = 'propertyclassification';
svc.deleteTargetDB(objname);
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )

objname = 'exemptiontype';
svc.deleteTargetDB(objname);
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )

objname = 'canceltdreason';
svc.deleteTargetDB(objname);
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )

objname = 'kindofbuilding';
svc.deleteTargetDB(objname);
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )

objname = 'materials';
svc.deleteTargetDB(objname);
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )

objname = 'structures';
svc.deleteTargetDB(objname);
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )


objname = 'machines';
svc.deleteTargetDB(objname);
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )

objname = 'plantsandtrees';
svc.deleteTargetDB(objname);
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )

objname = 'rptparameters';
svc.deleteTargetDB(objname);
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )

objname = 'miscitems';
svc.deleteTargetDB(objname);
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )


//---------------- landrysetting --------------------

svc.deleteTargetDB( 'landadjustment');
svc.deleteTargetDB( 'lcuvstripping');
svc.deleteTargetDB( 'lcuvsubclass');
svc.deleteTargetDB( 'lcuvspecificclass');
svc.deleteTargetDB( 'lcuv');
svc.deleteTargetDB( 'landassesslevel' );
svc.deleteTargetDB( 'landrysetting' );


objname = 'landrysetting';
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )


objname = 'landassesslevel';
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )


objname = 'lcuv';
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )

objname = 'lcuvspecificclass';
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )

objname = 'lcuvsubclass';
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )

objname = 'lcuvstripping';
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )

objname = 'landadjustment';
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )

//---------------- bldgrysetting --------------------



svc.deleteTargetDB( 'bldgadditionalitem');
svc.deleteTargetDB( 'bldgkindbucc');
svc.deleteTargetDB( 'bldgtype');
svc.deleteTargetDB( 'bldgassesslevel');
svc.deleteTargetDB( 'bldgrysetting');

objname = 'bldgrysetting';
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )

objname = 'bldgassesslevel';
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )

svc.updateBldgAssessLevel()

objname = 'bldgtype';
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )


objname = 'bldgkindbucc';
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )

objname = 'bldgadditionalitem';
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )


svc.updateBldgAdditionalItem()




//---------------- machrysetting --------------------
/*
svc.deleteTargetDB('machassesslevel');
svc.deleteTargetDB('machrysetting');


objname = 'machrysetting';
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )

objname = 'machassesslevel';
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )


//---------------- planttreerysetting --------------------

svc.deleteTargetDB('planttreeunitvalue');
svc.deleteTargetDB('planttreerysetting');


objname = 'planttreerysetting';
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )


objname = 'planttreeunitvalue';
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )

svc.updatePlantTreeRySetting()

objname = 'entity';
svc.deleteTargetDB(objname);
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )

objname = 'entitymember';
svc.deleteTargetDB(objname);
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )


def faasSvc = proxy.create('RPTV1FAASMigrationService') 
faasSvc.insertPin()

*/

def faasSvc = proxy.create('RPTV1FAASMigrationService') 
svc.deleteTargetDB('faaslist');
svc.deleteTargetDB('faas');
def lgupin = '027'
def type = 'land'
executeAction2({  g_errorlist.addAll(faasSvc.insertFaas(it, lgupin )); it.clear() }, faasSvc.getFaasIds(type), 'faas' )
printDone( "done faasSvc.insertFaast( ) type: land...", g_errorlist )

type = 'all'
executeAction2({  g_errorlist.addAll(faasSvc.insertFaas(it, lgupin )); it.clear() }, faasSvc.getFaasIds(type), 'faas' )
printDone( "done faasSvc.insertFaast( ) type: all...", g_errorlist )




println 'done'