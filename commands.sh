iptables -t nat -A PREROUTING -p tcp --dport <exposed_port> -i wlan0 -j DNAT --to-destination <addr:port>
iptables -t nat -A POSTROUTING -j MASQUERADE
