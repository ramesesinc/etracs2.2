import tester.*

def env = [
    'app.host': '192.168.56.1:8080',
    'app.context': 'municipality'
]

def proxy = new TestProxy(env)
def svc = proxy.create('XFAASMigrationService')

svc.rebuildRpu( '2005-05002-0958' )
'done' 