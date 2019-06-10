$TTL	604800
@			IN	SOA	connectivitycheck.gstatic.com. root.connectivitycheck.gstatic.com. (
			2018012200	; Serial
			604800		; Refresh
			86400		; Retry
			2419200		; Expire
			604800 		; Negative Cache TTL
					)

                        	IN      NS      ns.1.connectivitycheck.gstatic.com.
				IN      NS      ns.2.connectivitycheck.gstatic.com.

ns.1.connectivitycheck.gstatic.com.		IN      A       192.168.65.10
ns.2.connectivitycheck.gstatic.com.        	IN      A       192.168.65.11

; A Records
@						IN	A	172.217.8.163
