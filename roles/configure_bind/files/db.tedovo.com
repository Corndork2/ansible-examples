$TTL	604800
@			IN	SOA	tedovo.com. root.tedovo.com. (
			2018012200	; Serial
			604800		; Refresh
			86400		; Retry
			2419200		; Expire
			604800 		; Negative Cache TTL
					)

                                        IN      NS      dns.1.tedovo.com.
                                        IN      NS      dns.2.tedovo.com.

dns.1.tedovo.com.             IN      A       192.168.65.10
dns.2.tedovo.com.             IN      A       192.168.65.11

; ############################################################
; ############# TEDOVO.COM DNS RECORDS #######################
; ############################################################

;Tedovo.com - CAA Records
@                       3600    IN      CAA     0       issuewild "digicert.com" 
@                       3600    IN      CAA     0       iodef "mailto:noc@edovo.com" 

; Tedovo.com - A Records
@				IN	A	192.168.45.100
admin.tedovo.com.		IN	A       192.168.45.100
api.tedovo.com.			IN	A       192.168.45.100
www.tedovo.com.			IN	A       192.168.45.100
connect.tedovo.com.		IN	A       192.168.45.100
content.tedovo.com.		IN	A       192.168.45.100
corrections.tedovo.com.		IN	A       192.168.45.100
corrections2.tedovo.com.	IN	A       192.168.45.100
courses.tedovo.com.		IN	A       192.168.45.100
insight.tedovo.com.		IN	A       192.168.45.100
jes.tedovo.com.			IN	A       192.168.45.100
messenger.tedovo.com.		IN	A       192.168.45.100
ci.tedovo.com.                  IN      A       192.168.45.80
repo.tedovo.com.		IN	A       192.168.45.80
