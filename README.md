# IPCheck

A lightweight VPS / Server IP & Network diagnostic script.

---

## 📌 Overview

**IPCheck** is a simple, lightweight Bash script designed for quick server diagnostics.

It provides:

- Public IPv4 detection  
- Public IPv6 detection  
- ASN & country lookup  
- Basic system information  
- Simple network connectivity test  

No heavy dependencies.  
No auto-install behavior.  
Just clean output.

---

## 🚀 Quick Start

### Run directly

```bash
bash <(curl -Ls https://raw.githubusercontent.com/EnockLee/IPCheck/main/ipcheck.sh)
```

### Or download first

```bash
curl -LO https://raw.githubusercontent.com/EnockLee/IPCheck/main/ipcheck.sh
chmod +x ipcheck.sh
./ipcheck.sh
```

---

## 🧰 What It Checks

### 🌍 Public IP

- IPv4 address  
- IPv6 address  

### 🛰 IP Information

- Country  
- ASN / Organization  

### 🖥 System Information

- OS  
- Kernel version  
- Architecture  

### 📡 Network Connectivity

Ping test to:

- 1.1.1.1  
- 8.8.8.8  

---

## 📦 Requirements

- Bash  
- curl  
- ping  

Works on most Linux distributions.

---

## 🛡 Design Principles

- Minimal  
- Transparent  
- Safe to inspect before running  
- No hidden installation steps  
- No remote execution chains  

---

## 📈 Roadmap

Planned future features:

- Command-line parameters  
- JSON output mode  
- Risk / proxy detection  
- CDN detection  
- Media unlock detection  
- Modular architecture  
- API support  

---

## 📜 License

MIT License

---

## ⭐ Contributing

Pull requests are welcome.
