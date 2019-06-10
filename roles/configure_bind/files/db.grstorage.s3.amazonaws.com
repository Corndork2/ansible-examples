$TTL	604800
@			IN	SOA	grstorage.s3.amazonaws.com. root.grstorage.s3.amazonaws.com. (
			2018012200	; Serial
			604800		; Refresh
			86400		; Retry
			2419200		; Expire
			604800 		; Negative Cache TTL
					)

                        	IN      NS      ns.1.grstorage.s3.amazonaws.com.
				IN      NS      ns.2.grstorage.s3.amazonaws.com.

ns.1.grstorage.s3.amazonaws.com.	IN      A       192.168.65.10
ns.2.grstorage.s3.amazonaws.com.        IN      A       192.168.65.11

; A Records
@				IN	A	52.219.73.14
