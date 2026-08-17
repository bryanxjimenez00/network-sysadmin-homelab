🏢 Small Business IT Infrastructure Lab

A simulated enterprise environment focusing on network segmentation, IPv4 subnetting, switch configuration, and basic system administration. 

## 📌 Project Overview
This project demonstrates the design and configuration of a standardized branch office network. It includes VLAN segmentation to separate data traffic from voice traffic, foundational switch security, and administrative scripting.

## 🧰 Technology Stack
* **Network Design:** Cisco IOS, Packet Tracer Simulation
* **Protocols & Concepts:** IPv4 Subnetting, VLANs (802.1Q), DHCP, Port Security
* **Systems Administration:** Windows Server, Active Directory, PowerShell

## 🗺️ Network Topology & IPv4 Subnetting Schema
The network utilizes a `192.168.10.0/24` primary block, segmented as follows:

| VLAN | Name | Subnet | Usable IPs | Gateway | Purpose |
|---|---|---|---|---|---|
| 10 | Data | 192.168.10.0/26 | 62 | .1 | User workstations |
| 20 | Voice | 192.168.10.64/26 | 62 | .65 | VoIP Phones |
| 99 | Mgmt | 192.168.10.192/28 | 14 | .193 | Switch/Router Interfaces |
