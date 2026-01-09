@echo off
echo Switching network adapters...

netsh interface set interface "Ethernet" admin=enable
netsh interface set interface "Ethernet 2" admin=disable

echo Done.