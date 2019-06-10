$TTL	604800
@				IN	SOA	learnedovo.com. systems.learnedovo.com. (
				2019041200		; Serial
				604800			; Refresh
				86400			; Retry
				2419200			; Expire
				604800		 	; Negative Cache TTL
				)

                                        IN      NS      dns.1.learnedovo.com.

dns.1.learnedovo.com.              IN      A       192.168.65.10

; ############################################################
; ############# LEARNEDOVO.COM DNS RECORDS ###################
; ############################################################


; Learndovo.com - CAA Records
@                       3600    IN      CAA     0       issuewild "digicert.com" 
@                       3600    IN      CAA     0       iodef "mailto:noc@edovo.com" 

; Learndovo.com - A Records
@				IN	A	192.168.84.10
@				IN	A	192.168.85.10
@				IN	A	192.168.86.10
www.learnedovo.com.		IN	A	192.168.84.10
www.learnedovo.com.             IN      A       192.168.85.10
www.learnedovo.com.             IN      A       192.168.86.10
admin.learnedovo.com.		IN	A	192.168.84.10
admin.learnedovo.com.           IN      A       192.168.85.10
admin.learnedovo.com.           IN      A       192.168.86.10
api.learnedovo.com.		IN	A	192.168.84.10
api.learnedovo.com.             IN      A       192.168.85.10
api.learnedovo.com.             IN      A       192.168.86.10
community.learnedovo.com.	IN	A	192.168.84.10
community.learnedovo.com.       IN      A       192.168.85.10
community.learnedovo.com.       IN      A       192.168.86.10
connect.learnedovo.com.         IN      A       192.168.84.10
connect.learnedovo.com.         IN      A       192.168.85.10
connect.learnedovo.com.         IN      A       192.168.86.10
content.learnedovo.com.		IN	A	192.168.84.10
content.learnedovo.com.         IN      A       192.168.85.10
content.learnedovo.com.         IN      A       192.168.86.10
courses.learnedovo.com.		IN	A	192.168.84.10
courses.learnedovo.com.         IN      A       192.168.85.10
courses.learnedovo.com.         IN      A       192.168.86.10
insight.learnedovo.com.		IN	A	192.168.84.10
insight.learnedovo.com.         IN      A       192.168.85.10
insight.learnedovo.com.         IN      A       192.168.86.10
manage.learnedovo.com.		IN	A	192.168.84.10
manage.learnedovo.com.          IN      A       192.168.85.10
manage.learnedovo.com.          IN      A       192.168.86.10
messenger.learnedovo.com.       IN      A       192.168.84.10
messenger.learnedovo.com.       IN      A       192.168.85.10
messenger.learnedovo.com.       IN      A       192.168.86.10
tcontent.learnedovo.com.	IN	A	192.168.84.10
tcontent.learnedovo.com.        IN      A       192.168.85.10
tcontent.learnedovo.com.        IN      A       192.168.86.10
go.learnedovo.com.		IN	A	192.168.84.10
go.learnedovo.com.              IN      A       192.168.85.10
go.learnedovo.com.              IN      A       192.168.86.10
corrections.learnedovo.com.	IN	A	192.168.84.10
corrections.learnedovo.com.     IN      A       192.168.85.10
corrections.learnedovo.com.     IN      A       192.168.86.10
corrections2.learnedovo.com.	IN	A	192.168.84.10
corrections2.learnedovo.com.    IN      A       192.168.85.10
corrections2.learnedovo.com.    IN      A       192.168.86.10
; END
