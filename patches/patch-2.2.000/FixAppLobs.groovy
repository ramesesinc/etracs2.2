import tester.*

def env = [
    'app.host': '192.168.56.1:8080',
    'app.context': 'virac'
]

def proxy = new TestProxy(env)
def svc = proxy.create('XBPMigrationService')

svc.fixExpiredAppLobs()

println 'done' 