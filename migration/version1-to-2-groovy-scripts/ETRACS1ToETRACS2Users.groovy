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



def svc = proxy.create('AdminMigrationService') 

def objname = 'lgu';
svc.deleteTargetDB( objname);
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )

svc.deleteTargetDB( 'jobposition');

objname = 'personnel';
svc.deleteTargetDB( objname);
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )

objname = 'useraccount';
svc.deleteTargetDB( objname);
executeAction2({  g_errorlist.addAll(svc.insertObject( 'etracsv1', objname, it )); it.clear() }, svc.getObjidList('etracsv1', objname), objname )
printDone( "done svc.insertObject(etracsv1, ${objname})...", g_errorlist )

svc.createAdminAccount();
svc.updatePassword();


svc.deleteTargetDB( 'role' );
svc.insertRole();

svc.deleteTargetDB('orgtype')
svc.createOrgType()

println 'done'
