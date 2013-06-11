import tester.*

def env = [
    'app.host': 'localhost:8080',
    'app.context': 'misocc'
]

def proxy = new TestProxy(env)
def svc = proxy.create('XPatchServiceV22011')

svc.getBPApplications().each{
    println 'Processing objid ' + it.objid
    svc.separateLedgerData( it.objid )
}

svc.migrateSetting()

println 'done' 