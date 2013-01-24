import tester.*

def env = [
    'app.host': '192.168.56.1:8080',
    'app.context': 'municipality'
]

def proxy = new TestProxy(env)
def svc = proxy.create('XPatchServiceV22001')

def list = svc.getLandPins()
list.each{
    println 'Processing PIN ' + it.pin
    svc.updateRealPropertyId( it )
}

println 'done' 