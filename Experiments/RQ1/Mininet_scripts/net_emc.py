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

class DMSTopo( Topo ):

    def addSwitch( self, name, **opts ):
        kwargs = { 'protocols' : 'OpenFlow13' }
        kwargs.update( opts )
        return super(DMSTopo, self).addSwitch( name, **kwargs )
    
    def __init__( self ):
        "Create a topology."

        Topo.__init__( self )

        # switches: MUST s1..sn
        sIoC1 = self.addSwitch( 's1' )
        sGS1 = self.addSwitch( 's2' )
        s1IoC1 = self.addSwitch( 's3' )
        s2IoC1 = self.addSwitch( 's4' )
        s3IoC1 = self.addSwitch( 's5' )
        s4IoC1 = self.addSwitch( 's6' )
        s5IoC1 = self.addSwitch( 's7' )

        # hosts: MUST h1..sm
        hV1_sIoC1 = self.addHost( 'h1' )
        hA1_sIoC1 = self.addHost( 'h2' )
        hD1_sIoC1 = self.addHost( 'h3' )
        hS1_sIoC1 = self.addHost( 'h4' )
        hE1_sIoC1 = self.addHost( 'h5' )

        hE1_sGS1 = self.addHost( 'h6' )

        hV1_s1IoC1 = self.addHost( 'h7' )
        hA1_s1IoC1 = self.addHost( 'h8' )
        hD1_s1IoC1 = self.addHost( 'h9' )
        hS1_s1IoC1 = self.addHost( 'h10' )
        hE1_s1IoC1 = self.addHost( 'h11' )

        hV1_s2IoC1 = self.addHost( 'h12' )
        hA1_s2IoC1 = self.addHost( 'h13' )
        hD1_s2IoC1 = self.addHost( 'h14' )
        hS1_s2IoC1 = self.addHost( 'h15' )
        hE1_s2IoC1 = self.addHost( 'h16' )

        hV1_s3IoC1 = self.addHost( 'h17' )
        hA1_s3IoC1 = self.addHost( 'h18' )
        hD1_s3IoC1 = self.addHost( 'h19' )
        hS1_s3IoC1 = self.addHost( 'h20' )
        hE1_s3IoC1 = self.addHost( 'h21' )

        hV1_s4IoC1 = self.addHost( 'h22' )
        hA1_s4IoC1 = self.addHost( 'h23' )
        hD1_s4IoC1 = self.addHost( 'h24' )
        hS1_s4IoC1 = self.addHost( 'h25' )
        hE1_s4IoC1 = self.addHost( 'h26' )

        hV1_s5IoC1 = self.addHost( 'h27' )
        hA1_s5IoC1 = self.addHost( 'h28' )
        hD1_s5IoC1 = self.addHost( 'h29' )
        hS1_s5IoC1 = self.addHost( 'h30' )
        hE1_s5IoC1 = self.addHost( 'h31' )

        # links between switch and corresponding host
        self.addLink( sIoC1, hV1_sIoC1 )
        self.addLink( sIoC1, hA1_sIoC1 )
        self.addLink( sIoC1, hD1_sIoC1 )
        self.addLink( sIoC1, hS1_sIoC1 )
        self.addLink( sIoC1, hE1_sIoC1 )

        self.addLink( sGS1, hE1_sGS1 )

        self.addLink( s1IoC1, hV1_s1IoC1 )
        self.addLink( s1IoC1, hA1_s1IoC1 )
        self.addLink( s1IoC1, hD1_s1IoC1 )
        self.addLink( s1IoC1, hS1_s1IoC1 )
        self.addLink( s1IoC1, hE1_s1IoC1 )

        self.addLink( s2IoC1, hV1_s2IoC1 )
        self.addLink( s2IoC1, hA1_s2IoC1 )
        self.addLink( s2IoC1, hD1_s2IoC1 )
        self.addLink( s2IoC1, hS1_s2IoC1 )
        self.addLink( s2IoC1, hE1_s2IoC1 )

        self.addLink( s3IoC1, hV1_s3IoC1 )
        self.addLink( s3IoC1, hA1_s3IoC1 )
        self.addLink( s3IoC1, hD1_s3IoC1 )
        self.addLink( s3IoC1, hS1_s3IoC1 )
        self.addLink( s3IoC1, hE1_s3IoC1 )

        self.addLink( s4IoC1, hV1_s4IoC1 )
        self.addLink( s4IoC1, hA1_s4IoC1 )
        self.addLink( s4IoC1, hD1_s4IoC1 )
        self.addLink( s4IoC1, hS1_s4IoC1 )
        self.addLink( s4IoC1, hE1_s4IoC1 )

        self.addLink( s5IoC1, hV1_s5IoC1 )
        self.addLink( s5IoC1, hA1_s5IoC1 )
        self.addLink( s5IoC1, hD1_s5IoC1 )
        self.addLink( s5IoC1, hS1_s5IoC1 )
        self.addLink( s5IoC1, hE1_s5IoC1 )

        # links between switches
        self.addLink( s1IoC1, sIoC1, bw=100, delay='25ms')
        self.addLink( s2IoC1, sIoC1, bw=100, delay='25ms')
        self.addLink( s3IoC1, sIoC1, bw=100, delay='25ms')
        self.addLink( s4IoC1, sIoC1, bw=100, delay='25ms')

        self.addLink( sGS1, sIoC1, bw=100, delay='25ms')
        self.addLink( s2IoC1, s3IoC1, bw=100, delay='25ms')
        self.addLink( s3IoC1, s4IoC1, bw=100, delay='25ms')
        self.addLink( s1IoC1, sGS1, bw=100, delay='25ms')

        self.addLink( s1IoC1, sGS1, bw=10, delay='275ms')
        self.addLink( s2IoC1, sGS1, bw=10, delay='275ms')
        self.addLink( s3IoC1, sGS1, bw=10, delay='275ms')
        self.addLink( s4IoC1, sGS1, bw=10, delay='275ms')
        self.addLink( s5IoC1, sGS1, bw=10, delay='275ms')
        self.addLink( sIoC1, sGS1, bw=10, delay='275ms')

topos = { 'dms': ( lambda: DMSTopo() ) }

if __name__ == '__main__':
    from onosnetssh import run
    run( DMSTopo() )
