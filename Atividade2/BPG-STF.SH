CRIAR UM ROTEAMENTO UTILIZANDO O PROTOCOLO OSPF
(config) router ospf <IDENTIFICADOR DO DOMÍNIO DO ROUTER>

(config-router)router-id <IP PARA IDENTIFICAR O ROUTER NO DOMÍNIO>

(config-router)network <ID DA REDE A SER CONHECIDA> <MÁSCARA DE SUBREDE (CURINGA)> area <NÚMERO DA ÁREA QUE ESTOU TRABALHANDO>

/*DESATIVAR ANÚNCIOS PARA AS INTERFACES QUE ESTÃO PRA LAN*/

(config-router)passive-interface <INTERFACE QUE ESTÁ PRA LAN>

RT SP
enable
conf t
interface g0/1
no shutdown
ip address 192.168.10.1 255.255.255.0

interface g0/0
no shutdown
ip address 200.200.200.1 255.255.255.252
router bgp 65000
network 192.168.10.0 mask 255.255.255.0
network 200.200.200.0 mask 255.255.255.252
neighbor 200.200.200.2 remote-as 65001 (IP E AS DO MEU VIZINHO)

######################################################################################################
                            RT RJ
enable
conf t
interface g0/0
no shutdown
ip address 200.200.200.2 255.255.255.252

interface g0/2
no shutdown
ip address 200.200.200.5 255.255.255.252


interface g0/1
no shutdown
ip address 192.168.20.1 255.255.255.0

router bgp 65001
network 192.168.20.0 mask 255.255.255.0
network 200.200.200.0 mask 255.255.255.252
network 200.200.200.4 mask 255.255.255.252

neighbor 200.200.200.1 remote-as 65000 (IP E AS DO MEU VIZINHO)
neighbor 200.200.200.6 remote-as 65002 (IP E AS DO MEU VIZINHO)


######################################################################################################
                            RT MG

enable
conf t
interface g0/1
no shutdown
ip address 192.168.30.1 255.255.255.0

interface g0/2
no shutdown
ip address 200.200.200.6 255.255.255.252

router bgp 65002
network 192.168.30.0 mask 255.255.255.0
network 200.200.200.4 mask 255.255.255.252
neighbor 200.200.200.5 remote-as 65001 (IP E AS DO MEU VIZINHO)