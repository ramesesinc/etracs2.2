import tester.*


def proxy = new TestProxy([
     'default.host' : 'localhost:8080',
     'app.context'  : 'loon',   
])

def svc = proxy.create('AdminMigrationService') 

def version_name = 'etracsv1'

def insertRecords = { objname ->
    svc.getObjidList(version_name, objname).each{
        println 'Processing ' + objname + ' -> ' + it.objid 
        svc.insertObject( version_name, objname, it )
    }
}

svc.deleteTargetDB( 'lgu')
svc.deleteTargetDB( 'jobposition')
svc.deleteTargetDB( 'personnel')
svc.deleteTargetDB( 'useraccount')
svc.deleteTargetDB( 'orgtype')
svc.deleteTargetDB( 'role')

insertRecords( 'lgu' )
insertRecords( 'personnel' )
insertRecords( 'useraccount' )
insertRecords( 'orgtype' )

svc.createAdminAccount();
svc.updatePassword();
svc.insertRole();

println 'done'