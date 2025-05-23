enable - enable
conf t - configurar terminal
hostname - seta nome servidor
ip domain-name - setar dominio
enable secret - configurar senha para acesso ao modo privilegiado
banner motd - Configurar Banner de Boas-Vindas
banner login - configurar mensagem apos login 
crypto key generate rsa general-keys modulus 1024 habilitar acesso remoto via sshv2
ip ssh version 2 - habilitar versao 2 do ssh globalmente
line vty 0 15 - Seleciona todas as 16 linhas VTY disponíveis (0 a 15).
transport input ssh - Permite apenas conexões SSH nessas linhas.
login local - Diz ao dispositivo para usar o banco de dados de usuários local
exec-timeout 15 0 - Define o tempo de inatividade da sessão em 15 minutos e 0 segundos. Se não houver atividade nesse período, a sessão será encerrada
service password-encryption - habilita criptografia das chaves
username admin secret - cria um usuario com a sua senha
end - sair e salvar

show ip interface brief - ver o que precisa configurar de ip

muda nome (entrar dentro da VLAN)vlan - name 