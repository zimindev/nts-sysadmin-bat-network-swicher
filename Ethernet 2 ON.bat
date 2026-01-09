@echo off
echo Switching network adapters...

netsh interface set interface "Ethernet" admin=disable
netsh interface set interface "Ethernet 2" admin=enable

echo Done.
