This is useful for weird setups where one device acts as a router for another device.\
Why would you do that? Why not? (also WiFi adapters are expensive)

### Example:

Computer with no WiFi capability is USB tethered to a phone's WiFi connection.\
If I intend to start a server on the computer, it will not be accessible on the local network.\
We can, however, connect to the phone, and forward that traffic to the computer.

This **requires root access**, and some knowledge of adb.

### Template

Replace `<exposed_port>` with the port you want to open.\
Replace `<addr:port>` with the device you want to access.\
Pay attention to input interface, might not be the same.

```
iptables -t nat -A PREROUTING -p tcp --dport <exposed_port> -i wlan0 -j DNAT --to-destination <addr:port>
iptables -t nat -A POSTROUTING -j MASQUERADE
```
