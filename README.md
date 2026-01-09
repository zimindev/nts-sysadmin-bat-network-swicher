# 🔌 Ethernet Switch Script (Windows)

A simple **Windows `.bat` script** that:
- ❌ **Disables** the network adapter `Ethernet`
- ✅ **Enables** the network adapter `Ethernet 2`

Useful when you need to quickly switch between network interfaces.

---

## 📄 File: `switch_ethernet.bat`

```bat
@echo off
echo 🔄 Switching network adapters...

netsh interface set interface "Ethernet" admin=disable
netsh interface set interface "Ethernet 2" admin=enable

echo ✅ Done.
````

---

## ⚠️ Important

* This script **must be run as Administrator**
* Adapter names must **match exactly** the names in your system
  (you can check them using the command below)

```bat
netsh interface show interface
```

---

## 🚀 How to Use

1. Open **Notepad**
2. Paste the script
3. Save it as `switch_ethernet.bat`
4. Right-click → **Run as administrator**

---

## 🔇 Silent Mode (no console output)

```bat
@echo off
netsh interface set interface "Ethernet" admin=disable >nul 2>&1
netsh interface set interface "Ethernet 2" admin=enable >nul 2>&1
```
## ✅ Result

1. Enable **Ethernet 2**

```bat
@echo off
echo Switching network adapters...

netsh interface set interface "Ethernet" admin=disable
netsh interface set interface "Ethernet 2" admin=enable

echo Done.
```

2. Enable **Ethernet 1**

```bat
@echo off
echo Switching network adapters...

netsh interface set interface "Ethernet" admin=enable
netsh interface set interface "Ethernet 2" admin=disable

echo Done.
```
