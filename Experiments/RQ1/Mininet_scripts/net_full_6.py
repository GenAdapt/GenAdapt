#!/usr/bin/python

from mininet.topo import Topo
from mininet.net import Mininet
from mininet.node import RemoteController
from mininet.node import Node
from mininet.node import CPULimitedHost
from mininet.link import TCLink
from mininet.cli import CLI
from mininet.log import setLogLevel
from mininet.util import dumpNodeConnections

class FullTopo( Topo ):

    def addSwitch( self, name, **opts ):
        kwargs = { 'protocols' : 'OpenFlow13' }
        kwargs.update( opts )
        return super(FullTopo, self).addSwitch( name, **kwargs )
    
    def __init__( self ):
        "Create a topology."
        SIZE = 6

        Topo.__init__( self )

        # switches: MUST s1..sn
        s = []
        for i in range(SIZE):
            s.append( self.addSwitch( 's' + str(i+1) ) )

        # hosts: MUST h1..sm
        h = []
        
        for i in range(20):
            h.append( self.addHost( 'h' + str(i+1) ) )
        for i in range(20, 20+SIZE):
            h.append( self.addHost( 'h' + str(i+1) ) )

        # links between switch and corresponding host
        for i in range(20):
            self.addLink( s[0], h[i] )
        for i in range(20, 20+SIZE):
            self.addLink( s[i-20], h[i] )

        # links between switches
        for i in range(SIZE):
            for j in range(i, SIZE):
                if i != j:
                    self.addLink( s[i], s[j], bw=100, delay='25ms' )

topos = { 'full': ( lambda: FullTopo() ) }

if __name__ == '__main__':
    from onosnetssh import run
    run( FullTopo() )
