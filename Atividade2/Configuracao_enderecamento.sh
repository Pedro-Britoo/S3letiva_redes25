enable
configure terminal

interface GigabitEthernet0/0  (ou a interface real conectada à rede 98.76.54.0/24 e ao PC REMOTE)
 ip address 98.76.54.254 255.255.255.0
 no shutdown
exit

interface GigabitEthernet0/1  (ou a interface real conectada ao HQ1)
 ip address 98.76.1.254 255.255.255.0
 no shutdown
exit

interface GigabitEthernet0/2  (ou a interface real conectada ao HQ2)
 ip address 98.76.2.254 255.255.255.0
 no shutdown
exit

interface Loopback0  (Esta interface não está no apêndice para IP, mas foi mencionada para DNS e publicação. Vamos usar o 1.1.1.1 como exemplo)
 ip address 1.1.1.1 255.255.255.255
 no shutdown
exit

end
copy running-config startup-config