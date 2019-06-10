$TTL	604800
@			IN	SOA	edovo.com. systems.edovo.com. (
			2019060300		; Serial
			604800			; Refresh
			86400			; Retry
			2419200			; Expire
			604800 			; Negative Cache TTL
			)

                                        IN      NS      dns.1.edovo.com.
					IN	NS	dns.2.edovo.com.

dns.1.edovo.com.              	IN      A       192.168.65.10
dns.2.edovo.com.		IN	A	192.168.60.10

; ############################################################
; ############# EDOVO.COM DNS RECORDS ########################
; ############################################################

; Edovo.com - A Records
@					IN	A	13.58.125.93	; Edovo Homepage
admin.edovo.com.                    	IN      A       192.168.24.15   ; Edovo AWS Admin
admin.edovo.com.                    	IN      A       192.168.25.15   ; Edovo AWS Admin
admin.edovo.com.                    	IN      A       192.168.26.15   ; Edovo AWS Admin
api.edovo.com.                      	IN      A       192.168.24.10   ; Edovo AWS API
api.edovo.com.                      	IN      A       192.168.25.10   ; Edovo AWS API
api.edovo.com.                      	IN      A       192.168.26.10   ; Edovo AWS API
bastion.edovo.com.			IN	A	192.168.55.50	; Edovo Bastion
community.edovo.com.			IN	A	192.168.24.10	; Edovo Blog
community.edovo.com.                    IN      A       192.168.25.10   ; Edovo Blog
community.edovo.com.			IN	A	192.168.26.10	; Edovo Blog
connect.edovo.com.                  	IN      A       192.168.24.10   ; Edovo AWS Connect
connect.edovo.com.                  	IN      A       192.168.25.10   ; Edovo AWS Connect
connect.edovo.com.                  	IN      A       192.168.26.10   ; Edovo AWS Connect
config.edovo.com.			IN	A	192.168.65.30	; Edovo Configuration Server
content.edovo.com.                  	IN      A       192.168.24.10   ; Edovo AWS Content
content.edovo.com.                  	IN      A       192.168.25.10   ; Edovo AWS Content
content.edovo.com.                  	IN      A       192.168.26.10   ; Edovo AWS Content
tcontent.edovo.com.			IN	A	192.168.24.10	; Transcoded Content Server
tcontent.edovo.com.                     IN      A       192.168.25.10   ; Transcoded Content Server
tcontent.edovo.com.                     IN      A       192.168.26.10   ; Transcoded Content Server
corrections.edovo.com.                  IN      A       192.168.24.15   ; Edovo AWS Corrections App
corrections.edovo.com.                  IN      A       192.168.25.15   ; Edovo AWS Corrections App
corrections.edovo.com.                  IN      A       192.168.26.15   ; Edovo AWS Corrections App
corrections2.edovo.com.             	IN      A       192.168.24.15   ; Edovo AWS Corrections2 App
corrections2.edovo.com.             	IN      A       192.168.25.15   ; Edovo AWS Corrections2 App
corrections2.edovo.com.             	IN      A       192.168.26.15   ; Edovo AWS Corrections2 App
courses.edovo.com.                  	IN      A       192.168.24.10   ; Edovo AWS Courses
courses.edovo.com.                  	IN      A       192.168.25.10   ; Edovo AWS Courses
courses.edovo.com.                  	IN      A       192.168.26.10   ; Edovo AWS Courses
deb.edovo.com.                          IN      A       192.168.24.10   ; Edovo Debian APT Repo
deb.edovo.com.				IN	A	192.168.25.10	; Edovo Debian APT Repo
deb.edovo.com.                          IN      A       192.168.26.10   ; Edovo Debian APT Repo
go.edovo.com.                       	IN      A       192.168.24.10   ; Edovo GO
go.edovo.com.                       	IN      A       192.168.25.10   ; Edovo GO
go.edovo.com.                       	IN      A       192.168.26.10   ; Edovo GO
headsup.edovo.com.                      IN      A       192.168.24.125  ; Zendesk Ticketing Dashboard
ipam.edovo.com.				IN	A	192.168.65.210	; IP Address Management
insight.edovo.com.                  	IN      A       192.168.24.10   ; Edovo Insight AWS
insight.edovo.com.                  	IN      A       192.168.25.10   ; Edovo Insight AWS
insight.edovo.com.                  	IN      A       192.168.26.10   ; Edovo Insight AWS
intermapper.edovo.com.			IN	A	192.168.65.200	; Intermapper
jenkins.edovo.com.			IN	A	192.168.45.80	; Development Jenkins
jenkins-win.edovo.com.			IN	A	192.168.45.60	; Jenkins Windows Server 2016
librenms.edovo.com.			IN	A	192.168.65.40	; LibreNMS
messenger.edovo.com.			IN	A	192.168.20.10   ; Edovo Messenger App
mx.edovo.com.				IN	A	192.168.128.5	; Office Meraki MX80
nessus.edovo.com.			IN	A	192.168.65.140	; Nessus
noc-calendar.edovo.com.			IN	A	192.168.24.130	; NOC Calendar
redmine.edovo.com.			IN	A	18.220.208.116	; Edovo Redmine
proxy.edovo.com.			IN	A	192.168.24.10	; Squid Proxy
proxy.edovo.com.                        IN      A       192.168.25.10   ; Squid Proxy
proxy.edovo.com.                        IN      A       192.168.26.10   ; Squid Proxy
unifi.edovo.com.			IN	A	192.168.15.50	; EGV Unifi
vsz.edovo.com.                          IN      A       192.168.15.10   ; EGV VSZ1
vsz.edovo.com.                          IN      A       192.168.15.20   ; EGV VSZ2
vsz1.edovo.com.				IN	A	192.168.15.10	; EGV VSZ1
vsz2.edovo.com.				IN	A	192.168.15.20	; EGV VSZ2
consoleaw.edovo.com.                    IN      A       192.168.20.230	; EGV AirWatch Console
dsaw.edovo.com.                         IN      A       192.168.20.235	; EGV AirWatch Device Services
dbaw.edovo.com.                         IN      A       192.168.20.240	; EGV AirWatch Database Services

; Edovo.com - CNAME Records
www.edovo.com.				IN	CNAME	4239152.group2.sites.hubspot.net.
hs2._domainkey.edovo.com.		IN	CNAME	edovo-com.hs01b.dkim.hubspotemail.net.
hs1._domainkey.edovo.com.		IN	CNAME	edovo-com.hs01a.dkim.hubspotemail.net.
tail.edovo.com.                         IN      CNAME   edovo.com.
support.edovo.com.                      IN      CNAME   support.desk.com.
helpdesk.edovo.com.                     IN      CNAME   edovo.zendesk.com.
admin.test.edovo.com.                   IN      CNAME   test.edovo.com.
corcom.test.edovo.com.                  IN      CNAME   test.edovo.com.
corrections.test.edovo.com.             IN      CNAME   test.edovo.com.
corrections2.test.edovo.com.            IN      CNAME   test.edovo.com.
courses.test.edovo.com.                 IN      CNAME   test.edovo.com.
edovo.test.edovo.com.                   IN      CNAME   test.edovo.com.
insight.test.edovo.com.                 IN      CNAME   test.edovo.com.
status.edovo.com.                       IN      CNAME   stats.pingdom.com.
orchestrator.devops.edovo.com.		IN	CNAME	deb.edovo.com.
clicks.edovo.com. 			IN	CNAME	clicks.epsrv2.net
unsub.edovo.com.                       	IN      CNAME   email.epsrv2.net
open.edovo.com.	                        IN      CNAME   open.epsrv2.net
viewer.edovo.com.                       IN      CNAME   viewer.epsrv2.net

; Edovo.com - TXT Records
@                                       IN      TXT     "v=spf1 a mx include:spf.braintreegateway.com include:_spf.google.com include:mail.zendesk.com include:spf.epmailer.net ~all"
noc					IN	TXT	"v=spf1 include:mailgun.org ~all"
smtpapi._domainkey.edovo.com.		IN	TXT	"k=rsa; t=s; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDPtW5iwpXVPiH5FzJ7Nrl8USzuY9zqqzjE0D1r04xDN6qwziDnmgcFNNfMewVKN2D1O+2J9N14hRprzByFwfQW76yojh54Xu3uSbQ3JP0A7k8o8GutRF8zbFUA8n0ZH2y0cIEjMliXY4W4LwPA7m4q0ObmvSjhd63O9d8z1XkUBwIDAQAB"


; ############################################################
; ############# ORD DATACENTER A RECORDS #####################
; ############################################################

rtr-1-ord.edovo.com.                    IN      A       192.168.100.1   ; Arista 7020SR Router 
rtr-2-ord.edovo.com.                    IN      A       192.168.100.2   ; Arista 7020SR Router 
fw-ord.edovo.com.                   	IN      A       192.168.100.3   ; 100D Firewall Cluster
peer-1-ord.edovo.com.			IN	A	192.168.100.4	; 4461 Peering Router 
peer-2-ord.edovo.com.                   IN      A       192.168.100.5   ; 4461 Peering Router 
mx-ord.edovo.com.			IN	A	192.168.128.5	; Meraki MX
net-1-ord.edovo.com.			IN	A	192.168.100.58	; Metal Network Services Server
cimc-net-1-ord.edovo.com.               IN      A       192.168.100.66  ; Metal Network Services Server CIMC
net-2-ord.edovo.com.                    IN      A       192.168.100.62  ; Metal Network Services Server
cimc-net-2-ord.edovo.com.               IN      A       192.168.100.82  ; Metal Network Services Server CIMC

; ############################################################
; ############# SJC DATACENTER A RECORDS #####################
; ############################################################

rtr-1-sjc.edovo.com.                    IN      A       192.168.200.1   ; Arista 7020SR Router 
rtr-2-sjc.edovo.com.                    IN      A       192.168.200.2   ; Arista 7020SR Router 
fw-sjc.edovo.com.                       IN      A       192.168.200.3   ; 100D Firewall Cluster
peer-1-sjc.edovo.com.                   IN      A       192.168.200.4   ; 4461 Peering Router 
peer-2-sjc.edovo.com.                   IN      A       192.168.200.5   ; 7010T Peering Router 

; ############################################################
; ############# AWS US-EAST-2 A RECORDS ######################
; ############################################################

; AWS US East 2 - Production
peer-1-production.us-east-2.edovo.com.          IN      A       192.168.99.10   ; Production DX BGP Peer 1
peer-2-production.us-east-2.edovo.com.          IN      A       192.168.99.14   ; Production DX BGP Peer 2
dc-ext-1-production.us-east-2.edovo.com.	IN	A	192.168.24.7	; Production External Domain Controller
dc-ext-2-production.us-east-2.edovo.com.	IN	A	192.168.25.7	; Production External Domain Controller
dc-ext-3-production.us-east-2.edovo.com.        IN      A       192.168.26.7    ; Production External Domain Controller
dc-ext-util-production.us-east-2.edovo.com.	IN      A       192.168.24.8    ; Production External Utils Server
deb-1-production.us-east-2.edovo.com.           IN      A       192.168.24.70   ; Debian APT Repo
deb-2-production.us-east-2.edovo.com.           IN      A       192.168.25.70   ; Debian APT Repo
deb-3-production.us-east-2.edovo.com.           IN      A       192.168.26.70   ; Debian APT Repo
extlb-1-production.us-east-2.edovo.com.         IN      A       192.168.24.10   ; Production External Load Balancer
extlb-2-production.us-east-2.edovo.com.         IN      A       192.168.25.10   ; Production External Load Balancer
extlb-3-production.us-east-2.edovo.com.         IN      A       192.168.26.10   ; Production External Load Balancer
headsup-1-production.us-east-2.edovo.com.	IN      A       192.168.24.125  ; Production Headsup Zendesk Dashboard
intlb-1-production.us-east-2.edovo.com.         IN      A       192.168.24.15   ; Production Internal Load Balancer
intlb-2-production.us-east-2.edovo.com.         IN      A       192.168.24.15   ; Production Internal Load Balancer
intlb-3-production.us-east-2.edovo.com.         IN      A       192.168.24.15   ; Production Internal Load Balancer
periscope-production.us-east-2.edovo.com.       IN      A       192.168.24.45   ; Production Periscope Inbound Node
proxy-1-production.us-east-2.edovo.com.         IN      A       192.168.24.120  ; Proxy 1
proxy-2-production.us-east-2.edovo.com.         IN      A       192.168.25.120  ; Proxy 2
proxy-3-production.us-east-2.edovo.com.         IN      A       192.168.26.120  ; Proxy 3
tcontent-1-production.us-east-2.edovo.com.      IN      A       192.168.24.30   ; Production Transcoded Content Server
tcontent-2-production.us-east-2.edovo.com.      IN      A       192.168.25.30   ; Production Transcoded Content Server
tcontent-3-production.us-east-2.edovo.com.      IN      A       192.168.26.30   ; Production Transcoded Content Server
webapp-1-production.us-east-2.edovo.com.        IN      A       192.168.24.20   ; Production Web App 1
webapp-2-production.us-east-2.edovo.com.        IN      A       192.168.25.20   ; Production Web App 2
webapp-3-production.us-east-2.edovo.com.        IN      A       192.168.26.20   ; Production Web App 3
webredirect-production.us-east-2.edovo.com.     IN      A	13.58.125.93	; Web Redirect

; AWS US East 2 - Test 
peer-1-test.us-east-2.edovo.com.        	IN      A       192.168.99.18   				; Test DX BGP Peer 1
peer-2-test.us-east-2.edovo.com.        	IN      A       192.168.99.22   				; Test DX BGP Peer 2
api-tedovo-test.us-east-2.edovo.com.    	IN      A       192.168.48.10                                  	; Test Env. API Tedovo.com
api-tedovo-test.us-east-2.edovo.com.    	IN      AAAA    2600:1f16:3ac:9105:a336:62b4:b619:966c          ; Test Env. API Tedovo.com
tedovo-test.us-east-2.edovo.com.        	IN      A       192.168.45.100  				; Test Env. Tedovo.com
tedovo-test.us-east-2.edovo.com.        	IN      AAAA	2600:1f16:3ac:9102:8575:20ae:4ee9:8f09		; Test Env. Tedovo.com
jenkins-test.us-east-2.edovo.com.       	IN      A       192.168.45.80   				; Test Env. Jenkins 1 (Chicago)
jenkins-test.us-east-2.edovo.com.       	IN      AAAA	2600:1f16:3ac:9102:bfc0:11fc:971d:54e8		; Test Env. Jenkins 1 (Chicago)
jenkins-win-test.us-east-2.edovo.com.   	IN      A	192.168.45.60					; Test Env. Jenkins 2 (Windows Server 2016)
jenkins-win-test.us-east-2.edovo.com.   	IN      AAAA	2600:1f16:3ac:9102:bc65:4004:4553:9d5d		; Test Env. Jenkins 2 (Windows Server 2016)


; AWS US East 2 - DMZ
peer-1-dmz.us-east-2.edovo.com.         	IN      A       192.168.99.2    				; DMZ DX BGP Peer 1
peer-2-dmz.us-east-2.edovo.com.         	IN      A       192.168.99.6    				; DMZ DX BGP Peer 2
bastion-dmz.us-east-2.edovo.com.        	IN      A       192.168.55.50   				; DMZ Bastion
bastion-dmz.us-east-2.edovo.com.        	IN      AAAA    2600:1f16:249:6502:21fd:38df:9c54:2696		; DMZ Bastion

; AWS US East 2 - Operations
peer-1-ops.us-east-2.edovo.com.         	IN      A       192.168.99.26   				; Ops DX BGP Peer 1
peer-2-ops.us-east-2.edovo.com.         	IN      A       192.168.99.30   				; Ops DX BGP Peer 2
backup-ops.us-east-2.edovo.com.            	IN      A       192.168.65.45   				; Backup Server
backup-ops.us-east-2.edovo.com.            	IN      AAAA	2600:1f16:535:2b02:922f:866:fd87:e591		; Backup Server 
config-ops.us-east-2.edovo.com.         	IN      A       192.168.65.30   				; Configuration Box
config-ops.us-east-2.edovo.com.         	IN      AAAA	2600:1f16:535:2b02:865a:6d0d:23a1:9bb3		; Configuration Box
dns-ops.us-east-2.edovo.com.          		IN      A       192.168.65.10   				; DNS
dns-ops.us-east-2.edovo.com.          		IN      AAAA    2600:1f16:535:2b02:9c91:4be4:4a76:8ffe   	; DNS
dhcp-1-ops.us-east-2.edovo.com.         	IN      A       192.168.65.15   				; DHCP Server 1
dhcp-1-ops.us-east-2.edovo.com.         	IN      AAAA	2600:1f16:535:2b02:4d56:6cdd:9822:6392
dhcp-2-ops.us-east-2.edovo.com.         	IN      A       192.168.65.16   				; DHCP Server 2
dhcp-2-ops.us-east-2.edovo.com.         	IN      AAAA	2600:1f16:535:2b02:7427:1885:fc4b:264c
intermapper-ops.us-east-2.edovo.com.    	IN      A       192.168.65.200  				; Intermapper
intermapper-ops.us-east-2.edovo.com.    	IN      AAAA	2600:1f16:535:2b02:c195:a640:ff43:5ebd
ipam-ops.us-east-2.edovo.com.           	IN      A       192.168.65.210  				; IP Address Management
ipam-ops.us-east-2.edovo.com.			IN	AAAA	2600:1f16:535:2b02:b9de:10ae:b15b:c06f
librenms-ops.us-east-2.edovo.com.       	IN      A       192.168.65.40   				; Librenms
librenms-ops.us-east-2.edovo.com.       	IN      AAAA	2600:1f16:535:2b02:d986:f15c:a6d3:485c
nessus-ops.us-east-2.edovo.com.       		IN      A       192.168.65.140					; Nessus
nessus-ops.us-east-2.edovo.com.         	IN      AAAA	2600:1f16:535:2b02:d789:ef5d:1d2e:b65a
radius-ops.us-east-2.edovo.com.       		IN      A       192.168.65.80   				; RADIUS 1
radius-ops.us-east-2.edovo.com.       		IN      AAAA	2600:1f16:535:2b04:e073:5bb4:76aa:bcd1
syslog-ops.us-east-2.edovo.com.       		IN      A       192.168.65.50   				; SYSLOG
syslog-ops.us-east-2.edovo.com.       		IN      AAAA    2600:1f16:535:2b02:dcde:3a09:46cd:bab0   	; SYSLOG

; AWS US East 2 - Staging
api-staging.us-east-2.edovo.com.                        IN      A       192.168.88.10                           ; Staging Load Balancer, used for api.tedovo.com/twillio endpoint
peer-1-staging.us-east-2.edovo.com.                     IN      A       192.168.99.34                           ; Staging DX BGP Peer 1
peer-2-staging.us-east-2.edovo.com.                     IN      A       192.168.99.38                           ; Staging DX BGP Peer 2
lb-1-staging.us-east-2.edovo.com.                       IN      A       192.168.84.10                           ; Staging Load Balancer / Web Server 1
lb-1-staging.us-east-2.edovo.com.                       IN      AAAA    2600:1f16:9a3:d104:74b:807d:de72:db04   ; Staging Load Balancer / Web Server 1
lb-2-staging.us-east-2.edovo.com.                       IN      A       192.168.85.10                           ; Staging Load Balancer / Web Server 2
lb-2-staging.us-east-2.edovo.com.                       IN      AAAA    2600:1f16:9a3:d105:d3fe:f379:8bcb:334e  ; Staging Load Balancer / Web Server 2
lb-3-staging.us-east-2.edovo.com.                       IN      A       192.168.86.10                           ; Staging Load Balancer / Web Server 3
lb-3-staging.us-east-2.edovo.com.                       IN      AAAA    2600:1f16:9a3:d106:97cf:e657:9b0f:5985  ; Stasging Load Balancer / Web Server 3
webapp-1-staging.us-east-2.edovo.com.                   IN      A       192.168.84.20                           ; Staging Application Server 1
webapp-1-staging.us-east-2.edovo.com.                   IN      AAAA    2600:1f16:9a3:d104:cc30:2003:7fd1:6aa2  ; Staging Application Server 1
webapp-2-staging.us-east-2.edovo.com.                   IN      A       192.168.85.20                           ; Staging Application Server 2
webapp-2-staging.us-east-2.edovo.com.                   IN      AAAA    2600:1f16:9a3:d105:9672:61e0:d2c5:dac9  ; Staging Application Server 2
webapp-3-staging.us-east-2.edovo.com.                   IN      A       192.168.86.20                           ; Staging Application Server 3
webapp-3-staging.us-east-2.edovo.com.                   IN      AAAA    2600:1f16:9a3:d106:64ff:218a:f20b:23c9  ; Staging Application Server 3

; ############################################################
; ############# LA DATACENTER  A RECORDS #####################
; ############################################################

wan.rtr.la1.edovo.com.		                    IN      A       172.16.20.4             ; WAN 1
rtr.la1.edovo.com.             		            IN      A       192.168.254.7           ; Router
gi1.rtr.la1.edovo.com                		    IN      A       172.31.60.5             ; Router gi0/1
gi2.rtr.la1.edovo.com.              		    IN      A       172.31.60.1             ; Router gi0/2
fw.1.la1.edovo.com.             		    IN      A       192.168.255.13          ; Datacenter Firewall Loopback
legacyinmate.edovo.com.                             IN      A       172.77.10.15    	    ; Legacy 
2nddcwin2008r2.legacyinmate.edovo.com.              IN      A       172.20.30.200
acronis-backup.legacyinmate.edovo.com.              IN      A       172.20.30.251
archcvrecsftp.legacyinmate.edovo.com.               IN      A       172.20.30.254
biometricwin10.legacyinmate.edovo.com.              IN      A       172.20.30.230
chatserver2.legacyinmate.edovo.com.                 IN      A       172.77.10.9
clusdb.legacyinmate.edovo.com.                      IN      A       172.77.10.8
clustdb.legacyinmate.edovo.com.                     IN      A       172.77.10.8
cluster1.legacyinmate.edovo.com.                    IN      A       172.77.10.16
cluster2.legacyinmate.edovo.com.                    IN      A       172.77.10.17
dellstorage.legacyinmate.edovo.com.                 IN      A       192.168.1.202
hyperv-4.legacyinmate.edovo.com.                    IN      A       172.20.30.249
iconsqlsvr01.legacyinmate.edovo.com.                IN      A       172.77.10.22
ldd-ltran2.legacyinmate.edovo.com.                  IN      A       192.168.1.131
lic-chat.legacyinmate.edovo.com.                    IN      A       172.77.10.12
lic-chat-1.legacyinmate.edovo.com.                  IN      A       172.77.10.11
lic-data.legacyinmate.edovo.com.                    IN      A       172.77.10.15
lic-icon-ws-acp.legacyinmate.edovo.com.             IN      A       172.20.30.28
lic-icondb.legacyinmate.edovo.com.                  IN      A       172.77.10.10
lic-med-str-2.legacyinmate.edovo.com.               IN      A       172.77.10.200
lic-media-proc.legacyinmate.edovo.com.              IN      A       172.77.10.14
lic-media-streaming.legacyinmate.edovo.com.         IN      A       172.77.10.13
lic-opcenterdb.legacyinmate.edovo.com.              IN      A       172.20.30.24
lic-storage.legacyinmate.edovo.com.                 IN      A       172.77.10.20
lic-storage2.legacyinmate.edovo.com.                IN      A       172.77.10.21
lic-telcotoolpack.legacyinmate.edovo.com.           IN      A       172.77.20.10
msdtc.legacyinmate.edovo.com.                       IN      A       172.77.10.7
nas184276.legacyinmate.edovo.com.                   IN      A       192.168.1.204
nvo.legacyinmate.edovo.com.                         IN      A       192.168.1.100
radiusserver.legacyinmate.edovo.com.                IN      A       172.20.30.9
sqlclusterdb.legacyinmate.edovo.com.                IN      A       172.77.10.19
wds-server.legacyinmate.edovo.com.                  IN      A       192.168.1.103
win2008r2v-lab.legacyinmate.edovo.com.              IN      A       192.168.1.104
win2008vcenter.legacyinmate.edovo.com.              IN      A       192.168.1.123
storinator.edovo.com.				    IN	    A	    172.77.10.5		    ; used for acp file syncing

; ############################################################
; ############# TUNNEL ENDPOINT  A RECORDS ###################
; ############################################################

; Tunnel Router 1 - A Records
tun.100.tun.1.ch1.edovo.com.            IN      A       172.16.0.1              ; CH1 Tunnel Router 1 Interface Tunnel100
tun.101.tun.1.ch1.edovo.com.            IN      A       172.16.0.5              ; CH1 Tunnel Router 1 Interface Tunnel101
tun.102.tun.1.ch1.edovo.com.            IN      A       172.16.0.9              ; CH1 Tunnel Router 1 Interface Tunnel102
tun.103.tun.1.ch1.edovo.com.            IN      A       172.16.0.13             ; CH1 Tunnel Router 1 Interface Tunnel103
tun.104.tun.1.ch1.edovo.com.            IN      A       172.16.0.17             ; CH1 Tunnel Router 1 Interface Tunnel104
tun.105.tun.1.ch1.edovo.com.            IN      A       172.16.0.21             ; CH1 Tunnel Router 1 Interface Tunnel105
tun.106.tun.1.ch1.edovo.com.            IN      A       172.16.0.25             ; CH1 Tunnel Router 1 Interface Tunnel106
tun.107.tun.1.ch1.edovo.com.            IN      A       172.16.0.29             ; CH1 Tunnel Router 1 Interface Tunnel107
tun.108.tun.1.ch1.edovo.com.            IN      A       172.16.0.33             ; CH1 Tunnel Router 1 Interface Tunnel108
tun.109.tun.1.ch1.edovo.com.            IN      A       172.16.0.37             ; CH1 Tunnel Router 1 Interface Tunnel109
tun.110.tun.1.ch1.edovo.com.            IN      A       172.16.0.41             ; CH1 Tunnel Router 1 Interface Tunnel110
tun.111.tun.1.ch1.edovo.com.            IN      A       172.16.0.45             ; CH1 Tunnel Router 1 Interface Tunnel111
tun.112.tun.1.ch1.edovo.com.            IN      A       172.16.0.49             ; CH1 Tunnel Router 1 Interface Tunnel112
tun.113.tun.1.ch1.edovo.com.            IN      A       172.16.0.53             ; CH1 Tunnel Router 1 Interface Tunnel113
tun.114.tun.1.ch1.edovo.com.            IN      A       172.16.0.57             ; CH1 Tunnel Router 1 Interface Tunnel114
tun.115.tun.1.ch1.edovo.com.            IN      A       172.16.0.61             ; CH1 Tunnel Router 1 Interface Tunnel115
tun.116.tun.1.ch1.edovo.com.            IN      A       172.16.0.65             ; CH1 Tunnel Router 1 Interface Tunnel116
tun.117.tun.1.ch1.edovo.com.            IN      A       172.16.0.69             ; CH1 Tunnel Router 1 Interface Tunnel117
tun.118.tun.1.ch1.edovo.com.            IN      A       172.16.0.73             ; CH1 Tunnel Router 1 Interface Tunnel118
tun.119.tun.1.ch1.edovo.com.            IN      A       172.16.0.77             ; CH1 Tunnel Router 1 Interface Tunnel119
tun.120.tun.1.ch1.edovo.com.            IN      A       172.16.0.81             ; CH1 Tunnel Router 1 Interface Tunnel120
tun.121.tun.1.ch1.edovo.com.            IN      A       172.16.0.85             ; CH1 Tunnel Router 1 Interface Tunnel121
tun.122.tun.1.ch1.edovo.com.            IN      A       172.16.0.89             ; CH1 Tunnel Router 1 Interface Tunnel122
tun.123.tun.1.ch1.edovo.com.            IN      A       172.16.0.93             ; CH1 Tunnel Router 1 Interface Tunnel123
tun.124.tun.1.ch1.edovo.com.            IN      A       172.16.0.97             ; CH1 Tunnel Router 1 Interface Tunnel124
tun.125.tun.1.ch1.edovo.com.            IN      A       172.16.0.101            ; CH1 Tunnel Router 1 Interface Tunnel125
tun.126.tun.1.ch1.edovo.com.            IN      A       172.16.0.105            ; CH1 Tunnel Router 1 Interface Tunnel126
tun.127.tun.1.ch1.edovo.com.            IN      A       172.16.0.109            ; CH1 Tunnel Router 1 Interface Tunnel127
tun.128.tun.1.ch1.edovo.com.            IN      A       172.16.0.113            ; CH1 Tunnel Router 1 Interface Tunnel128
tun.129.tun.1.ch1.edovo.com.            IN      A       172.16.0.117            ; CH1 Tunnel Router 1 Interface Tunnel129
tun.130.tun.1.ch1.edovo.com.            IN      A       172.16.0.121            ; CH1 Tunnel Router 1 Interface Tunnel130
tun.131.tun.1.ch1.edovo.com.            IN      A       172.16.0.125            ; CH1 Tunnel Router 1 Interface Tunnel131
tun.132.tun.1.ch1.edovo.com.            IN      A       172.16.0.129            ; CH1 Tunnel Router 1 Interface Tunnel132
tun.133.tun.1.ch1.edovo.com.            IN      A       172.16.0.133            ; CH1 Tunnel Router 1 Interface Tunnel133
tun.134.tun.1.ch1.edovo.com.            IN      A       172.16.0.137            ; CH1 Tunnel Router 1 Interface Tunnel134
tun.135.tun.1.ch1.edovo.com.            IN      A       172.16.0.141            ; CH1 Tunnel Router 1 Interface Tunnel135
tun.136.tun.1.ch1.edovo.com.            IN      A       172.16.0.145            ; CH1 Tunnel Router 1 Interface Tunnel136
tun.137.tun.1.ch1.edovo.com.            IN      A       172.16.0.149            ; CH1 Tunnel Router 1 Interface Tunnel137
tun.138.tun.1.ch1.edovo.com.            IN      A       172.16.0.153            ; CH1 Tunnel Router 1 Interface Tunnel138
tun.139.tun.1.ch1.edovo.com.            IN      A       172.16.0.157            ; CH1 Tunnel Router 1 Interface Tunnel139
tun.140.tun.1.ch1.edovo.com.            IN      A       172.16.0.161            ; CH1 Tunnel Router 1 Interface Tunnel140
tun.141.tun.1.ch1.edovo.com.            IN      A       172.16.0.165            ; CH1 Tunnel Router 1 Interface Tunnel141
tun.142.tun.1.ch1.edovo.com.            IN      A       172.16.0.169            ; CH1 Tunnel Router 1 Interface Tunnel142
tun.143.tun.1.ch1.edovo.com.            IN      A       172.16.0.173            ; CH1 Tunnel Router 1 Interface Tunnel143
tun.144.tun.1.ch1.edovo.com.            IN      A       172.16.0.177            ; CH1 Tunnel Router 1 Interface Tunnel144
tun.145.tun.1.ch1.edovo.com.            IN      A       172.16.0.181            ; CH1 Tunnel Router 1 Interface Tunnel145
tun.146.tun.1.ch1.edovo.com.            IN      A       172.16.0.185            ; CH1 Tunnel Router 1 Interface Tunnel146
tun.147.tun.1.ch1.edovo.com.            IN      A       172.16.0.189            ; CH1 Tunnel Router 1 Interface Tunnel147
tun.148.tun.1.ch1.edovo.com.            IN      A       172.16.0.193            ; CH1 Tunnel Router 1 Interface Tunnel148
tun.149.tun.1.ch1.edovo.com.            IN      A       172.16.0.197            ; CH1 Tunnel Router 1 Interface Tunnel149
tun.150.tun.1.ch1.edovo.com.            IN      A       172.16.0.201            ; CH1 Tunnel Router 1 Interface Tunnel150
tun.151.tun.1.ch1.edovo.com.            IN      A       172.16.0.205            ; CH1 Tunnel Router 1 Interface Tunnel151
tun.152.tun.1.ch1.edovo.com.            IN      A       172.16.0.209            ; CH1 Tunnel Router 1 Interface Tunnel152
tun.153.tun.1.ch1.edovo.com.            IN      A       172.16.0.213            ; CH1 Tunnel Router 1 Interface Tunnel153
tun.154.tun.1.ch1.edovo.com.            IN      A       172.16.0.217            ; CH1 Tunnel Router 1 Interface Tunnel154
tun.155.tun.1.ch1.edovo.com.            IN      A       172.16.0.221            ; CH1 Tunnel Router 1 Interface Tunnel155
tun.156.tun.1.ch1.edovo.com.            IN      A       172.16.0.225            ; CH1 Tunnel Router 1 Interface Tunnel156
tun.157.tun.1.ch1.edovo.com.            IN      A       172.16.0.229            ; CH1 Tunnel Router 1 Interface Tunnel157
tun.158.tun.1.ch1.edovo.com.            IN      A       172.16.0.233            ; CH1 Tunnel Router 1 Interface Tunnel158
tun.159.tun.1.ch1.edovo.com.            IN      A       172.16.0.237            ; CH1 Tunnel Router 1 Interface Tunnel159
tun.160.tun.1.ch1.edovo.com.            IN      A       172.16.0.241            ; CH1 Tunnel Router 1 Interface Tunnel160
tun.161.tun.1.ch1.edovo.com.            IN      A       172.16.0.245            ; CH1 Tunnel Router 1 Interface Tunnel161
tun.162.tun.1.ch1.edovo.com.            IN      A       172.16.0.249            ; CH1 Tunnel Router 1 Interface Tunnel162
tun.163.tun.1.ch1.edovo.com.            IN      A       172.16.0.253            ; CH1 Tunnel Router 1 Interface Tunnel163
tun.164.tun.1.ch1.edovo.com.            IN      A       172.16.1.1              ; CH1 Tunnel Router 1 Interface Tunnel164
tun.165.tun.1.ch1.edovo.com.            IN      A       172.16.1.5              ; CH1 Tunnel Router 1 Interface Tunnel165
tun.166.tun.1.ch1.edovo.com.            IN      A       172.16.1.9              ; CH1 Tunnel Router 1 Interface Tunnel166
tun.167.tun.1.ch1.edovo.com.            IN      A       172.16.1.13             ; CH1 Tunnel Router 1 Interface Tunnel167
tun.168.tun.1.ch1.edovo.com.            IN      A       172.16.1.17             ; CH1 Tunnel Router 1 Interface Tunnel168
tun.169.tun.1.ch1.edovo.com.            IN      A       172.16.1.21             ; CH1 Tunnel Router 1 Interface Tunnel169
tun.170.tun.1.ch1.edovo.com.            IN      A       172.16.1.25             ; CH1 Tunnel Router 1 Interface Tunnel170
tun.171.tun.1.ch1.edovo.com.            IN      A       172.16.1.29             ; CH1 Tunnel Router 1 Interface Tunnel171
tun.172.tun.1.ch1.edovo.com.            IN      A       172.16.1.33             ; CH1 Tunnel Router 1 Interface Tunnel172
tun.173.tun.1.ch1.edovo.com.            IN      A       172.16.1.37             ; CH1 Tunnel Router 1 Interface Tunnel173
tun.174.tun.1.ch1.edovo.com.            IN      A       172.16.1.41             ; CH1 Tunnel Router 1 Interface Tunnel174
tun.175.tun.1.ch1.edovo.com.            IN      A       172.16.1.45             ; CH1 Tunnel Router 1 Interface Tunnel175
tun.176.tun.1.ch1.edovo.com.            IN      A       172.16.1.49             ; CH1 Tunnel Router 1 Interface Tunnel176
tun.177.tun.1.ch1.edovo.com.            IN      A       172.16.1.53             ; CH1 Tunnel Router 1 Interface Tunnel177
tun.178.tun.1.ch1.edovo.com.            IN      A       172.16.1.57             ; CH1 Tunnel Router 1 Interface Tunnel178
tun.179.tun.1.ch1.edovo.com.            IN      A       172.16.1.61             ; CH1 Tunnel Router 1 Interface Tunnel179
tun.180.tun.1.ch1.edovo.com.            IN      A       172.16.1.65             ; CH1 Tunnel Router 1 Interface Tunnel180
tun.181.tun.1.ch1.edovo.com.            IN      A       172.16.1.69             ; CH1 Tunnel Router 1 Interface Tunnel181
tun.182.tun.1.ch1.edovo.com.            IN      A       172.16.1.73             ; CH1 Tunnel Router 1 Interface Tunnel182
tun.183.tun.1.ch1.edovo.com.            IN      A       172.16.1.77             ; CH1 Tunnel Router 1 Interface Tunnel183
tun.184.tun.1.ch1.edovo.com.            IN      A       172.16.1.81             ; CH1 Tunnel Router 1 Interface Tunnel184
tun.185.tun.1.ch1.edovo.com.            IN      A       172.16.1.85             ; CH1 Tunnel Router 1 Interface Tunnel185
tun.186.tun.1.ch1.edovo.com.            IN      A       172.16.1.89             ; CH1 Tunnel Router 1 Interface Tunnel186
tun.187.tun.1.ch1.edovo.com.            IN      A       172.16.1.93             ; CH1 Tunnel Router 1 Interface Tunnel187
tun.188.tun.1.ch1.edovo.com.            IN      A       172.16.1.97             ; CH1 Tunnel Router 1 Interface Tunnel188
tun.189.tun.1.ch1.edovo.com.            IN      A       172.16.1.101            ; CH1 Tunnel Router 1 Interface Tunnel189
tun.190.tun.1.ch1.edovo.com.            IN      A       172.16.1.105            ; CH1 Tunnel Router 1 Interface Tunnel190
tun.191.tun.1.ch1.edovo.com.            IN      A       172.16.1.109            ; CH1 Tunnel Router 1 Interface Tunnel191
tun.192.tun.1.ch1.edovo.com.            IN      A       172.16.1.113            ; CH1 Tunnel Router 1 Interface Tunnel192
tun.193.tun.1.ch1.edovo.com.            IN      A       172.16.1.117            ; CH1 Tunnel Router 1 Interface Tunnel193
tun.194.tun.1.ch1.edovo.com.            IN      A       172.16.1.121            ; CH1 Tunnel Router 1 Interface Tunnel194
tun.195.tun.1.ch1.edovo.com.            IN      A       172.16.1.125            ; CH1 Tunnel Router 1 Interface Tunnel195
tun.196.tun.1.ch1.edovo.com.            IN      A       172.16.1.129            ; CH1 Tunnel Router 1 Interface Tunnel196
tun.197.tun.1.ch1.edovo.com.            IN      A       172.16.1.133            ; CH1 Tunnel Router 1 Interface Tunnel197
tun.198.tun.1.ch1.edovo.com.            IN      A       172.16.1.137            ; CH1 Tunnel Router 1 Interface Tunnel198
tun.199.tun.1.ch1.edovo.com.            IN      A       172.16.1.141            ; CH1 Tunnel Router 1 Interface Tunnel199
tun.200.tun.1.ch1.edovo.com.            IN      A       172.16.1.145            ; CH1 Tunnel Router 1 Interface Tunnel200
tun.201.tun.1.ch1.edovo.com.            IN      A       172.16.1.149            ; CH1 Tunnel Router 1 Interface Tunnel201
tun.202.tun.1.ch1.edovo.com.            IN      A       172.16.1.153            ; CH1 Tunnel Router 1 Interface Tunnel202
tun.203.tun.1.ch1.edovo.com.            IN      A       172.16.1.157            ; CH1 Tunnel Router 1 Interface Tunnel203
tun.204.tun.1.ch1.edovo.com.            IN      A       172.16.1.161            ; CH1 Tunnel Router 1 Interface Tunnel204
tun.205.tun.1.ch1.edovo.com.            IN      A       172.16.1.165            ; CH1 Tunnel Router 1 Interface Tunnel205
tun.206.tun.1.ch1.edovo.com.            IN      A       172.16.1.169            ; CH1 Tunnel Router 1 Interface Tunnel206
tun.207.tun.1.ch1.edovo.com.            IN      A       172.16.1.173            ; CH1 Tunnel Router 1 Interface Tunnel207
tun.208.tun.1.ch1.edovo.com.            IN      A       172.16.1.177            ; CH1 Tunnel Router 1 Interface Tunnel208
tun.209.tun.1.ch1.edovo.com.            IN      A       172.16.1.181            ; CH1 Tunnel Router 1 Interface Tunnel209
tun.210.tun.1.ch1.edovo.com.            IN      A       172.16.1.185            ; CH1 Tunnel Router 1 Interface Tunnel210
tun.211.tun.1.ch1.edovo.com.            IN      A       172.16.1.189            ; CH1 Tunnel Router 1 Interface Tunnel211
tun.212.tun.1.ch1.edovo.com.            IN      A       172.16.1.193            ; CH1 Tunnel Router 1 Interface Tunnel212
tun.213.tun.1.ch1.edovo.com.            IN      A       172.16.1.197            ; CH1 Tunnel Router 1 Interface Tunnel213
tun.214.tun.1.ch1.edovo.com.            IN      A       172.16.1.201            ; CH1 Tunnel Router 1 Interface Tunnel214
tun.215.tun.1.ch1.edovo.com.            IN      A       172.16.1.205            ; CH1 Tunnel Router 1 Interface Tunnel215
tun.216.tun.1.ch1.edovo.com.            IN      A       172.16.1.209            ; CH1 Tunnel Router 1 Interface Tunnel216
tun.217.tun.1.ch1.edovo.com.            IN      A       172.16.1.213            ; CH1 Tunnel Router 1 Interface Tunnel217
tun.218.tun.1.ch1.edovo.com.            IN      A       172.16.1.217            ; CH1 Tunnel Router 1 Interface Tunnel218
tun.219.tun.1.ch1.edovo.com.            IN      A       172.16.1.221            ; CH1 Tunnel Router 1 Interface Tunnel219
tun.220.tun.1.ch1.edovo.com.            IN      A       172.16.1.225            ; CH1 Tunnel Router 1 Interface Tunnel220
tun.221.tun.1.ch1.edovo.com.            IN      A       172.16.1.229            ; CH1 Tunnel Router 1 Interface Tunnel221
tun.222.tun.1.ch1.edovo.com.            IN      A       172.16.1.233            ; CH1 Tunnel Router 1 Interface Tunnel222
tun.223.tun.1.ch1.edovo.com.            IN      A       172.16.1.237            ; CH1 Tunnel Router 1 Interface Tunnel223
tun.224.tun.1.ch1.edovo.com.            IN      A       172.16.1.241            ; CH1 Tunnel Router 1 Interface Tunnel224
tun.225.tun.1.ch1.edovo.com.            IN      A       172.16.1.245            ; CH1 Tunnel Router 1 Interface Tunnel225
tun.226.tun.1.ch1.edovo.com.            IN      A       172.16.1.249            ; CH1 Tunnel Router 1 Interface Tunnel226
tun.227.tun.1.ch1.edovo.com.            IN      A       172.16.1.253            ; CH1 Tunnel Router 1 Interface Tunnel227

; Tunnel Router 2 - A Records
tun.100.tun.2.ch1.edovo.com.            IN      A       172.16.8.1              ; CH1 Tunnel Router 2 Interface Tunnel100
tun.101.tun.2.ch1.edovo.com.            IN      A       172.16.8.5              ; CH1 Tunnel Router 2 Interface Tunnel101
tun.102.tun.2.ch1.edovo.com.            IN      A       172.16.8.9              ; CH1 Tunnel Router 2 Interface Tunnel102
tun.103.tun.2.ch1.edovo.com.            IN      A       172.16.8.13             ; CH1 Tunnel Router 2 Interface Tunnel103
tun.104.tun.2.ch1.edovo.com.            IN      A       172.16.8.17             ; CH1 Tunnel Router 2 Interface Tunnel104
tun.105.tun.2.ch1.edovo.com.            IN      A       172.16.8.21             ; CH1 Tunnel Router 2 Interface Tunnel105
tun.106.tun.2.ch1.edovo.com.            IN      A       172.16.8.25             ; CH1 Tunnel Router 2 Interface Tunnel106
tun.107.tun.2.ch1.edovo.com.            IN      A       172.16.8.29             ; CH1 Tunnel Router 2 Interface Tunnel107
tun.108.tun.2.ch1.edovo.com.            IN      A       172.16.8.33             ; CH1 Tunnel Router 2 Interface Tunnel108
tun.109.tun.2.ch1.edovo.com.            IN      A       172.16.8.37             ; CH1 Tunnel Router 2 Interface Tunnel109
tun.110.tun.2.ch1.edovo.com.            IN      A       172.16.8.41             ; CH1 Tunnel Router 2 Interface Tunnel110
tun.111.tun.2.ch1.edovo.com.            IN      A       172.16.8.45             ; CH1 Tunnel Router 2 Interface Tunnel111
tun.112.tun.2.ch1.edovo.com.            IN      A       172.16.8.49             ; CH1 Tunnel Router 2 Interface Tunnel112
tun.113.tun.2.ch1.edovo.com.            IN      A       172.16.8.53             ; CH1 Tunnel Router 2 Interface Tunnel113
tun.114.tun.2.ch1.edovo.com.            IN      A       172.16.8.57             ; CH1 Tunnel Router 2 Interface Tunnel114
tun.115.tun.2.ch1.edovo.com.            IN      A       172.16.8.61             ; CH1 Tunnel Router 2 Interface Tunnel115
tun.116.tun.2.ch1.edovo.com.            IN      A       172.16.8.65             ; CH1 Tunnel Router 2 Interface Tunnel116
tun.117.tun.2.ch1.edovo.com.            IN      A       172.16.8.69             ; CH1 Tunnel Router 2 Interface Tunnel117
tun.118.tun.2.ch1.edovo.com.            IN      A       172.16.8.73             ; CH1 Tunnel Router 2 Interface Tunnel118
tun.119.tun.2.ch1.edovo.com.            IN      A       172.16.8.77             ; CH1 Tunnel Router 2 Interface Tunnel119
tun.120.tun.2.ch1.edovo.com.            IN      A       172.16.8.81             ; CH1 Tunnel Router 2 Interface Tunnel120
tun.121.tun.2.ch1.edovo.com.            IN      A       172.16.2.85             ; CH1 Tunnel Router 2 Interface Tunnel121
tun.122.tun.2.ch1.edovo.com.            IN      A       172.16.8.89             ; CH1 Tunnel Router 2 Interface Tunnel122
tun.123.tun.2.ch1.edovo.com.            IN      A       172.16.8.93             ; CH1 Tunnel Router 2 Interface Tunnel123
tun.124.tun.2.ch1.edovo.com.            IN      A       172.16.8.97             ; CH1 Tunnel Router 2 Interface Tunnel124
tun.125.tun.2.ch1.edovo.com.            IN      A       172.16.8.101            ; CH1 Tunnel Router 2 Interface Tunnel125
tun.126.tun.2.ch1.edovo.com.            IN      A       172.16.8.105            ; CH1 Tunnel Router 2 Interface Tunnel126
tun.127.tun.2.ch1.edovo.com.            IN      A       172.16.8.109            ; CH1 Tunnel Router 2 Interface Tunnel127
tun.128.tun.2.ch1.edovo.com.            IN      A       172.16.8.113            ; CH1 Tunnel Router 2 Interface Tunnel128
tun.129.tun.2.ch1.edovo.com.            IN      A       172.16.8.117            ; CH1 Tunnel Router 2 Interface Tunnel129
tun.130.tun.2.ch1.edovo.com.            IN      A       172.16.8.121            ; CH1 Tunnel Router 2 Interface Tunnel130
tun.131.tun.2.ch1.edovo.com.            IN      A       172.16.8.125            ; CH1 Tunnel Router 2 Interface Tunnel131
tun.132.tun.2.ch1.edovo.com.            IN      A       172.16.8.129            ; CH1 Tunnel Router 2 Interface Tunnel132
tun.133.tun.2.ch1.edovo.com.            IN      A       172.16.8.133            ; CH1 Tunnel Router 2 Interface Tunnel133
tun.134.tun.2.ch1.edovo.com.            IN      A       172.16.8.137            ; CH1 Tunnel Router 2 Interface Tunnel134
tun.135.tun.2.ch1.edovo.com.            IN      A       172.16.8.141            ; CH1 Tunnel Router 2 Interface Tunnel135
tun.136.tun.2.ch1.edovo.com.            IN      A       172.16.8.145            ; CH1 Tunnel Router 2 Interface Tunnel136
tun.137.tun.2.ch1.edovo.com.            IN      A       172.16.8.149            ; CH1 Tunnel Router 2 Interface Tunnel137
tun.138.tun.2.ch1.edovo.com.            IN      A       172.16.8.153            ; CH1 Tunnel Router 2 Interface Tunnel138
tun.139.tun.2.ch1.edovo.com.            IN      A       172.16.8.157            ; CH1 Tunnel Router 2 Interface Tunnel139
tun.140.tun.2.ch1.edovo.com.            IN      A       172.16.8.161            ; CH1 Tunnel Router 2 Interface Tunnel140
tun.141.tun.2.ch1.edovo.com.            IN      A       172.16.8.165            ; CH1 Tunnel Router 2 Interface Tunnel141
tun.142.tun.2.ch1.edovo.com.            IN      A       172.16.8.169            ; CH1 Tunnel Router 2 Interface Tunnel142
tun.143.tun.2.ch1.edovo.com.            IN      A       172.16.8.173            ; CH1 Tunnel Router 2 Interface Tunnel143
tun.144.tun.2.ch1.edovo.com.            IN      A       172.16.8.177            ; CH1 Tunnel Router 2 Interface Tunnel144
tun.145.tun.2.ch1.edovo.com.            IN      A       172.16.8.181            ; CH1 Tunnel Router 2 Interface Tunnel145
tun.146.tun.2.ch1.edovo.com.            IN      A       172.16.8.185            ; CH1 Tunnel Router 2 Interface Tunnel146
tun.147.tun.2.ch1.edovo.com.            IN      A       172.16.8.189            ; CH1 Tunnel Router 2 Interface Tunnel147
tun.148.tun.2.ch1.edovo.com.            IN      A       172.16.8.193            ; CH1 Tunnel Router 2 Interface Tunnel148
tun.149.tun.2.ch1.edovo.com.            IN      A       172.16.8.197            ; CH1 Tunnel Router 2 Interface Tunnel149
tun.150.tun.2.ch1.edovo.com.            IN      A       172.16.8.201            ; CH1 Tunnel Router 2 Interface Tunnel150
tun.151.tun.2.ch1.edovo.com.            IN      A       172.16.8.205            ; CH1 Tunnel Router 2 Interface Tunnel151
tun.152.tun.2.ch1.edovo.com.            IN      A       172.16.8.209            ; CH1 Tunnel Router 2 Interface Tunnel152
tun.153.tun.2.ch1.edovo.com.            IN      A       172.16.8.213            ; CH1 Tunnel Router 2 Interface Tunnel153
tun.154.tun.2.ch1.edovo.com.            IN      A       172.16.8.217            ; CH1 Tunnel Router 2 Interface Tunnel154
tun.155.tun.2.ch1.edovo.com.            IN      A       172.16.8.221            ; CH1 Tunnel Router 2 Interface Tunnel155
tun.156.tun.2.ch1.edovo.com.            IN      A       172.16.8.225            ; CH1 Tunnel Router 2 Interface Tunnel156
tun.157.tun.2.ch1.edovo.com.            IN      A       172.16.8.229            ; CH1 Tunnel Router 2 Interface Tunnel157
tun.158.tun.2.ch1.edovo.com.            IN      A       172.16.8.233            ; CH1 Tunnel Router 2 Interface Tunnel158
tun.159.tun.2.ch1.edovo.com.            IN      A       172.16.8.237            ; CH1 Tunnel Router 2 Interface Tunnel159
tun.160.tun.2.ch1.edovo.com.            IN      A       172.16.8.241            ; CH1 Tunnel Router 2 Interface Tunnel160
tun.161.tun.2.ch1.edovo.com.            IN      A       172.16.8.245            ; CH1 Tunnel Router 2 Interface Tunnel161
tun.162.tun.2.ch1.edovo.com.            IN      A       172.16.8.249            ; CH1 Tunnel Router 2 Interface Tunnel162
tun.163.tun.2.ch1.edovo.com.            IN      A       172.16.8.253            ; CH1 Tunnel Router 2 Interface Tunnel163
tun.164.tun.2.ch1.edovo.com.		IN	A	172.16.9.1		; CH1 Tunnel Router 2 Interface Tunnel164
tun.165.tun.2.ch1.edovo.com.		IN	A	172.16.9.5		; CH1 Tunnel Router 2 Interface Tunnel165
tun.166.tun.2.ch1.edovo.com.		IN	A	172.16.9.9		; CH1 Tunnel Router 2 Interface Tunnel166
tun.167.tun.2.ch1.edovo.com.		IN	A	172.16.9.13		; CH1 Tunnel Router 2 Interface Tunnel167
tun.168.tun.2.ch1.edovo.com.		IN	A	172.16.9.17		; CH1 Tunnel Router 2 Interface Tunnel168
tun.169.tun.2.ch1.edovo.com.            IN      A       172.16.9.21             ; CH1 Tunnel Router 2 Interface Tunnel169
tun.170.tun.2.ch1.edovo.com.            IN      A       172.16.9.25             ; CH1 Tunnel Router 2 Interface Tunnel170
tun.171.tun.2.ch1.edovo.com.            IN      A       172.16.9.29             ; CH1 Tunnel Router 2 Interface Tunnel171
tun.172.tun.2.ch1.edovo.com.            IN      A       172.16.9.33             ; CH1 Tunnel Router 2 Interface Tunnel172
tun.173.tun.2.ch1.edovo.com.            IN      A       172.16.9.37             ; CH1 Tunnel Router 2 Interface Tunnel173
tun.174.tun.2.ch1.edovo.com.            IN      A       172.16.9.41             ; CH1 Tunnel Router 2 Interface Tunnel174
tun.175.tun.2.ch1.edovo.com.            IN      A       172.16.9.45             ; CH1 Tunnel Router 2 Interface Tunnel175
tun.176.tun.2.ch1.edovo.com.            IN      A       172.16.9.49             ; CH1 Tunnel Router 2 Interface Tunnel176
tun.177.tun.2.ch1.edovo.com.            IN      A       172.16.9.53             ; CH1 Tunnel Router 2 Interface Tunnel177
tun.178.tun.2.ch1.edovo.com.            IN      A       172.16.9.57             ; CH1 Tunnel Router 2 Interface Tunnel178
tun.179.tun.2.ch1.edovo.com.            IN      A       172.16.9.61             ; CH1 Tunnel Router 2 Interface Tunnel179
tun.180.tun.2.ch1.edovo.com.            IN      A       172.16.9.65             ; CH1 Tunnel Router 2 Interface Tunnel180
tun.181.tun.2.ch1.edovo.com.            IN      A       172.16.9.69             ; CH1 Tunnel Router 2 Interface Tunnel181
tun.182.tun.2.ch1.edovo.com.            IN      A       172.16.9.73             ; CH1 Tunnel Router 2 Interface Tunnel182
tun.183.tun.2.ch1.edovo.com.            IN      A       172.16.9.77             ; CH1 Tunnel Router 2 Interface Tunnel183
tun.184.tun.2.ch1.edovo.com.            IN      A       172.16.9.81             ; CH1 Tunnel Router 2 Interface Tunnel184
tun.185.tun.2.ch1.edovo.com.            IN      A       172.16.9.85             ; CH1 Tunnel Router 2 Interface Tunnel185
tun.186.tun.2.ch1.edovo.com.            IN      A       172.16.9.89             ; CH1 Tunnel Router 2 Interface Tunnel186
tun.187.tun.2.ch1.edovo.com.            IN      A       172.16.9.93             ; CH1 Tunnel Router 2 Interface Tunnel187
tun.188.tun.2.ch1.edovo.com.            IN      A       172.16.9.97             ; CH1 Tunnel Router 2 Interface Tunnel188
tun.189.tun.2.ch1.edovo.com.            IN      A       172.16.9.101            ; CH1 Tunnel Router 2 Interface Tunnel189
tun.190.tun.2.ch1.edovo.com.            IN      A       172.16.9.105            ; CH1 Tunnel Router 2 Interface Tunnel190
tun.191.tun.2.ch1.edovo.com.            IN      A       172.16.9.109            ; CH1 Tunnel Router 2 Interface Tunnel191
tun.192.tun.2.ch1.edovo.com.            IN      A       172.16.9.113            ; CH1 Tunnel Router 2 Interface Tunnel192

; ############################################################
; ############# EDOVO OFFICE DNS RECORDS #####################
; ############################################################

; Edovo Chicago Office Network - A Records
114.office.il.edovo.com.		IN	A	192.168.13.21		; Office Phone 
102.office.il.edovo.com.                IN      A       192.168.13.22           ; Office Phone 
121.office.il.edovo.com.                IN      A       192.168.13.23           ; Office Phone 
113.office.il.edovo.com.                IN      A       192.168.13.24           ; Office Phone 
556.office.il.edovo.com.                IN      A       192.168.13.25           ; Office Phone 
557.office.il.edovo.com.                IN      A       192.168.13.26           ; Office Phone 
560.office.il.edovo.com.                IN      A       192.168.13.27           ; Office Phone 
558.office.il.edovo.com.                IN      A       192.168.13.28           ; Office Phone 
ap.1.office.il.edovo.com.    		IN      A       192.168.10.11		; Office Ruckus R710
ap.2.office.il.edovo.com.               IN      A       192.168.10.12           ; Office Ruckus R710
ap.3.office.il.edovo.com.               IN      A       192.168.10.13           ; Office Ruckus R710
ap.4.office.il.edovo.com.               IN      A       192.168.10.14           ; Office Ruckus R710
camsw.1.office.il.edovo.com.		IN	A	192.168.14.15		; UBNT Security Camera Switch
cam.1.office.il.edovo.com.              IN      A       192.168.14.21           ; UBNT Security Camera 1
cam.2.office.il.edovo.com.              IN      A       192.168.14.22           ; UBNT Security Camera 2
cam.3.office.il.edovo.com.              IN      A       192.168.14.23           ; UBNT Security Camera 3
cam.4.office.il.edovo.com.              IN      A       192.168.14.24           ; UBNT Security Camera 4
cam.5.office.il.edovo.com.              IN      A       192.168.14.25           ; UBNT Security Camera 5
cdn.test.office.il.edovo.com.		IN	A	192.168.12.90		; NOC Test CDN
cdn.dev.office.il.edovo.com.		IN	A	192.168.12.50		; Dev Test CDN
cdn.copy.office.il.edovo.com.		IN	A	192.168.12.31		; Copy Server
mac.dev.office.il.edovo.com.            IN      A       192.168.12.15		; Dev Mac Mini
mac.noc.office.il.edovo.com.            IN      A       192.168.12.14		; NOC Mac Mini
nvr.office.il.edovo.com.		IN	A	192.168.14.20		; UBNT NVR
rtr.office.il.edovo.com.                IN      A       192.168.254.5		; Router
sw.1.office.il.edovo.com.               IN      A       192.168.10.5		; Switch 1
sw.2.office.il.edovo.com.		IN	A	192.168.10.6            ; Switch 2
tun.1.office.il.edovo.com.              IN      A       172.16.32.2             ; Tunnel 1
tun.2.office.il.edovo.com.              IN      A       172.16.32.6             ; Tunnel 2
wan.office.il.edovo.com.                IN      A       96.70.43.1              ; WAN 1

; Edovo Cypress Office Network - A Records
wan.office.ca.edovo.com.                IN      A       172.16.20.4             ; WAN 1
rtr.office.ca.edovo.com.                IN      A       192.168.254.7           ; Router
fw.office.ca.edovo.com.			IN	A	192.168.255.14		; Fortigate 200B Lookback 
wan.fw.office.ca.edovo.com.		IN	A	173.198.31.98		; Office DIA
fw.guest.ca.edovo.com.			IN	A	172.25.0.40		; Guest Firewall MGMT
wan.fw.guest.ca.edovo.com.		IN	A	173.198.31.124		; Guest Firewall WAN
fw.cluster.ca.edovo.com.		IN	A	172.25.0.50		; VPN Firewall Cluster
wan.fw.cluster.ca.edovo.com.		IN	A	173.198.31.120		; VPN Firewall Cluster WAN
sw.1.office.ca.edovo.com.		IN	A	172.25.0.6		; Corp Switch 1
sw.2.office.ca.edovo.com.		IN	A	172.25.0.7		; Corp Switch 2
sw.3.office.ca.edovo.com.		IN	A	172.25.0.8		; Corp PoE Switch
sw.4.office.ca.edovo.com.		IN	A	172.25.0.9		; Corp 5th Floor PoE Switch
ap.1.office.ca.edovo.com.		IN	A	172.25.0.41		; AP above Field Ops
ap.2.office.ca.edovo.com.		IN	A	172.25.0.42		; AP above CSC
ap.3.office.ca.edovo.com.		IN	A	172.25.0.43		; AP in 1st floor Conference
ap.4.office.ca.edovo.com.		IN	A	172.25.0.44		; AP on 5th Floor
audiomining.lld.edovo.com.              IN      A       172.25.1.43
iconweb.lld.edovo.com.                  IN      A       172.25.1.22
lld-corp-01.lld.edovo.com.              IN      A       172.25.0.10
lld-corp-02.lld.edovo.com.              IN      A       172.25.0.30
radiuscorp.lld.edovo.com.               IN      A       172.25.1.52
radiussrvrcorp.lld.edovo.com.           IN      A       172.25.1.52
sftp.lld.edovo.com.                     IN      A       172.25.0.125
sftpagents.lld.edovo.com.               IN      A       172.25.1.63
sqllegacy.lld.edovo.com.                IN      A       172.25.0.126
vidchat-5.office.ca.edovo.com.		IN	A	172.25.2.10		; Video Chat Server
honeypot.office.ca.edovo.com.		IN	A	172.25.1.120		; SMB honeypot

; ############################################################
; ############# EDOVO VPN SITE DNS RECORDS ###################
; ############################################################

; Edovo Test Site - A Records
lan.groomlake.edovo.com.                IN      A       10.0.0.1        ; Firewall Inside Address        
rtr.groomlake.edovo.com.                IN      A       192.168.254.11  ; Router Loopback0
tun.1.groomlake.edovo.com.              IN      A       172.16.0.2      ; Router Tun42
tun.2.groomlake.edovo.com.              IN      A       172.16.8.2      ; Router Tun44
wan.groomlake.edovo.com.                IN      A       96.70.43.3      ; WAN IP

; Napa County Jail, CA - A Records
ap.1.ncj.ca.edovo.com.                  IN      A       10.0.4.11       ; Merak AP 1 
ap.2.ncj.ca.edovo.com.                  IN      A       10.0.4.12       ; Merak AP 2 
ap.3.ncj.ca.edovo.com.                  IN      A       10.0.4.13       ; Merak AP 3 
ap.4.ncj.ca.edovo.com.                  IN      A       10.0.4.14       ; Merak AP 4 
ap.5.ncj.ca.edovo.com.                  IN      A       10.0.4.15       ; Merak AP 5 
ap.6.ncj.ca.edovo.com.                  IN      A       10.0.4.16       ; Merak AP 6 
ap.7.ncj.ca.edovo.com.                  IN      A       10.0.4.17       ; Merak AP 7 
ap.8.ncj.ca.edovo.com.                  IN      A       10.0.4.18       ; Merak AP 8
ge.ncj.ca.edovo.com.                    IN      A       10.0.4.1	; Router Gi0/0/1
rtr.ncj.ca.edovo.com.                   IN      A       192.168.254.12  ; Router Loopback0
tun.1.ncj.ca.edovo.com.                 IN      A       172.16.0.6      ; Router Tun42
tun.2.ncj.ca.edovo.com.			IN	A	172.16.8.6      ; Router Tun44
wan.ncj.ca.edovo.com.                   IN      A       173.11.107.25   ; WAN IP

; Trinity County Jail, CA - A Records
ap.1.tcj.ca.edovo.com.                  IN      A       10.0.8.11	; R710 AP 1
ap.2.tcj.ca.edovo.com.                  IN      A       10.0.8.12	; R710 AP 2
ap.3.tcj.ca.edovo.com.                  IN      A       10.0.8.13       ; R710 AP 3
ap.4.tcj.ca.edovo.com.                  IN      A       10.0.8.14       ; R710 AP 4
ap.5.tcj.ca.edovo.com.                  IN      A       10.0.8.15       ; R710 AP 5
cdn.tcj.ca.edovo.com.			IN	A	10.0.8.3	; CDN Server
fw.tcj.ca.edovo.com.                    IN      A       172.17.0.18     ; Firewall Outside Address
ge.tcj.ca.edovo.com.                    IN      A       172.17.0.17     ; Router Gi0/0/1
ipmi.tcj.ca.edovo.com.			IN	A	10.0.8.7	; IPMI Interface
lan.tcj.ca.edovo.com.                   IN      A       10.0.8.1	; Firewall Inside Address
rtr.tcj.ca.edovo.com.                   IN      A       192.168.254.13	; Router Loopback0
sw.mdf.tcj.ca.edovo.com.                IN      A       10.0.8.2	; MDF Switch
tun.1.tcj.ca.edovo.com.                 IN      A       172.16.0.10	; Router Tun42
tun.2.tcj.ca.edovo.com.                 IN      A       172.16.8.10     ; Router Tun44
wan.tcj.ca.edovo.com.                   IN      A       12.172.164.168 	; WAN IP

; IYC Chicago Juvenile, IL - A Record
ap.1.iycc.il.edovo.com.                 IN      A       10.0.12.11      ; R710 AP 1
ap.2.iycc.il.edovo.com.                 IN      A       10.0.12.12      ; R710 AP 2 
ap.3.iycc.il.edovo.com.                 IN      A       10.0.12.13      ; R710 AP 3 
ap.4.iycc.il.edovo.com.                 IN      A       10.0.12.14      ; R710 AP 4 
ap.5.iycc.il.edovo.com.                 IN      A       10.0.12.15      ; R710 AP 5 
ap.6.iycc.il.edovo.com.                 IN      A       10.0.12.16      ; Meraki AP 6 
ap.7.iycc.il.edovo.com.                 IN      A       10.0.12.17      ; R710 AP 7    
fw.iycc.il.edovo.com.                   IN      A       172.17.0.22     ; Firewall Outside Address
ge.iycc.il.edovo.com.                   IN      A       172.17.0.21     ; Router Gi0/0/1
lan.iycc.il.edovo.com.                  IN      A       10.0.12.1       ; Firewall Inside Address
rtr.iycc.il.edovo.com.                  IN      A       192.168.254.14  ; Router Loopback0
sw.1.iycc.il.edovo.com.                 IN      A       10.0.12.2       ; MDF Switch 
tun.1.iycc.il.edovo.com.                IN      A       172.16.0.14     ; Router Tun42
tun.2.iycc.il.edovo.com.                IN      A       172.16.8.14     ; Router Tun44
wan.iycc.il.edovo.com.                  IN      A       173.167.158.197 ; WAN IP

; Allegheny County Jail, PA - A Record
ap.1.acj.pa.edovo.com.                  IN      A       10.0.16.11      ; R710 AP 1
ap.2.acj.pa.edovo.com.                  IN      A       10.0.16.12      ; R710 AP 2
ap.3.acj.pa.edovo.com.                  IN      A       10.0.16.13      ; R710 AP 3
ap.4.acj.pa.edovo.com.                  IN      A       10.0.16.14      ; R710 AP 4
cdn.acj.pa.edovo.com.                   IN      A       10.0.16.3       ; Site CDN Server
fw.acj.pa.edovo.com.                    IN      A       172.17.0.26     ; Firewall Outside Address
ge.acj.pa.edovo.com.                    IN      A       172.17.0.25     ; Router Gi0/0/1
ipmi.acj.pa.edovo.com.			IN	A	10.0.16.7	; IPMI interface 
lan.acj.pa.edovo.com.                   IN      A       10.0.16.1       ; Firewall Inside Address
rtr.acj.pa.edovo.com.                   IN      A       192.168.254.15  ; Router Loopback0
sw.2.acj.pa.edovo.com.                  IN      A       10.0.16.2       ; IDF Switch
sw.4.acj.pa.edovo.com.                  IN      A       10.0.16.4       ; IDF Switch
sw.mdf.acj.pa.edovo.com.                IN      A       10.0.16.5       ; MDF Switch 
tun.1.acj.pa.edovo.com.                 IN      A       172.16.0.18     ; Router Tun42
tun.2.acj.pa.edovo.com.                 IN      A       172.16.8.18     ; Router Tun44
wan.acj.pa.edovo.com.                   IN      A       74.94.205.97    ; WAN IP

; IYC Warrenville Juvenile, IL - A Record
ap.1.iycw.il.edovo.com.                 IN      A       10.0.20.11      ; R710 AP 1
fw.iycw.il.edovo.com.                   IN      A       172.17.0.30     ; Firewall Outside Address
ge.iycw.il.edovo.com.                   IN      A       172.17.0.29     ; Router Gi0/0/1
lan.iycw.il.edovo.com.                  IN      A       10.0.20.1       ; Firewall Inside Address
rtr.iycw.il.edovo.com.                  IN      A       192.168.254.16  ; Router Loopback0
sw.1.iycw.il.edovo.com.                 IN      A       10.0.20.2       ; MDF Switch 
tun.1.iycw.il.edovo.com.                IN      A       172.16.0.22     ; Router Tun42
tun.2.iycw.il.edovo.com.                IN      A       172.16.8.22     ; Router Tun44
wan.iycw.il.edovo.com.                  IN      A       96.92.239.69    ; WAN IP

; Tutwiler Prison, AL - A Record
ap.1.tpw.al.edovo.com.                  IN      A       10.0.24.11      ; R710 AP 1
ap.2.tpw.al.edovo.com.                  IN      A       10.0.24.12      ; R710 AP 2
ap.3.tpw.al.edovo.com.                  IN      A       10.0.24.13      ; R710 AP 3
cdn.tpw.al.edovo.com.			IN	A	10.0.24.3	; Site CDN Server
fw.tpw.al.edovo.com.                    IN      A       172.17.0.34     ; Firewall Outside Address
ge.tpw.al.edovo.com.                    IN      A       172.17.7.33     ; Router Gi0/0/1
ipmi.tpw.al.edovo.com.                  IN      A       10.0.24.7       ; IPMI interface
lan.tpw.al.edovo.com.                   IN      A       10.0.24.1       ; Firewall Inside Address
rtr.tpw.al.edovo.com.                   IN      A       192.168.254.17  ; Router Loopback0
tun.1.tpw.al.edovo.com.                 IN      A       172.16.0.26     ; Router Tun42
tun.2.tpw.al.edovo.com.                 IN      A       172.16.8.26     ; Router Tun44
wan.tpw.al.edovo.com.                   IN      A       207.157.95.202  ; WAN IP

; Madera County Jail, CA - A Record
ap.1.mcdc.ca.edovo.com.                 IN      A       10.0.28.21      ; R710 AP 1
ap.2.mcdc.ca.edovo.com.                 IN      A       10.0.28.22      ; R710 AP 2
ap.3.mcdc.ca.edovo.com.                 IN      A       10.0.28.23      ; R710 AP 3
ap.4.mcdc.ca.edovo.com.                 IN      A       10.0.28.24      ; R710 AP 4
ap.5.mcdc.ca.edovo.com.                 IN      A       10.0.28.25      ; R710 AP 5
ap.6.mcdc.ca.edovo.com.                 IN      A       10.0.28.26      ; R710 AP 6
ap.7.mcdc.ca.edovo.com.                 IN      A       10.0.28.27      ; R710 AP 7
ap.8.mcdc.ca.edovo.com.                 IN      A       10.0.28.28      ; R710 AP 8
ap.9.mcdc.ca.edovo.com.                 IN      A       10.0.28.29      ; R710 AP 9
ap.10.mcdc.ca.edovo.com.                IN      A       10.0.28.30      ; R710 AP 10
ap.11.mcdc.ca.edovo.com.                IN      A       10.0.28.31      ; R710 AP 11
ap.12.mcdc.ca.edovo.com.                IN      A       10.0.28.32      ; R710 AP 12
ap.13.mcdc.ca.edovo.com.                IN      A       10.0.28.33      ; R710 AP 13
ap.14.mcdc.ca.edovo.com.                IN      A       10.0.28.34      ; R710 AP 14
ap.15.mcdc.ca.edovo.com.                IN      A       10.0.28.35      ; R710 AP 15
ap.16.mcdc.ca.edovo.com.                IN      A       10.0.28.36      ; R710 AP 16
ap.17.mcdc.ca.edovo.com.                IN      A       10.0.28.37      ; R710 AP 17
ap.18.mcdc.ca.edovo.com.                IN      A       10.0.28.38      ; R710 AP 18
ap.19.mcdc.ca.edovo.com.                IN      A       10.0.28.39      ; R710 AP 19
ap.20.mcdc.ca.edovo.com.                IN      A       10.0.28.40      ; R710 AP 20
ap.21.mcdc.ca.edovo.com.                IN      A       10.0.28.41      ; R710 AP 21
ap.22.mcdc.ca.edovo.com.                IN      A       10.0.28.42      ; R710 AP 22
ge.mcdc.ca.edovo.com.                   IN      A       10.0.28.1	; Router Gi0/0/1
pdu.1.mcdc.ca.edovo.com.                IN      A       10.0.28.51      ; PDU 1 
pdu.2.mcdc.ca.edovo.com.                IN      A       10.0.28.52      ; PDU 2
pdu.3.mcdc.ca.edovo.com.                IN      A       10.0.28.53      ; PDU 3
pdu.4.mcdc.ca.edovo.com.                IN      A       10.0.28.54      ; PDU 4
rtr.mcdc.ca.edovo.com.                  IN      A       192.168.254.18  ; Router Loopback0
sw.1.mcdc.ca.edovo.com.                 IN      A       10.0.28.11      ; IDF Switch
sw.2.mcdc.ca.edovo.com.                 IN      A       10.0.28.12      ; IDF Switch
sw.3.mcdc.ca.edovo.com.                 IN      A       10.0.28.13      ; IDF Switch
sw.mdf.mcdc.ca.edovo.com.               IN      A       10.0.28.2       ; MDF Switch
tun.1.mcdc.ca.edovo.com.                IN      A       172.16.0.30     ; Router Tun42
tun.2.mcdc.ca.edovo.com.		IN	A	172.16.8.30     ; Router Tun44
wan.mcdc.ca.edovo.com.                  IN      A       96.92.123.77    ; WAN IP
cdn.mcdc.ca.edovo.com.			IN	A	10.0.28.3	; Site CDN Server

; High Point Detention, NC - A Record
cdn.hpd.nc.edovo.com.			IN	A	10.0.32.3	; Site CDN Server
fw.hpd.nc.edovo.com.                    IN      A       172.17.0.42     ; Firewall Outside Address
ge.hpd.nc.edovo.com.			IN	A	172.17.0.41	; Router Gi0/0/1
lan.hpd.nc.edovo.com                    IN      A       10.0.32.1       ; Firewall Inside Address
ipmi.hpd.nc.edovo.com.                  IN      A       10.0.32.7       ; IPMI interface
rtr.hpd.nc.edovo.com.                   IN      A       192.168.254.19  ; Router Loopback0
tun.1.hpd.nc.edovo.com.                 IN      A       172.16.0.34     ; Router Tun42
tun.2.hpd.nc.edovo.com.                 IN      A       172.16.8.34     ; Router Tun44
wan.hpd.nc.edovo.com.                   IN      A       74.124.191.43   ; WAN IP

; Bartow County Jail, GA - A Record
ap.1.bcj.ga.edovo.com.                  IN      A       10.0.36.11      ; R710 AP 1
ap.2.bcj.ga.edovo.com.                  IN      A       10.0.36.12      ; R710 AP 2
ap.3.bcj.ga.edovo.com.                  IN      A       10.0.36.13      ; R710 AP 3
cdn.bcj.ga.edovo.com.			IN	A	10.0.36.3	; Site CDN Server
fw.bcj.ga.edovo.com.                    IN      A       172.17.0.46     ; Firewall Outside Address
ge.bcj.ga.edovo.com.                    IN      A       172.17.0.45     ; Router Gi0/0/1
ipmi.bcj.ga.edovo.com.                  IN      A       10.0.36.7       ; IPMI interface
lan.bcj.ga.edovo.com.                   IN      A       10.0.36.1       ; Firewall Inside Address
rtr.bcj.ga.edovo.com.                   IN      A       192.168.254.20  ; Router Loopback0
tun.1.bcj.ga.edovo.com.                 IN      A       172.16.0.38     ; Router Tun42
tun.2.bcj.ga.edovo.com.			IN	A	172.16.8.38	; Router Tun44
wan.bcj.ga.edovo.com.                   IN      A       12.29.251.250   ; WAN IP

; Ozaukee County Jail, WI - A Record 
ap.1.ocj.wi.edovo.com.                  IN      A       10.0.40.11      ; Ruckus AP 1
ap.2.ocj.wi.edovo.com                   IN      A       10.0.40.12      ; Ruckus AP 2
cdn.ocj.wi.edovo.com.                   IN      A       10.0.40.3       ; Site CDN Server
fw.ocj.wi.edovo.com.                    IN      A       172.17.0.62     ; Firewall Outside Address
ge.ocj.wi.edovo.com.                    IN      A       172.17.0.61     ; Router Gi0/0/1
ipmi.ocj.wi.edovo.com.                  IN      A       10.0.40.7       ; IPMI Interface
lan.ocj.wi.edovo.com.                   IN      A       10.0.40.1       ; Firewall Inside Address
rtr.ocj.wi.edovo.com.                   IN      A       192.168.254.21  ; Router Loopback0
tun.1.ocj.wi.edovo.com.                 IN      A       172.16.0.42     ; Router Tun42
tun.2.ocj.wi.edovo.com.                 IN      A       172.16.8.42     ; Router Tun44
wan.ocj.wi.edovo.com.                   IN      A       74.143.62.122   ; WAN IP

; Madera Juvenile, CA - A Record
ap.1.mcjd.ca.edovo.com.                 IN      A       10.0.44.11      ; R710 AP 1
ap.2.mcjd.ca.edovo.com.                 IN      A       10.0.44.12      ; R710 AP 2
ap.3.mcjd.ca.edovo.com.                 IN      A       10.0.44.13      ; R710 AP 3
ap.4.mcjd.ca.edovo.com.                 IN      A       10.0.44.14      ; R710 AP 4
ap.5.mcjd.ca.edovo.com.                 IN      A       10.0.44.15      ; R710 AP 5
ap.6.mcjd.ca.edovo.com.                 IN      A       10.0.44.16      ; R710 AP 6
ap.7.mcjd.ca.edovo.com.                 IN      A       10.0.44.17      ; R710 AP 7
ap.8.mcjd.ca.edovo.com.                 IN      A       10.0.44.18      ; R710 AP 8
ap.9.mcjd.ca.edovo.com.                 IN      A       10.0.44.19      ; R710 AP 9
ap.10.mcjd.ca.edovo.com.                IN      A       10.0.44.20      ; R710 AP 10
ap.11.mcjd.ca.edovo.com.                IN      A       10.0.44.21      ; R710 AP 11
ap.12.mcjd.ca.edovo.com.                IN      A       10.0.44.22      ; R710 AP 12
ap.13.mcjd.ca.edovo.com.                IN      A       10.0.44.23      ; R710 AP 13
ap.14.mcjd.ca.edovo.com.                IN      A       10.0.44.24      ; R710 AP 14
cdn.mcjd.ca.edovo.com.                  IN      A       10.0.44.3       ; Site CDN Server
fw.mcjd.ca.edovo.com.                   IN      A       172.16.1.86     ; Firewall Outside Address
ge.mcjd.ca.edovo.com.                   IN      A       172.16.1.85     ; Router Gi0/0/1
ipmi.mcjd.ca.edovo.com.                 IN      A       10.0.44.7       ; IPMI interface
lan.mcjd.ca.edovo.com.                  IN      A       10.0.44.1       ; Firewall Inside Address
rtr.mcjd.ca.edovo.com.                  IN      A       192.168.254.32  ; Router Loopback0
sw.mdf.mcjd.ca.edovo.com.               IN      A       10.0.44.2       ; MDF Switch
tun.1.mcjd.ca.edovo.com.                IN      A       172.16.0.46     ; Router Tun42
tun.2.mcjd.ca.edovo.com.                IN      A       172.16.8.46     ; Router Tun44
wan.mcjd.ca.edovo.com.                  IN      A       96.86.143.10    ; WAN IP

; Rockingham Jail, VA - A Record
ap.1.mcj.il.edovo.com.                  IN      A       10.0.48.11      ; R710 AP 1
cdn.rhm.va.edovo.com.		  	IN	A	10.0.48.3	; Site CDN Server
ipmi.rhm.va.edovo.com.			IN	A	10.0.48.7	; IPMI interface
fw.rhm.va.edovo.com.                    IN      A       172.17.0.50     ; Firewall Outside Address
ge.rhm.va.edovo.com.                    IN      A       172.17.0.49     ; Router Gi0/0/1
lan.rhm.va.edovo.com.                   IN      A       10.0.48.1       ; Firewall Inside Address
rtr.rhm.va.edovo.com.                   IN      A       192.168.254.22  ; Router Loopback0
tun.1.rhm.va.edovo.com.                 IN      A       172.16.0.50     ; Router Tun42
tun.2.rhm.va.edovo.com.                 IN      A       172.16.8.50     ; Router Tun44
wan.rhm.va.edovo.com.                   IN      A       204.111.172.171 ; WAN IP

; Forsyth County Jail, NC - A Record
cdn.fcj.nc.edovo.com.	 		IN	A	10.0.52.3	; Site CDN Server
fw.fcj.nc.edovo.com.                    IN      A       172.17.0.10     ; Firewall Outside Address
ge.fcj.nc.edovo.com.                    IN      A       172.17.0.9      ; Router Gi0/0/1
ipmi.fcj.nc.edovo.com.                  IN      A       10.0.52.7       ; IPMI interface
lan.fcj.nc.edovo.com.                   IN      A       10.0.52.1	; Firewall Inside Address
rtr.fcj.nc.edovo.com.                   IN      A       192.168.254.23  ; Router Loopback0
wan.fcj.nc.edovo.com.                   IN      A       12.198.32.35    ; WAN IP
tun.1.fcj.nc.edovo.com.                 IN      A       172.16.0.54     ; Router Tun42
tun.2.fcj.nc.edovo.com.                 IN      A       172.16.8.54     ; Router Tun44

; Kane County Jail, IL - A Record
cdn.kcj.il.edovo.com.			IN	A	10.0.56.3	; Site CDN Server
fw.kcj.il.edovo.com.                    IN      A       172.17.0.54     ; Firewall Outside Address
ge.kcj.il.edovo.com.                    IN      A       172.17.0.53     ; Router Gi0/0/1
ipmi.kcj.il.edovo.com.                  IN      A       10.0.56.7       ; IPMI interface
lan.kcj.il.edovo.com.                   IN      A       10.0.56.1       ; Firewall Inside Address
rtr.kcj.il.edovo.com.                   IN      A       192.168.254.24  ; Router Loopback0
tun.1.kcj.il.edovo.com.                 IN      A       172.16.0.58     ; Router Tun42
tun.2.kcj.il.edovo.com.                 IN      A       172.16.8.58     ; Router Tun44
wan.kcj.il.edovo.com.                   IN      A       74.116.24.63    ; WAN IP

; Butts County Jail, GA - A Record
cdn.bucj.ga.edovo.com.                  IN      A       10.0.60.3       ; Site CDN Server
ipmi.bucj.ga.edovo.com.                 IN      A       10.0.60.7       ; IPMI interface
lan.bucj.ga.edovo.com.                  IN      A       10.0.60.1       ; Router Gi0/0/1
fw.bucj.ga.edovo.com.                   IN      A       172.17.0.66     ; Firewall Outside Address
ge.bucj.ga.edovo.com.                   IN      A       172.17.0.65     ; Router Gi0/0/1
rtr.bucj.ga.edovo.com.                  IN      A       192.168.254.25  ; Router Loopback0
tun.1.bucj.ga.edovo.com.                IN      A       172.16.0.62     ; Router Tun42
tun.2.bucj.ga.edovo.com.                IN      A       172.16.8.62     ; Router Tun44
wan.bucj.ga.edovo.com.                  IN      A       96.38.230.179   ; WAN IP

; Lake County Jail, CA - A Record
ap.1.lkcj.ca.edovo.com.                 IN      A       10.0.64.11      ; R710 AP 1
ap.2.lkcj.ca.edovo.com.                 IN      A       10.0.64.12      ; R710 AP 2
cdn.lkcj.ca.edovo.com.		       	IN      A       10.0.64.3       ; Site CDN Server
ipmi.lkcj.ca.edovo.com.			IN	A	10.0.64.7	; IPMI Interface
lan.lkcj.ca.edovo.com.                  IN      A       10.0.64.1       ; Router Inside Address
rtr.lkcj.ca.edovo.com.                  IN      A       192.168.254.26  ; Router Loopback0
tun.1.lkcj.ca.edovo.com.                IN      A       172.16.0.66     ; Router Tun42
tun.2.lkcj.ca.edovo.com.                IN      A       172.16.8.66     ; Router Tun44
wan.lkcj.ca.edovo.com.                  IN      A       12.207.196.236  ; WAN IP

; Lassen County Jail, CA - A Record
ap.1.lcj.ca.edovo.com.                  IN      A       10.0.68.11      ; R710 AP 1
ap.2.lcj.ca.edovo.com.                  IN      A       10.0.68.12      ; R710 AP 2
ap.3.lcj.ca.edovo.com.                  IN      A       10.0.68.13      ; R710 AP 3
ap.4.lcj.ca.edovo.com.                  IN      A       10.0.68.14      ; R710 AP 4
ap.5.lcj.ca.edovo.com.                  IN      A       10.0.68.15      ; R710 AP 5
ap.6.lcj.ca.edovo.com.                  IN      A       10.0.68.16      ; R710 AP 6
cdn.lcj.ca.edovo.com.			IN	A	10.0.68.3	; Site CDN Server
fw.lcj.ca.edovo.com.                    IN      A       172.17.0.74     ; Firewall Outside Address
ge.lcj.ca.edovo.com.                    IN      A       172.17.0.73     ; Router Gi0/0/1
ipmi.lcj.ca.edovo.com.                  IN      A       10.0.68.7       ; IPMI interface
lan.lcj.ca.edovo.com.                   IN      A       10.0.68.1       ; Firewall Inside Address
rtr.lcj.ca.edovo.com.                   IN      A       192.168.254.27  ; Router Loopback0
sw.mdf.lcj.ca.edovo.com.                IN      A       10.0.68.2       ; MDF Switch
tun.1.lcj.ca.edovo.com.                 IN      A       172.16.0.70     ; Router Tun42
tun.2.lcj.ca.edovo.com.                 IN      A       172.16.8.70     ; Router Tun44
wan.lcj.ca.edovo.com.                   IN      A       24.49.89.5      ; WAN IP

; Dorchester County Jail, SC - A Record 
cdn.dcj.sc.edovo.com.			IN	A	10.0.72.3       ; Site CDN Server
fw.dcj.sc.edovo.com.                   	IN      A       172.17.0.130    ; Firewall Outside Address
ge.dcj.sc.edovo.com.                   	IN      A       172.17.0.129    ; Router Gi0/0/1
ipmi.dcj.sc.edovo.com.                 	IN      A       10.0.72.7       ; IPMI interface
lan.dcj.sc.edovo.com.                  	IN      A       10.0.72.1       ; Firewall Inside Address
rtr.dcj.sc.edovo.com.                  	IN      A       192.168.254.28  ; Router Loopback0
wan.dcj.sc.edovo.com.                  	IN      A       74.118.241.156  ; WAN IP
tun.1.dcj.sc.edovo.com.                	IN      A       172.16.0.74     ; Router Tun42
tun.2.dcj.sc.edovo.com.                	IN      A       172.16.8.74     ; Router Tun44

; Granville County Jail, NC - A Record
cdn.grcj.nc.edovo.com.			IN	A	10.0.76.3	; Site CDN Server
ipmi.grcj.nc.edovo.com.			IN	A	10.0.76.7	; IPMI interface
fw.grcj.nc.edovo.com.                   IN      A       172.17.0.126    ; Firewall Outside Address
ge.grcj.nc.edovo.com.                   IN      A       172.17.0.125    ; Router Gi0/0/1
lan.grcj.nc.edovo.com.                  IN      A       10.0.76.1	; Firewall Inside Address
rtr.grcj.nc.edovo.com.                  IN      A       192.168.254.29  ; Router Loopback0
tun.1.grcj.nc.edovo.com.                IN      A       172.16.0.78     ; Router Tun42
tun.2.grcj.nc.edovo.com.                IN      A       172.16.8.78     ; Router Tun44
wan.grcj.nc.edovo.com.                  IN      A       173.95.49.251   ; WAN IP

; Ulster County Jail, NY - A Record
ap.1.ucj.ny.edovo.com.                  IN      A       10.0.80.11      ; R710 AP 1
ap.2.ucj.ny.edovo.com.                  IN      A       10.0.80.12      ; R710 AP 2
ap.3.ucj.ny.edovo.com.                  IN      A       10.0.80.13      ; R710 AP 3
ap.4.ucj.ny.edovo.com.                  IN      A       10.0.80.14      ; R710 AP 4
ap.5.ucj.ny.edovo.com.                  IN      A       10.0.80.15      ; R710 AP 5
ap.6.ucj.ny.edovo.com.                  IN      A       10.0.80.16      ; R710 AP 6
ap.7.ucj.ny.edovo.com.                  IN      A       10.0.80.17      ; R710 AP 7
ap.8.ucj.ny.edovo.com.                  IN      A       10.0.80.18      ; R710 AP 8
ap.9.ucj.ny.edovo.com.                  IN      A       10.0.80.19      ; R710 AP 9
ap.10.ucj.ny.edovo.com.                 IN      A       10.0.80.20      ; R710 AP 10
cdn.ucj.ny.edovo.com.			IN	A	10.0.80.3	; Site CDN Server
ipmi.ucj.ny.edovo.com.                  IN      A       10.0.80.7       ; IPMI interface
fw.ucj.ny.edovo.com.			IN	A	172.17.0.78	; Firewall Outside Address
ge.ucj.ny.edovo.com.			IN	A	172.17.0.77	; Router Gi0/0/1
lan.ucj.ny.edovo.com.                   IN      A       10.0.80.1       ; Firewall Inside Address
rtr.ucj.ny.edovo.com.                   IN      A       192.168.254.30  ; Router Loopback0
tun.1.ucj.ny.edovo.com.                 IN      A       172.16.0.82     ; Router Tun42
tun.2.ucj.ny.edovo.com.                 IN      A       172.16.8.82     ; Router Tun44
wan.ucj.ny.edovo.com.                   IN      A       24.103.83.230   ; WAN IP

; San Luis Obisbo, CA - A Record
cdn.slo.ca.edovo.com.			IN	A	10.0.84.3	; Site CDN Server
fw.slo.ca.edovo.com.			IN	A	172.17.0.82	; Firewall Outside Address
ge.slo.ca.edovo.com.			IN	A	172.17.0.81	; Router Gi0/0/1
ipmi.slo.ca.edovo.com.			IN	A	10.0.84.7	; IPMI Interface 
lan.slo.ca.edovo.com.             	IN      A       10.0.84.1       ; Firewall Inside Address
rtr.slo.ca.edovo.com.             	IN      A       192.168.254.31  ; Router Loopback0
tun.1.slo.ca.edovo.com.           	IN      A       172.16.0.86     ; Router Tun42
tun.2.slo.ca.edovo.com.           	IN      A       172.16.8.86     ; Router Tun44
wan.slo.ca.edovo.com.             	IN      A       198.188.248.99  ; WAN IP
ap.1.slo.ca.edovo.com.			IN	A	10.0.84.11	; Ruckus AP 1
ap.2.slo.ca.edovo.com.			IN	A	10.0.84.12	; Ruckus AP 2
ap.3.slo.ca.edovo.com.			IN	A	10.0.84.13	; Ruckus AP 3
ap.4.slo.ca.edovo.com.			IN	A	10.0.84.14	; Ruckus AP 4
ap.5.slo.ca.edovo.com.			IN	A	10.0.84.15	; Ruckus AP 5
ap.6.slo.ca.edovo.com.			IN	A	10.0.84.16	; Ruckus AP 6

; Davis County Jail, UT - A Record
ap.1.dcj.ut.edovo.com.                  IN      A       10.0.88.11      ; R710 AP 1
ap.2.dcj.ut.edovo.com.                  IN      A       10.0.88.12      ; R710 AP 2
ap.3.dcj.ut.edovo.com.                  IN      A       10.0.88.13      ; R710 AP 3
ap.4.dcj.ut.edovo.com.                  IN      A       10.0.88.14      ; R710 AP 4
ap.5.dcj.ut.edovo.com.                  IN      A       10.0.88.15      ; R710 AP 5
ap.6.dcj.ut.edovo.com.                  IN      A       10.0.88.16      ; R710 AP 6
ap.7.dcj.ut.edovo.com.                  IN      A       10.0.88.17      ; R710 AP 7
ap.8.dcj.ut.edovo.com.                  IN      A       10.0.88.18      ; R710 AP 8
ap.9.dcj.ut.edovo.com.                  IN      A       10.0.88.19      ; R710 AP 9
ap.10.dcj.ut.edovo.com.                 IN      A       10.0.88.20      ; R710 AP 10
ap.11.dcj.ut.edovo.com.                 IN      A       10.0.88.21      ; R710 AP 11
ap.12.dcj.ut.edovo.com.                 IN      A       10.0.88.22      ; R710 AP 12
ap.13.dcj.ut.edovo.com.			IN	A	10.0.88.23	; R710 AP 13
ap.14.dcj.ut.edovo.com.                 IN      A       10.0.88.24      ; R710 AP 14
ap.15.dcj.ut.edovo.com.                 IN      A       10.0.88.25      ; R710 AP 15
cdn.dcj.ut.edovo.com.			IN	A	10.0.88.3	; Site CDN Server
fw.dcj.ut.edovo.com.                    IN      A       172.17.0.90     ; Firewall Outside Address
ge.dcj.ut.edovo.com.                    IN      A       172.17.0.89     ; Router Gi0/0/1
ipmi.dcj.ut.edovo.com.			IN	A	10.0.88.7	; IPMI Interface
lan.dcj.ut.edovo.com.                   IN      A       10.0.88.1       ; Firewall Inside Address
rtr.dcj.ut.edovo.com.                   IN      A       192.168.254.33  ; Router Loopback0
tun.1.dcj.ut.edovo.com.                 IN      A       172.16.0.90     ; Router Tun42
tun.2.dcj.ut.edovo.com.                 IN      A       172.16.8.90     ; Router Tun44
wan.dcj.ut.edovo.com.                   IN      A       198.233.135.43  ; WAN IP

; Steuben County Jail, IN - A Record
ap.1.sbcj.in.edovo.com.                 IN      A       10.0.92.11      ; Ruckus AP 1
ap.2.sbcj.in.edovo.com.                 IN      A       10.0.92.12      ; Ruckus AP 2
ap.3.sbcj.in.edovo.com.                 IN      A       10.0.92.13      ; Ruckus AP 3
ap.4.sbcj.in.edovo.com.                 IN      A       10.0.92.14      ; Ruckus AP 4
cdn.sbcj.in.edovo.com.			IN	A	10.0.92.3	; Site CDN Server
ipmi.sbcj.in.edovo.com.			IN	A	10.0.92.7	; Server IPMI interface
fw.sbcj.in.edovo.com.                   IN      A       172.17.0.94     ; Firewall Outside Address
ge.sbcj.in.edovo.com.                   IN      A       172.17.0.93     ; Router Gi0/0/1
lan.sbcj.in.edovo.com.			IN	A	10.0.92.1       ; Firewall Inside Address
rtr.sbcj.in.edovo.com.                  IN      A       192.168.254.34  ; Router Loopback0
sw.1.sbcj.in.edovo.com.			IN	A	10.0.92.2       ; MDF Switch
tun.1.sbcj.in.edovo.com.		IN	A	172.16.0.94     ; Router Tun42
tun.2.sbcj.in.edovo.com.                IN      A       172.16.8.94     ; Router Tun44
wan.sbcj.in.edovo.com.                  IN      A       104.201.108.85  ; WAN IP


; Christian County Jail, MO - A Record
ap.1.ccj.mo.edovo.com.                  IN      A       10.0.96.11      ; R710 AP 1
ap.2.ccj.mo.edovo.com.                  IN      A       10.0.96.12      ; R710 AP 2
ap.3.ccj.mo.edovo.com.                  IN      A       10.0.96.13      ; R710 AP 3
ap.4.ccj.mo.edovo.com.                  IN      A       10.0.96.14      ; R710 AP 4
cdn.ccj.mo.edovo.com.			IN	A	10.0.96.3	; Site CDN Server
fw.ccj.mo.edovo.com.                    IN      A       172.17.0.98     ; Firewall Outside Address
ge.ccj.mo.edovo.com.                    IN      A       172.17.0.97     ; Router Gi0/0/1
ipmi.ccj.mo.edovo.com.			IN	A	10.0.96.7	; IPMI Interface
lan.ccj.mo.edovo.com.                   IN      A       10.0.96.1       ; Firewall Inside Address
rtr.ccj.mo.edovo.com.                   IN      A       192.168.254.35  ; Router Loopback0
tun.1.ccj.mo.edovo.com.                 IN      A       172.16.0.98     ; Router Tun42
tun.2.ccj.mo.edovo.com.                 IN      A       172.16.8.98     ; Router Tun44
wan.ccj.mo.edovo.com.                   IN      A       209.33.12.20    ; WAN IP

; Sacamento County Main Jail, CA - A Record
cdn.scmj.ca.edovo.com.			IN	A	10.0.100.3	; Site CDN Server
ipmi.scmj.ca.edovo.com.			IN	A	10.0.100.7	; CDN IPMI
ap.1.scmj.ca.edovo.com.			IN	A	10.0.100.11	;  R710 AP 1
ap.2.scmj.ca.edovo.com.                 IN      A       10.0.100.12     ;  R710 AP 2
ap.3.scmj.ca.edovo.com.                 IN      A       10.0.100.13     ;  R710 AP 3
ap.4.scmj.ca.edovo.com.                 IN      A       10.0.100.14     ;  R710 AP 4
ap.5.scmj.ca.edovo.com.                 IN      A       10.0.100.15     ;  R710 AP 5
ap.6.scmj.ca.edovo.com.                 IN      A       10.0.100.16     ;  R710 AP 6
ap.7.scmj.ca.edovo.com.                 IN      A       10.0.100.17     ;  R710 AP 7
ap.8.scmj.ca.edovo.com.                 IN      A       10.0.100.18     ;  R710 AP 8
ap.9.scmj.ca.edovo.com.                 IN      A       10.0.100.19     ;  R710 AP 9
ap.10.scmj.ca.edovo.com.                IN      A       10.0.100.20     ;  R710 AP 10
ap.11.scmj.ca.edovo.com.                IN      A       10.0.100.21     ;  R710 AP 11
ap.12.scmj.ca.edovo.com.                IN      A       10.0.100.22     ;  R710 AP 12
ap.13.scmj.ca.edovo.com.                IN      A       10.0.100.23     ;  R710 AP 13
ap.14.scmj.ca.edovo.com.                IN      A       10.0.100.24     ;  R710 AP 14
ap.15.scmj.ca.edovo.com.                IN      A       10.0.100.25     ;  R710 AP 15
ap.16.scmj.ca.edovo.com.     	        IN      A       10.0.100.26     ;  R710 AP 16
ap.17.scmj.ca.edovo.com.                IN      A       10.0.100.27     ;  R710 AP 17
ap.18.scmj.ca.edovo.com.                IN      A       10.0.100.28     ;  R710 AP 18
ap.19.scmj.ca.edovo.com.                IN      A       10.0.100.29     ;  R710 AP 19
ap.20.scmj.ca.edovo.com.                IN      A       10.0.100.30     ;  R710 AP 20
ap.21.scmj.ca.edovo.com.                IN      A       10.0.100.31     ;  R710 AP 21
ap.22.scmj.ca.edovo.com.                IN      A       10.0.100.32     ;  R710 AP 22
ap.23.scmj.ca.edovo.com.                IN      A       10.0.100.33     ;  R710 AP 23
ap.24.scmj.ca.edovo.com.                IN      A       10.0.100.34     ;  R710 AP 24
ap.25.scmj.ca.edovo.com.                IN      A       10.0.100.35     ;  R710 AP 25
ap.26.scmj.ca.edovo.com.                IN      A       10.0.100.36     ;  R710 AP 26
ap.27.scmj.ca.edovo.com.                IN      A       10.0.100.37     ;  R710 AP 27
ap.28.scmj.ca.edovo.com.                IN      A       10.0.100.38     ;  R710 AP 28
ap.29.scmj.ca.edovo.com.                IN      A       10.0.100.39     ;  R710 AP 29
ap.30.scmj.ca.edovo.com.                IN      A       10.0.100.40     ;  R710 AP 30
ap.31.scmj.ca.edovo.com.                IN      A       10.0.100.41     ;  R710 AP 31
ap.32.scmj.ca.edovo.com.                IN      A       10.0.100.42     ;  R710 AP 32
ap.33.scmj.ca.edovo.com.                IN      A       10.0.100.43     ;  R710 AP 33
ap.34.scmj.ca.edovo.com.                IN      A       10.0.100.44     ;  R710 AP 34
ap.35.scmj.ca.edovo.com.                IN      A       10.0.100.45     ;  R710 AP 35
ap.36.scmj.ca.edovo.com.                IN      A       10.0.100.46     ;  R710 AP 36
ap.37.scmj.ca.edovo.com.                IN      A       10.0.100.47     ;  R710 AP 37
ap.38.scmj.ca.edovo.com.                IN      A       10.0.100.48     ;  R710 AP 38
ap.39.scmj.ca.edovo.com.                IN      A       10.0.100.49     ;  R710 AP 39
fw.scmj.ca.edovo.com.                   IN      A       172.17.0.102    ; Firewall Outside Address
ge.scmj.ca.edovo.com.                   IN      A       172.17.0.101    ; Router Gi0/0/1
ipmi.scmj.ca.edovo.com.                 IN      A       10.0.100.7      ; IPMI interface
lan.scmj.ca.edovo.com.                  IN      A       10.0.100.1      ; Firewall Inside Address
rtr.scmj.ca.edovo.com.                  IN      A       192.168.254.36  ; Router Loopback0
tun.1.scmj.ca.edovo.com.                IN      A       172.16.0.102    ; Router Tun42
tun.2.scmj.ca.edovo.com.                IN      A       172.16.8.102    ; Router Tun44
wan.scmj.ca.edovo.com.                  IN      A       12.183.162.155  ; WAN IP

; Woodford County, IL - A Record
ap.1.wcj.il.edovo.com.                  IN      A       10.0.104.11     ; R710 AP 1
ap.2.wcj.il.edovo.com.                  IN      A       10.0.104.12     ; R710 AP 2
cdn.wcj.il.edovo.com.			IN	A	10.0.104.3	; Site CDN Server
ipmi.wcj.il.edovo.com.                  IN      A       10.0.104.7      ; IPMI interface
lan.wcj.il.edovo.com.                   IN      A       10.0.104.1      ; Firewall Inside Address
rtr.wcj.il.edovo.com.                   IN      A       192.168.254.37  ; Router Loopback0
sw.mdf.wcj.il.edovo.com.                IN      A       10.0.104.2      ; MDF Switch 
tun.1.wcj.il.edovo.com.                 IN      A       172.16.0.106    ; Router Tun42
tun.2.wcj.il.edovo.com.			IN	A	172.16.8.106	; Router Tun44
wan.wcj.il.edovo.com.			IN	A	107.152.3.101	; WAN IP

; Middlesex County, MA - A Record
ap.1.mcj.ma.edovo.com.                  IN      A       10.0.108.21     ; Dorm 1 R710 AP
ap.2.mcj.ma.edovo.com.                  IN      A       10.0.108.22     ; Dorm 2 R710 AP
ap.3.mcj.ma.edovo.com.                  IN      A       10.0.108.23	; AP 3 
ap.4.mcj.ma.edovo.com.                  IN      A       10.0.108.24	; AP 4	
ap.5.mcj.ma.edovo.com.                  IN      A       10.0.108.25	; AP 5
ap.6.mcj.ma.edovo.com.                  IN      A       10.0.108.26	; AP 6
ap.7.mcj.ma.edovo.com.                  IN      A       10.0.108.27	; AP 7
ap.8.mcj.ma.edovo.com.                  IN      A       10.0.108.28     ; AP 8
ap.9.mcj.ma.edovo.com.                  IN      A       10.0.108.29     ; AP 9
ap.10.mcj.ma.edovo.com.                 IN      A       10.0.108.30     ; AP 10
ap.11.mcj.ma.edovo.com.                 IN      A       10.0.108.31     ; AP 11
ap.12.mcj.ma.edovo.com.                 IN      A       10.0.108.32     ; AP 12
ap.13.mcj.ma.edovo.com.                 IN      A       10.0.108.33     ; AP 13
ap.14.mcj.ma.edovo.com.                 IN      A       10.0.108.34     ; AP 14
fw.mcj.ma.edovo.com.                    IN      A       172.16.1.110    ; Firewall Outside Address 
ge.mcj.ma.edovo.com.                    IN      A       172.16.1.109    ; Router Gi0/0/1
cdn.mcj.ma.edovo.com.			IN	A	10.0.108.3	; Site CDN Server
ipmi.mcj.ma.edovo.com.                  IN      A       10.0.108.7      ; IPMI interface
lan.mcj.ma.edovo.com.			IN	A	10.0.108.1	; Firewall Inside Address
rtr.mcj.ma.edovo.com.                   IN      A       192.168.254.38  ; Router Loopback0
sw.1.mcj.ma.edovo.com.                  IN      A       10.0.108.11     ; MPOE Switch (Admin MDF)
sw.2.mcj.ma.edovo.com.                  IN      A       10.0.108.12     ; MDF Switch(Extended Demarcation)
sw.3.mcj.ma.edovo.com.                  IN      A       10.0.108.13	; Pod B IDF
sw.4.mcj.ma.edovo.com.                  IN      A       10.0.108.14     ; Pod F IDF
tun.1.mcj.ma.edovo.com.                 IN      A       172.16.0.110    ; Router Tun42
tun.2.mcj.ma.edovo.com.                 IN      A       172.16.8.110    ; Router Tun44
wan.mcj.ma.edovo.com.			IN	A	96.67.3.25	; Comcast WAN IP DOCSIS Cable Modem

; Hall County, GA - A Record
ap.1.hcj.ga.edovo.com.                  IN      A       10.0.112.11     ; R710 AP 1
ap.2.hcj.ga.edovo.com.                  IN      A       10.0.112.12     ; R710 AP 2
cdn.hcj.ga.edovo.com.			IN	A	10.0.112.3	; Site CDN Server
fw.hcj.ga.edovo.com.                    IN      A       172.17.0.114    ; Firewall Outside Address 
ge.hcj.ga.edovo.com.                    IN      A       172.17.0.113    ; Router Gi0/0/1
ipmi.hcj.ga.edovo.com.                  IN      A       10.0.112.7      ; IPMI interface
lan.hcj.ga.edovo.com.                   IN      A       10.0.112.1      ; Firewall Inside Address
rtr.hcj.ga.edovo.com.                   IN      A       192.168.254.39  ; Router Loopback0
tun.1.hcj.ga.edovo.com.                 IN      A       172.16.0.114    ; Router Tun42
tun.2.hcj.ga.edovo.com.			IN	A	172.16.8.114	; Router Tun44
wan.hcj.ga.edovo.com.                   IN      A       40.135.51.202   ; WAN IP

; North Lawndale ATC, IL - A Record
ap.1.nlc.il.edovo.com.                  IN      A       10.0.116.11     ; Dorm 1 R710 AP
ap.2.nlc.il.edovo.com.                  IN      A       10.0.116.12     ; Dorm 2 R710 AP
cdn.nlc.il.edovo.com.                   IN      A       10.0.116.3      ; Site CDN Server
fw.nlc.il.edovo.com.                    IN      A       172.16.1.118    ; Firewall Outside Address 
ge.nlc.il.edovo.com.                    IN      A       172.16.1.117    ; Router Gi0/0/1
ipmi.nlc.il.edovo.com.                  IN      A       10.0.116.7      ; IPMI interface
lan.nlc.il.edovo.com.                   IN      A       10.0.116.1      ; Firewall Inside Address
rtr.nlc.il.edovo.com.                   IN      A       10.252.0.1      ; Router Loopback0
sw1.nlc.il.edovo.com.                   IN      A       10.0.116.4      ; MDF Switch
tun.1.nlc.il.edovo.com.                 IN      A       172.16.0.118    ; Router Tun42
tun.2.nlc.il.edovo.com.                 IN      A       172.16.8.118    ; Router Tun44
wan.nlc.il.edovo.com.                   IN      A       12.18.123.19    ; AT&T WAN IP 

; Mono County Jail, CA - A Record   
ap.1.mcj.ca.edovo.com.                  IN      A       10.0.120.11     ; R710 AP 1
ap.2.mcj.ca.edovo.com.                  IN      A       10.0.120.12     ; R710 AP 2
ap.3.mcj.ca.edovo.com.                  IN      A       10.0.120.13     ; R710 AP 3
ap.4.mcj.ca.edovo.com.                  IN      A       10.0.120.14     ; R710 AP 4
cdn.mcj.ca.edovo.com.			IN	A	10.0.120.3	; Site CDN Server
fw.mcj.ca.edovo.com.                    IN      A       172.17.0.122    ; Firewall Outside Address 
ge.mcj.ca.edovo.com.                    IN      A       172.17.0.121    ; Router Gi0/0/1
ipmi.mcj.ca.edovo.com.                  IN      A       10.0.120.7      ; IPMI interface
lan.mcj.ca.edovo.com.                   IN      A       10.0.120.1      ; Firewall Inside Address
rtr.mcj.ca.edovo.com.                   IN      A       192.168.254.41  ; Router Loopback0
sw.1.mcj.ca.edovo.com.                  IN      A       10.0.120.2      ; MDF SWITCH 
tun.1.mcj.ca.edovo.com.                 IN      A       172.16.0.122    ; Router Tun42 
tun.2.mcj.ca.edovo.com.                 IN      A       172.16.8.122    ; Router Tun44
wan.mcj.ca.edovo.com.                   IN      A       162.252.90.138  ; WAN IP

; Mitchell County Jail, GA - A Record  
ap.1.mcj.ga.edovo.com.                  IN      A       10.0.124.11     ; R710 AP 1
ap.2.mcj.ga.edovo.com.                  IN      A       10.0.124.12     ; R710 AP 2
ap.3.mcj.ga.edovo.com.                  IN      A       10.0.124.13     ; R710 AP 3 
cdn.mcj.ga.edovo.com.                   IN      A       10.0.124.3      ; Site CDN Server
fw.mcj.ga.edovo.com.                    IN      A       172.17.0.138    ; Firewall Outside Address 
ge.mcj.ga.edovo.com.                    IN      A       172.17.0.137    ; Router Gi0/0/1
ipmi.mcj.ga.edovo.com.                  IN      A       10.0.124.7      ; IPMI interface
lan.mcj.ga.edovo.com.                   IN      A       10.0.124.1      ; Firewall Inside Address
rtr.mcj.ga.edovo.com.                   IN      A       192.168.254.42  ; Router Loopback0
tun.1.mcj.ga.edovo.com.                 IN      A       172.16.0.126    ; Router Tun42 
tun.2.mcj.ga.edovo.com.                 IN      A       172.16.8.126    ; Router Tun44
wan.mcj.ga.edovo.com.			IN	A	12.52.58.10 	; WAN IP

; Guilford County, NC - A Record
cdn.gcj.nc.edovo.com.                   IN      A       10.0.128.3      ; Site CDN Server 
fw.gcj.nc.edovo.com.                    IN      A       172.17.0.134    ; Firewall Outside Address 
ge.gcj.nc.edovo.com.                    IN      A       172.17.0.133    ; Router Gi0/0/1
ipmi.gcj.nc.edovo.com.                  IN      A       10.0.128.7      ; IPMI interface
lan.gcj.nc.edovo.com.                   IN      A       10.0.128.1      ; Firewall Inside Address
rtr.gcj.nc.edovo.com.			IN	A	192.168.254.43  ; Router Loopback0
tun.1.gcj.nc.edovo.com.			IN	A	172.16.0.130	; Router Tun42
tun.2.gcj.nc.edovo.com.			IN	A	172.16.8.130	; Router Tun44
wan.gcj.nc.edovo.com.			IN	A	12.198.33.78	; WAN IP

; South Lake Tahoe Jail, CA - A Record
ap.1.sltj.ca.edovo.com.			IN	A	10.0.132.11	; Ruckus AP 1
ap.2.sltj.ca.edovo.com.			IN	A	10.0.132.12	; Ruckus AP 2
cdn.sltj.ca.edovo.com.                  IN      A       10.0.132.3      ; Site CDN Server
zd.sltj.ca.edovo.com.			IN	A	10.0.132.10	; Site Zone Director
fw.sltj.ca.edovo.com.                   IN      A       172.17.0.146    ; Site firewall
ge.sltj.ca.edovo.com.		        IN	A	172.17.0.145	; Router Gi0/0/1
ipmi.sltj.ca.edovo.com.			IN	A	10.0.132.7	; IPMI interface
lan.sltj.ca.edovo.com.                  IN      A       10.0.132.1      ; Firewall Inside Address
rtr.sltj.ca.edovo.com.			IN	A	192.168.254.44	; Router Loopback0
sw.mdf.sltj.ca.edovo.com.		IN	A	10.0.132.2	; MDF Switch
tun.1.sltj.ca.edovo.com. 		IN	A	172.16.0.134	; Router Tun42
tun.2.sltj.ca.edovo.com.                IN      A       172.16.8.134    ; Router Tun44
wan.sltj.ca.edovo.com.			IN	A	68.190.186.108	; WAN IP

; Ramsey County Jail, MN - A Record 
ap.1.rcj.mn.edovo.com.			IN	A	10.0.136.11	; R710 AP 1
ap.2.rcj.mn.edovo.com.                  IN      A       10.0.136.12     ; R710 AP 2
cdn.rcj.mn.edovo.com.			IN	A	10.0.136.3      ; Site CDN Server
fw.rcj.mn.edovo.com.                    IN      A       172.16.1.150    ; Firewall Outside Address
ge.rcj.mn.edovo.com.			IN	A	172.16.1.149	; Router Gi0/0/1
ipmi.rcj.mn.edovo.com.			IN	A	10.0.136.7	; IPMI interface
lan.rcj.mn.edovo.com.                   IN      A       10.0.136.1      ; Firewall Inside Address
rtr.rcj.mn.edovo.com.			IN      A       192.168.254.45	; Router Loopback0
sw.mdf.rcj.mn.edovo.com.		IN	A	10.0.136.2	; MDF SWITCH 
tun.1.rcj.mn.edovo.com.			IN      A       172.16.0.138	; Router Tun42  
tun.2.rcj.mn.edovo.com.                 IN      A       172.16.8.138    ; Router Tun44
wan.rcj.mn.edovo.com.			IN	A	96.67.178.25	; WAN IP

; Etowah County Jail, AL - A Record 
ap.1.ecj.al.edovo.com.                  IN      A       10.0.140.11     ; Ruckus AP 1 
ap.2.ecj.al.edovo.com.                  IN      A       10.0.140.12     ; Ruckus AP 2
ap.3.ecj.al.edovo.com.                  IN      A       10.0.140.13     ; Ruckus AP 3
ap.4.ecj.al.edovo.com.                  IN      A       10.0.140.14     ; Ruckus AP 4
ap.5.ecj.al.edovo.com.                  IN      A       10.0.140.15     ; Ruckus AP 5
ap.6.ecj.al.edovo.com.                  IN      A       10.0.140.16     ; Ruckus AP 6
ap.7.ecj.al.edovo.com.                  IN      A       10.0.140.17     ; Ruckus AP 7
ap.8.ecj.al.edovo.com.                  IN      A       10.0.140.18     ; Ruckus AP 8
ap.9.ecj.al.edovo.com.                  IN      A       10.0.140.19     ; Ruckus AP 9
ap.10.ecj.al.edovo.com.                 IN      A       10.0.140.20     ; Ruckus AP 10
ap.11.ecj.al.edovo.com.                 IN      A       10.0.140.21     ; Ruckus AP 11
cdn.ecj.al.edovo.com.                   IN      A       10.0.140.3      ; Site CDN Server
fw.ecj.al.edovo.com.                    IN      A       172.17.0.154    ; Firewall Outside Address
ge.ecj.al.edovo.com.                    IN      A       172.17.0.153    ; Router Gi0/0/1
ipmi.ecj.al.edovo.com.                  IN      A       10.0.140.7      ; IPMI interface
lan.ecj.al.edovo.com.                   IN      A       10.0.140.1      ; Firewall Inside Address
rtr.ecj.al.edovo.com.                   IN      A       192.168.254.46  ; Router Loopback0 
tun.1.ecj.al.edovo.com.                 IN      A       172.16.0.142    ; Router Tun42
tun.2.ecj.al.edovo.com.                 IN      A       172.16.8.142    ; Router Tun44
sw.mdf.ecj.al.edovo.com.		IN	A	10.0.140.2	; MDF Switch 
sw.1.ecj.al.edovo.com.			IN	A	10.0.140.4	; IDF Switch 1 
sw.2.ecj.al.edovo.com.			IN	A	10.0.140.5	; IDF Switch 2
wan.ecj.al.edovo.com.                   IN      A       96.87.26.173    ; WAN IP

; Baraga Correctional Facility, MI - A Record 
ap.1.bcf.mi.edovo.com.                  IN      A       10.0.144.11     ; Ruckus AP 1
ap.2.bcf.mi.edovo.com.                  IN      A       10.0.144.12     ; Ruckus AP 2
ap.3.bcf.mi.edovo.com.                  IN      A       10.0.144.13     ; Ruckus AP 3
ap.4.bcf.mi.edovo.com.                  IN      A       10.0.144.14     ; Ruckus AP 4
ap.5.bcf.mi.edovo.com.                  IN      A       10.0.144.15     ; Ruckus AP 5
ap.6.bcf.mi.edovo.com.                  IN      A       10.0.144.16     ; Ruckus AP 6
ap.7.bcf.mi.edovo.com.                  IN      A       10.0.144.17     ; Ruckus AP 7
ap.8.bcf.mi.edovo.com.                  IN      A       10.0.144.18     ; Ruckus AP 8
ap.9.bcf.mi.edovo.com.                  IN      A       10.0.144.19     ; Ruckus AP 9
ap.10.bcf.mi.edovo.com.                 IN      A       10.0.144.20     ; Ruckus AP 10
ap.11.bcf.mi.edovo.com.                 IN      A       10.0.144.21     ; Ruckus AP 11
ap.12.bcf.mi.edovo.com.                 IN      A       10.0.144.22     ; Ruckus AP 12
ap.13.bcf.mi.edovo.com.                 IN      A       10.0.144.23     ; Ruckus AP 13
ap.14.bcf.mi.edovo.com.                 IN      A       10.0.144.24     ; Ruckus AP 14
ap.15.bcf.mi.edovo.com.                 IN      A       10.0.144.25     ; Ruckus AP 15
ap.16.bcf.mi.edovo.com.                 IN      A       10.0.144.26     ; Ruckus AP 16
ap.17.bcf.mi.edovo.com.                 IN      A       10.0.144.27     ; Ruckus AP 17
ap.18.bcf.mi.edovo.com.                 IN      A       10.0.144.28     ; Ruckus AP 18
ap.19.bcf.mi.edovo.com.                 IN      A       10.0.144.29     ; Ruckus AP 19
ap.20.bcf.mi.edovo.com.                 IN      A       10.0.144.30     ; Ruckus AP 20
ap.21.bcf.mi.edovo.com.                 IN      A       10.0.144.31     ; Ruckus AP 21
ap.22.bcf.mi.edovo.com.                 IN      A       10.0.144.32     ; Ruckus AP 22
ap.23.bcf.mi.edovo.com.                 IN      A       10.0.144.33     ; Ruckus AP 23
ap.24.bcf.mi.edovo.com.                 IN      A       10.0.144.34     ; Ruckus AP 24
ap.25.bcf.mi.edovo.com.                 IN      A       10.0.144.35     ; Ruckus AP 25
ap.26.bcf.mi.edovo.com.                 IN      A       10.0.144.36     ; Ruckus AP 26
ap.27.bcf.mi.edovo.com.                 IN      A       10.0.144.37     ; Ruckus AP 27
ap.28.bcf.mi.edovo.com.                 IN      A       10.0.144.38     ; Ruckus AP 28
ap.29.bcf.mi.edovo.com.                 IN      A       10.0.144.39     ; Ruckus AP 29
ap.30.bcf.mi.edovo.com.                 IN      A       10.0.144.40     ; Ruckus AP 30
ap.31.bcf.mi.edovo.com.                 IN      A       10.0.144.41     ; Ruckus AP 31
ap.32.bcf.mi.edovo.com.                 IN      A       10.0.144.42     ; Ruckus AP 32
cdn.bcf.mi.edovo.com.                   IN      A       10.0.144.3      ; Site CDN Server
fw.bcf.mi.edovo.com.                    IN      A       172.17.0.158    ; Site firewall 
ge.bcf.mi.edovo.com.                    IN      A       172.17.0.157    ; Router Gi0/0/1
ipmi.bcf.mi.edovo.com.                  IN      A       10.0.144.7      ; IPMI interface
lan.bcf.mi.edovo.com.                   IN      A       10.0.144.1      ; Firewall Inside Address
rtr.bcf.mi.edovo.com.                   IN      A       192.168.254.47  ; Router Loopback0 
sw.mdf.bcf.mi.edovo.com.		IN	A	10.0.144.2	; MDF Switch
sw.1.bcf.mi.edovo.com.			IN	A	10.0.144.4	; IDF Switch 1
sw.2.bcf.mi.edovo.com.			IN	A	10.0.144.5	; IDF Switch 2
sw.3.bcf.mi.edovo.com.			IN	A	10.0.144.6	; IDF Switch 3 
sw.4.bcf.mi.edovo.com.			IN	A	10.0.144.8	; IDF Switch 4
tun.1.bcf.mi.edovo.com.                 IN      A       172.16.0.146    ; Router Tun42
tun.2.bcf.mi.edovo.com.                 IN      A       172.16.8.146    ; Router Tun44
wan.bcf.mi.edovo.com.                   IN      A       206.51.125.226  ; WAN IP

; Wyandotte County Jail, KS - A Record 
ap.1.wcj.ks.edovo.com.	                IN      A       10.0.148.11     ; Ruckus AP 1 
ap.2.wcj.ks.edovo.com.                  IN      A       10.0.148.12     ; Ruckus AP 2 
ap.3.wcj.ks.edovo.com.                  IN      A       10.0.148.13     ; Ruckus AP 3
ap.4.wcj.ks.edovo.com.                  IN      A       10.0.148.14     ; Ruckus AP 4 
ap.5.wcj.ks.edovo.com.                  IN      A       10.0.148.15     ; Ruckus AP 5 
ap.6.wcj.ks.edovo.com.                  IN      A       10.0.148.16     ; Ruckus AP 6 
ap.7.wcj.ks.edovo.com.                  IN      A       10.0.148.17     ; Ruckus AP 7 
ap.8.wcj.ks.edovo.com.                  IN      A       10.0.148.18     ; Ruckus AP 8 
ap.9.wcj.ks.edovo.com.                  IN      A       10.0.148.19     ; Ruckus AP 9 
ap.10.wcj.ks.edovo.com.                 IN      A       10.0.148.20     ; Ruckus AP 10 
ap.11.wcj.ks.edovo.com.                 IN      A       10.0.148.21     ; Ruckus AP 11
ap.12.wcj.ks.edovo.com.                 IN      A       10.0.148.22     ; Ruckus AP 12
ap.13.wcj.ks.edovo.com.                 IN      A       10.0.148.23     ; Ruckus AP 12
ap.14.wcj.ks.edovo.com.                 IN      A       10.0.148.24     ; Ruckus AP 14
cdn.wcj.ks.edovo.com.                   IN      A       10.0.148.3      ; Site CDN Server
fw.wcj.ks.edovo.com.                    IN      A       172.17.0.162    ; Firewall Outside Address
ge.wcj.ks.edovo.com.                    IN      A       172.17.0.161    ; Router Gi0/0/1
ipmi.wcj.ks.edovo.com.                  IN      A       10.0.148.7      ; IPMI Interface
lan.wcj.ks.edovo.com.                   IN      A       10.0.148.1      ; Firewall Inside Address
rtr.wcj.ks.edovo.com.                   IN      A       192.168.254.48  ; Router Loopback0
sw.1.wcj.ks.edovo.com.			IN	A	10.0.148.4	; IDF Switch 1 
sw.2.wcj.ks.edovo.com.			IN	A	10.0.148.5	; IDF Switch 2 
tun.1.wcj.ks.edovo.com.                 IN      A       172.16.0.150    ; Router Tun42
tun.2.wcj.ks.edovo.com.                 IN      A       172.16.8.150    ; Router Tun44
wan.wcj.ks.edovo.com.			IN	A	65.115.209.107	; WAN IP

; Paytel Test Lab, NC - A Record 
cdn.paytel.nc.edovo.com.                IN      A       10.0.152.3      ; Site CDN Server            
fw.paytel.nc.edovo.com.                 IN      A       172.17.0.166    ; Firewall Outside Address
ge.paytel.nc.edovo.com.                 IN      A       172.17.0.165    ; Router Gi0/0/1
ipmi.paytel.nc.edovo.com.               IN      A       10.0.152.7      ; IPMI Interface
lan.paytel.nc.edovo.com.                IN      A       10.0.152.1      ; Firewall Inside Address
oobm.paytel.nc.edovo.com.		IN	A	10.0.152.10	; WTI OOBM
rtr.paytel.nc.edovo.com.                IN      A       192.168.254.49 	; Router Loopback0
tun.1.paytel.nc.edovo.com.              IN      A       172.16.0.154    ; Router Tun42
tun.2.paytel.nc.edovo.com.              IN      A       172.16.8.154    ; Router Tun44
wan.paytel.nc.edovo.com.		IN	A	184.75.233.211	; WAN IP

; Louisville Metro Department of Corrections, KY - A Record 
ap.1.lmdoc.ky.edovo.com.             	IN      A       10.0.156.11     ; Ruckus AP 1 
cdn.lmdoc.ky.edovo.com.              	IN      A       10.0.156.3      ; Site CDN Server            
fw.lmdoc.ky.edovo.com.               	IN      A       172.17.0.170    ; Firewall Outside Address
ge.lmdoc.ky.edovo.com.               	IN      A       172.17.0.169    ; Router Gi0/0/1
ipmi.lmdoc.ky.edovo.com.             	IN      A       10.0.156.7      ; IPMI Interface
lan.lmdoc.ky.edovo.com.              	IN      A       10.0.156.1      ; Firewall Inside Address
rtr.lmdoc.ky.edovo.com.              	IN      A       192.168.254.50  ; Router Loopback0
sw.mdf.lmdoc.ky.edovo.com.		IN	A	10.0.156.2	; MDF Switch
tun.1.lmdoc.ky.edovo.com.              	IN      A       172.16.0.158    ; Router Tun42
tun.2.lmdoc.ky.edovo.com.               IN      A       172.16.8.158    ; Router Tun44
wan.lmdoc.ky.edovo.com.			IN	A	76.190.35.250	; WAN IP

; Riverside Regional Network, VA - A Record 
cdn.rrj.va.edovo.com.                 	IN      A       10.0.160.3      ; Site CDN Server            
fw.rrj.va.edovo.com.                  	IN      A       172.17.0.174    ; Firewall Outside Address
ge.rrj.va.edovo.com.                  	IN      A       172.17.0.173    ; Router Gi0/0/1
ipmi.rrj.va.edovo.com.                	IN      A       10.0.160.7      ; IPMI Interface
lan.rrj.va.edovo.com.                 	IN      A       10.0.160.1      ; Firewall Inside Address
rtr.rrj.va.edovo.com.			IN      A       192.168.254.51  ; Router Loopback0
sw.rrj.va.edovo.com.			IN	A	10.0.160.5	; Customer Owned MDF Switch
tun.1.rrj.va.edovo.com. 	        IN      A       172.16.0.162    ; Router Tun42
tun.2.rrj.va.edovo.com.                 IN      A       172.16.8.162    ; Router Tun44
wan.rrj.va.edovo.com.			IN	A	40.130.29.210	; WAN IP

; RSW Regional Jail, VA - A Record 
cdn.rsw.va.edovo.com.                   IN      A       10.0.164.3      ; Site CDN Server            
fw.rsw.va.edovo.com.                    IN      A       172.17.0.178    ; Firewall Outside Address
ge.rsw.va.edovo.com.                    IN      A       172.17.0.177    ; Router Gi0/0/1
ipmi.rsw.va.edovo.com.                  IN      A       10.0.164.7      ; IPMI Interface
lan.rsw.va.edovo.com.                   IN      A       10.0.164.1      ; Firewall Inside Address
rtr.rsw.va.edovo.com.                   IN      A       192.168.254.52  ; Router Loopback0
tun.1.rsw.va.edovo.com.                 IN      A       172.16.0.166    ; Router Tun42
tun.2.rsw.va.edovo.com.                 IN      A       172.16.8.166    ; Router Tun44
wan.rsw.va.edovo.com.                   IN      A       23.25.126.218   ; WAN IP 

; Rockbridge Regional Jail, VA - A Record 
cdn.rbj.va.edovo.com.                   IN      A       10.0.168.3      ; Site CDN Server            
fw.rbj.va.edovo.com.                    IN      A       172.17.0.182    ; Firewall Outside Address
ge.rbj.va.edovo.com.                    IN      A       172.17.0.181    ; Router Gi0/0/1
ipmi.rbj.va.edovo.com.                  IN      A       10.0.168.7      ; IPMI Interface
lan.rbj.va.edovo.com.                   IN      A       10.0.168.1      ; Firewall Inside Address
rtr.rbj.va.edovo.com.                   IN      A       192.168.254.53  ; Router Loopback0
tun.1.rbj.va.edovo.com.                 IN      A       172.16.0.170    ; Router Tun42
tun.2.rbj.va.edovo.com.                 IN      A       172.16.8.170    ; Router Tun44
wan.rbj.va.edovo.com.     	        IN      A       74.93.118.27    ; WAN IP

; El Dorado County, Placerville, CA - A Record
ap.1.edp.ca.edovo.com.			IN	A	10.0.172.11	; Ruckus AP 1
ap.2.edp.ca.edovo.com.			IN	A	10.0.172.12	; Ruckus AP 2
ap.3.edp.ca.edovo.com.                  IN      A       10.0.172.13     ; Ruckus AP 3
ap.4.edp.ca.edovo.com.                  IN      A       10.0.172.14     ; Ruckus AP 4
ap.5.edp.ca.edovo.com.                  IN      A       10.0.172.15     ; Ruckus AP 5
ap.6.edp.ca.edovo.com.                  IN      A       10.0.172.16     ; Ruckus AP 6
ap.7.edp.ca.edovo.com.                  IN      A       10.0.172.17     ; Ruckus AP 7
ap.8.edp.ca.edovo.com.                  IN      A       10.0.172.18     ; Ruckus AP 8
ap.9.edp.ca.edovo.com.			IN	A	10.0.172.19	; Ruckus AP 9
cdn.edp.ca.edovo.com.                   IN      A       10.0.172.3      ; Site CDN Server
ipmi.edp.ca.edovo.com.             	IN      A       10.0.172.7      ; IPMI Interface
zd.edp.ca.edovo.com.			IN	A	10.0.172.10	; Site Zone Director
lan.edp.ca.edovo.com.                   IN      A       10.0.172.1      ; Firewall Inside Address
ge.edp.ca.edovo.com.                    IN      A       172.17.0.141    ; Router Gi0/0/1
rtr.edp.ca.edovo.com.                   IN      A       192.168.254.54  ; Router Loopback0
sw.1.edp.ca.edovo.com.			IN	A	10.0.172.4	; Switch 1
sw.2.edp.ca.edovo.com.			IN	A	10.0.172.5	; Switch 2
tun.1.edp.ca.edovo.com.                 IN      A       172.16.0.174    ; WAN IP
tun.2.edp.ca.edovo.com.                 IN      A       172.16.8.174    ; Router Tun44
wan.edp.ca.edovo.com.			IN	A	96.71.239.131	; WAN IP
fw.edp.ca.edovo.com.                    IN      A       172.17.0.142    ; Site firewall

; Warren County Jail, PA - A Record 
cdn.wcj.pa.edovo.com.                   IN      A       10.0.176.3      ; Site CDN Server            
fw.wcj.pa.edovo.com.                    IN      A       172.17.0.190    ; Firewall Outside Address
ge.wcj.pa.edovo.com.                    IN      A       172.17.0.189    ; Router Gi0/0/1
ipmi.wcj.pa.edovo.com.                  IN      A       10.0.176.7      ; IPMI Interface
lan.wcj.pa.edovo.com.                   IN      A       10.0.176.1      ; Firewall Inside Address
rtr.wcj.pa.edovo.com.                   IN      A       192.168.254.55  ; Router Loopback0
tun.1.wcj.pa.edovo.com.                 IN      A       172.16.0.178    ; Router Tun42
tun.2.wcj.pa.edovo.com.                 IN      A       172.16.8.178    ; Router Tun44
wan.wcj.pa.edovo.com.			IN	A	207.255.161.88 	; WAN IP 

; Mendocino County Jail, CA - A Record 
ap.1.mdc.ca.edovo.com.			IN	A	10.0.180.11	; AP
ap.2.mdc.ca.edovo.com.                  IN      A       10.0.180.12     ; AP
ap.3.mdc.ca.edovo.com.                  IN      A       10.0.180.13     ; AP
ap.4.mdc.ca.edovo.com.                  IN      A       10.0.180.14     ; AP
ap.5.mdc.ca.edovo.com.                  IN      A       10.0.180.15     ; AP
ap.6.mdc.ca.edovo.com.                  IN      A       10.0.180.16     ; AP
ap.7.mdc.ca.edovo.com.                  IN      A       10.0.180.17     ; AP
ap.8.mdc.ca.edovo.com.                  IN      A       10.0.180.18     ; AP
ap.9.mdc.ca.edovo.com.                  IN      A       10.0.180.19     ; AP
ap.10.mdc.ca.edovo.com.                 IN      A       10.0.180.20     ; AP
ap.11.mdc.ca.edovo.com.                 IN      A       10.0.180.21     ; AP
ap.12.mdc.ca.edovo.com.                 IN      A       10.0.180.22     ; AP
ap.13.mdc.ca.edovo.com.                 IN      A       10.0.180.23     ; AP
ap.14.mdc.ca.edovo.com.                 IN      A       10.0.180.24     ; AP
ap.15.mdc.ca.edovo.com.                 IN      A       10.0.180.25     ; AP
ap.16.mdc.ca.edovo.com.                 IN      A       10.0.180.26     ; AP
ap.17.mdc.ca.edovo.com.                 IN      A       10.0.180.27     ; AP
ap.18.mdc.ca.edovo.com.                 IN      A       10.0.180.28     ; AP
ap.19.mdc.ca.edovo.com.                 IN      A       10.0.180.29     ; AP
ap.20.mdc.ca.edovo.com.                 IN      A       10.0.180.30     ; AP
ap.21.mdc.ca.edovo.com.                 IN      A       10.0.180.31     ; AP
ap.22.mdc.ca.edovo.com.                 IN      A       10.0.180.32     ; AP
cdn.mdc.ca.edovo.com.                   IN      A       10.0.180.3      ; Site CDN Server            
fw.mdc.ca.edovo.com.                    IN      A       172.17.0.194    ; Firewall Outside Address
ge.mdc.ca.edovo.com.                    IN      A       172.17.0.193    ; Router Gi0/0/1
ipmi.mdc.ca.edovo.com.                  IN      A       10.0.180.7      ; IPMI Interface
lan.mdc.ca.edovo.com.                   IN      A       10.0.180.1      ; Firewall Inside Address
rtr.mdc.ca.edovo.com.                   IN      A       192.168.254.56  ; Router Loopback0
sw.1.mdc.ca.edovo.com.			IN	A	10.0.180.4	; MDF Switch
sw.2.mdc.ca.edovo.com.                  IN      A       10.0.180.5      ; IDF Switch
sw.3.mdc.ca.edovo.com.                  IN      A       10.0.180.6      ; IDF Switch
tun.1.mdc.ca.edovo.com.                 IN      A       172.16.0.182    ; Router Tun42
tun.2.mdc.ca.edovo.com.                 IN      A       172.16.8.182    ; Router Tun44
wan.mdc.ca.edovo.com.                   IN      A       50.78.98.44     ; WAN IP

; Sullivan County Jail, IN  - A Record 
cdn.scj.in.edovo.com.                   IN      A       10.0.184.3      ; Site CDN Server            
fw.scj.in.edovo.com.                    IN      A       172.17.0.198    ; Firewall Outside Address
ge.scj.in.edovo.com.                    IN      A       172.17.0.197    ; Router Gi0/0/1
ipmi.scj.in.edovo.com.                  IN      A       10.0.184.7      ; IPMI Interface
lan.scj.in.edovo.com.                   IN      A       10.0.184.1      ; Firewall Inside Address
rtr.scj.in.edovo.com.                   IN      A       192.168.254.57  ; Router Loopback0
tun.1.scj.in.edovo.com.                 IN      A       172.16.0.186    ; Router Tun42
tun.2.scj.in.edovo.com.                 IN      A       172.16.8.186    ; Router Tun44
wan.scj.in.edovo.com.                   IN      A       96.72.241.18    ; WAN IP 

; McCracken County Jail, KY - A Record 
cdn.mcj.ky.edovo.com.                   IN      A       10.0.188.3      ; Site CDN Server            
fw.mcj.ky.edovo.com.                    IN      A       172.17.0.202    ; Firewall Outside Address
ge.mcj.ky.edovo.com.                    IN      A       172.17.0.201    ; Router Gi0/0/1
ipmi.mcj.ky.edovo.com.                  IN      A       10.0.188.7      ; IPMI Interface
lan.mcj.ky.edovo.com.                   IN      A       10.0.188.1      ; Firewall Inside Address
rtr.mcj.ky.edovo.com.                   IN      A       192.168.254.58  ; Router Loopback0
tun.1.mcj.ky.edovo.com.                 IN      A       172.16.0.190    ; Router Tun42
tun.2.mcj.ky.edovo.com.                 IN      A       172.16.8.190    ; Router Tun44
wan.mcj.ky.edovo.com.                   IN      A       207.162.185.216 ; WAN IP

; Mendocino Juvenile, CA - A Record 
ap.1.mdcj.ca.edovo.com.			IN	A	10.0.192.11	; Ruckus AP 1
ap.2.mdcj.ca.edovo.com.                 IN      A       10.0.192.12     ; Ruckus AP 2
ap.3.mdcj.ca.edovo.com.                 IN      A       10.0.192.13     ; Ruckus AP 3
ap.4.mdcj.ca.edovo.com.                 IN      A       10.0.192.14     ; Ruckus AP 4
cdn.mdcj.ca.edovo.com.                  IN      A       10.0.192.3      ; Site CDN Server            
fw.mdcj.ca.edovo.com.                   IN      A       172.17.0.206    ; Firewall Outside Address
ge.mdcj.ca.edovo.com.                   IN      A       172.17.0.205    ; Router Gi0/0/1
ipmi.mdcj.ca.edovo.com.                 IN      A       10.0.192.7      ; IPMI Interface
lan.mdcj.ca.edovo.com.                  IN      A       10.0.192.1      ; Firewall Inside Address
rtr.mdcj.ca.edovo.com.                  IN      A       192.168.254.59  ; Router Loopback0
sw.mdcj.ca.edovo.com.			IN	A	10.0.192.5 	; PoE Switch
tun.1.mdcj.ca.edovo.com.                IN      A       172.16.0.194    ; Router Tun42
tun.2.mdcj.ca.edovo.com.                IN      A       172.16.8.194    ; Router Tun44
wan.mdcj.ca.edovo.com.			IN	A	50.78.101.178	; WAN IP

; Vigo County Jail, IN - A Record 
ap.1.vcj.in.edovo.com.                  IN      A       10.0.196.11     ; Ruckus AP 1  
ap.2.vcj.in.edovo.com.                  IN      A       10.0.196.12     ; Ruckus AP 2 
ap.3.vcj.in.edovo.com.                  IN      A       10.0.196.13     ; Ruckus AP 3
cdn.vcj.in.edovo.com.                   IN      A       10.0.196.3      ; Site CDN Server            
fw.vcj.in.edovo.com.                    IN      A       172.17.0.210    ; Firewall Outside Address
ge.vcj.in.edovo.com.                    IN      A       172.17.0.209    ; Router Gi0/0/1
lan.vcj.in.edovo.com.                   IN      A       10.0.196.1      ; Firewall Inside Address
rtr.vcj.in.edovo.com.                   IN      A       192.168.254.60  ; Router Loopback0
sw.vcj.in.edovo.com.			IN	A	10.0.196.2	; CPC MDF Switch
tun.1.vcj.in.edovo.com.                 IN      A       172.16.0.198    ; Router Tun42
tun.2.vcj.in.edovo.com.                 IN      A       172.16.8.198    ; Router Tun44
wan.vcj.in.edovo.com.                   IN      A       98.103.166.171  ; WAN IP 

; Humboldt County Jail, CA - A Record 
ap.1.hcj.ca.edovo.com.                  IN      A       10.0.200.11     ; Ruckus AP 1
ap.2.hcj.ca.edovo.com.                  IN      A       10.0.200.12     ; Ruckus AP 2
ap.3.hcj.ca.edovo.com.                  IN      A       10.0.200.13     ; Ruckus AP 3
ap.4.hcj.ca.edovo.com.                  IN      A       10.0.200.14     ; Ruckus AP 4
ap.5.hcj.ca.edovo.com.                  IN      A       10.0.200.15     ; Ruckus AP 5
ap.6.hcj.ca.edovo.com.                  IN      A       10.0.200.16     ; Ruckus AP 6
ap.7.hcj.ca.edovo.com.                  IN      A       10.0.200.17     ; Ruckus AP 7
ap.8.hcj.ca.edovo.com.                  IN      A       10.0.200.18     ; Ruckus AP 8
ap.9.hcj.ca.edovo.com.                  IN      A       10.0.200.19     ; Ruckus AP 9
ap.10.hcj.ca.edovo.com.                 IN      A       10.0.200.20     ; Ruckus AP 10
ap.11.hcj.ca.edovo.com.                 IN      A       10.0.200.21     ; Ruckus AP 11
ap.12.hcj.ca.edovo.com.                 IN      A       10.0.200.22     ; Ruckus AP 12
ap.13.hcj.ca.edovo.com.                 IN      A       10.0.200.23     ; Ruckus AP 13
ap.14.hcj.ca.edovo.com.                 IN      A       10.0.200.24     ; Ruckus AP 14
ap.15.hcj.ca.edovo.com.                 IN      A       10.0.200.25     ; Ruckus AP 15
ap.16.hcj.ca.edovo.com.                 IN      A       10.0.200.26     ; Ruckus AP 16
ap.17.hcj.ca.edovo.com.                 IN      A       10.0.200.27     ; Ruckus AP 17
ap.18.hcj.ca.edovo.com.                 IN      A       10.0.200.28     ; Ruckus AP 18
ap.19.hcj.ca.edovo.com.                 IN      A       10.0.200.29     ; Ruckus AP 19
cdn.hcj.ca.edovo.com.                   IN      A       10.0.200.3      ; Site CDN Server            
sw.1.hcj.ca.edovo.com.			IN	A	10.0.200.2	; Site IDF Switch
sw.2.hcj.ca.edovo.com.			IN	A	10.0.200.4	; Site IDF Switch 2
sw.3.hcj.ca.edovo.com.			IN	A	10.0.200.5	; Site IDF Switch 3
ipmi.hcj.ca.edovo.com.                  IN      A       10.0.200.7      ; IPMI Interface
lan.hcj.ca.edovo.com.                   IN      A       10.0.200.1      ; Firewall Inside Address
rtr.hcj.ca.edovo.com.                   IN      A       192.168.254.61  ; Router Loopback0
tun.1.hcj.ca.edovo.com.                 IN      A       172.16.0.202    ; Router Tun42
tun.2.mcj.ca.edovo.com.                 IN      A       172.16.8.202    ; Router Tun44
wan.hcj.ca.edovo.com.			IN	A	24.121.212.51	; WAN IP

; McKinley County Jail, NM - A Record 
cdn.mcj.nm.edovo.com.                   IN      A       10.0.204.3      ; Site CDN Server            
fw.mcj.nm.edovo.com.                    IN      A       172.17.0.218    ; Firewall Outside Address
ge.mcj.nm.edovo.com.                    IN      A       172.17.0.217    ; Router Gi0/0/1
ipmi.mcj.nm.edovo.com.                  IN      A       10.0.204.7      ; IPMI Interface
lan.mcj.nm.edovo.com.                   IN      A       10.0.204.1      ; Firewall Inside Address
rtr.mcj.nm.edovo.com.                   IN      A       192.168.254.62  ; Router Loopback0
tun.1.mcj.nm.edovo.com.                 IN      A       172.16.0.206    ; Router Tun42
tun.2.mcj.nm.edovo.com.                 IN      A       172.16.8.206    ; Router Tun44
wan.mcj.nm.edovo.com.                   IN      A       96.64.156.169   ; WAN IP

; Martinsville County Jail, VA - A Record 
cdn.mcj.va.edovo.com.                   IN      A       10.0.208.3      ; Site CDN Server            
fw.mcj.va.edovo.com.                    IN      A       172.17.0.222    ; Firewall Outside Address
ge.mcj.va.edovo.com.                    IN      A       172.17.0.221    ; Router Gi0/0/1
ipmi.mcj.va.edovo.com.                  IN      A       10.0.208.7      ; IPMI Interface
lan.mcj.va.edovo.com.                   IN      A       10.0.208.1      ; Firewall Inside Address
rtr.mcj.va.edovo.com.                   IN      A       192.168.254.63  ; Router Loopback0
tun.1.mcj.va.edovo.com.                 IN      A       172.16.0.210    ; Router Tun42
tun.2.mcj.va.edovo.com.                 IN      A       172.16.8.210    ; Router Tun44
wan.mcj.va.edovo.com.                   IN      A       65.254.187.29   ; WAN IP

; Montana State Prison, MT - A Record 
ap.1.msp.mt.edovo.com.			IN	A	10.0.212.21	; Ruckus AP 1
ap.2.msp.mt.edovo.com.                  IN      A       10.0.212.22     ; Ruckus AP 2
ap.3.msp.mt.edovo.com.                  IN      A       10.0.212.23     ; Ruckus AP 3
ap.4.msp.mt.edovo.com.                  IN      A       10.0.212.24     ; Ruckus AP 4
ap.5.msp.mt.edovo.com.                  IN      A       10.0.212.25     ; Ruckus AP 5
ap.6.msp.mt.edovo.com.                  IN      A       10.0.212.26     ; Ruckus AP 6
ap.7.msp.mt.edovo.com.                  IN      A       10.0.212.27     ; Ruckus AP 7
ap.8.msp.mt.edovo.com.                  IN      A       10.0.212.28     ; Ruckus AP 8
ap.9.msp.mt.edovo.com.                  IN      A       10.0.212.29     ; Ruckus AP 9
ap.10.msp.mt.edovo.com.                 IN      A       10.0.212.30     ; Ruckus AP 10
ap.11.msp.mt.edovo.com.                 IN      A       10.0.212.31     ; Ruckus AP 11
ap.12.msp.mt.edovo.com.                 IN      A       10.0.212.32     ; Ruckus AP 12
ap.13.msp.mt.edovo.com.                 IN      A       10.0.212.33     ; Ruckus AP 13
ap.14.msp.mt.edovo.com.                 IN      A       10.0.212.34     ; Ruckus AP 14
ap.15.msp.mt.edovo.com.                 IN      A       10.0.212.35     ; Ruckus AP 15
ap.16.msp.mt.edovo.com.                 IN      A       10.0.212.36     ; Ruckus AP 16
ap.17.msp.mt.edovo.com.                 IN      A       10.0.212.37     ; Ruckus AP 17
ap.18.msp.mt.edovo.com.                 IN      A       10.0.212.38     ; Ruckus AP 18
ap.19.msp.mt.edovo.com.                 IN      A       10.0.212.39     ; Ruckus AP 19
ap.20.msp.mt.edovo.com.                 IN      A       10.0.212.40     ; Ruckus AP 20
ap.21.msp.mt.edovo.com.                 IN      A       10.0.212.41     ; Ruckus AP 21
ap.22.msp.mt.edovo.com.                 IN      A       10.0.212.42     ; Ruckus AP 22
ap.23.msp.mt.edovo.com.                 IN      A       10.0.212.43     ; Ruckus AP 23
ap.24.msp.mt.edovo.com.                 IN      A       10.0.212.44     ; Ruckus AP 24
ap.25.msp.mt.edovo.com.                 IN      A       10.0.212.45     ; Ruckus AP 25
ap.26.msp.mt.edovo.com.                 IN      A       10.0.212.46     ; Ruckus AP 26
ap.27.msp.mt.edovo.com.                 IN      A       10.0.212.47     ; Ruckus AP 27
ap.28.msp.mt.edovo.com.                 IN      A       10.0.212.48     ; Ruckus AP 28
ap.29.msp.mt.edovo.com.                 IN      A       10.0.212.49     ; Ruckus AP 29
ap.30.msp.mt.edovo.com.                 IN      A       10.0.212.50     ; Ruckus AP 30
ap.31.msp.mt.edovo.com.                 IN      A       10.0.212.51     ; Ruckus AP 31
ap.32.msp.mt.edovo.com.                 IN      A       10.0.212.52     ; Ruckus AP 32
ap.33.msp.mt.edovo.com.                 IN      A       10.0.212.53     ; Ruckus AP 33
ap.34.msp.mt.edovo.com.                 IN      A       10.0.212.54     ; Ruckus AP 34
ap.35.msp.mt.edovo.com.                 IN      A       10.0.212.55     ; Ruckus AP 35
ap.36.msp.mt.edovo.com.                 IN      A       10.0.212.56     ; Ruckus AP 36
ap.37.msp.mt.edovo.com.                 IN      A       10.0.212.57     ; Ruckus AP 37
ap.38.msp.mt.edovo.com.                 IN      A       10.0.212.58     ; Ruckus AP 38
ap.39.msp.mt.edovo.com.                 IN      A       10.0.212.59     ; Ruckus AP 39
ap.40.msp.mt.edovo.com.                 IN      A       10.0.212.60     ; Ruckus AP 40
ap.41.msp.mt.edovo.com.                 IN      A       10.0.212.61     ; Ruckus AP 41
ap.42.msp.mt.edovo.com.			IN	A	10.0.212.62	; Ruckus AP 42
ap.43.msp.mt.edovo.com.			IN	A	10.0.212.63	; Ruchus AP 43
ap.44.msp.mt.edovo.com.			IN      A       10.0.212.64     ; Ruchus AP 44
ap.45.msp.mt.edovo.com.			IN      A       10.0.212.65     ; Ruchus AP 45
ap.46.msp.mt.edovo.com.			IN      A       10.0.212.66     ; Ruchus AP 46
ap.47.msp.mt.edovo.com.			IN      A       10.0.212.67     ; Ruchus AP 47
ap.48.msp.mt.edovo.com.			IN      A       10.0.212.68     ; Ruchus AP 48
ap.49.msp.mt.edovo.com.			IN      A       10.0.212.69     ; Ruchus AP 49
ap.50.msp.mt.edovo.com.			IN      A       10.0.212.70     ; Ruchus AP 50
ap.51.msp.mt.edovo.com.			IN      A       10.0.212.71     ; Ruchus AP 51
ap.52.msp.mt.edovo.com.                 IN      A       10.0.212.72     ; Ruchus AP 52
ap.53.msp.mt.edovo.com.                 IN      A       10.0.212.73     ; Ruchus AP 53
ap.54.msp.mt.edovo.com.			IN	A	10.0.212.74	; Ruckus AP 54
ap.55.msp.mt.edovo.com.                 IN      A       10.0.212.75     ; Ruckus AP 55
ap.56.msp.mt.edovo.com.                 IN      A       10.0.212.76     ; Ruckus AP 56
ap.57.msp.mt.edovo.com.                 IN      A       10.0.212.77     ; Ruckus AP 57
ap.58.msp.mt.edovo.com.                 IN      A       10.0.212.78     ; Ruckus AP 58
ap.59.msp.mt.edovo.com.                 IN      A       10.0.212.79     ; Ruckus AP 59
cdn.msp.mt.edovo.com.                   IN      A       10.0.212.3      ; Site CDN Server            
fw.msp.mt.edovo.com.                    IN      A       172.17.0.226    ; Firewall Outside Address
ge.msp.mt.edovo.com.                    IN      A       172.17.0.225    ; Router Gi0/0/1
ipmi.msp.mt.edovo.com.                  IN      A       10.0.212.7      ; IPMI Interface
lan.msp.mt.edovo.com.                   IN      A       10.0.212.1      ; Firewall Inside Address
rtr.msp.mt.edovo.com.                   IN      A       192.168.254.64  ; Router Loopback0
tun.1.msp.mt.edovo.com.                 IN      A       172.16.0.214    ; Router Tun42
tun.2.msp.mt.edovo.com.                 IN      A       172.16.8.214    ; Router Tun44
wan.msp.mt.edovo.com.                   IN      A       65.121.125.171  ; WAN IP
ptmp.1.msp.mt.edovo.com.                IN      A       10.0.212.8      ; PTMP 1
ptp.1.msp.mt.edovo.com.			IN	A	10.0.212.9	; PTP 1
ptp.2.msp.mt.edovo.com.                 IN      A       10.0.212.10     ; PTP 2
ptp.3.msp.mt.edovo.com.                 IN      A       10.0.212.11     ; PTP 3
ptp.4.msp.mt.edovo.com.                 IN      A       10.0.212.12     ; PTP 4
ptmp.2.msp.mt.edovo.com.                IN      A       10.0.212.13     ; PTMP 2
ptp.5.msp.mt.edovo.com.                 IN      A       10.0.212.14     ; PTP 5
ptp.6.msp.mt.edovo.com.                 IN      A       10.0.212.15     ; PTP 6
ptmp.3.msp.mt.edovo.com.                IN      A       10.0.212.16     ; PTMP 3
ptp.7.msp.mt.edovo.com.                 IN      A       10.0.212.17     ; PTP 7
ptp.8.msp.mt.edovo.com.                 IN      A       10.0.212.18     ; PTP 8

; Montana Womens Prison, MT - A Record 
ap.1.mwp.mt.edovo.com.			IN	A	10.0.216.11	; Ruckus AP 1
ap.2.mwp.mt.edovo.com.			IN	A	10.0.216.12	; Ruckus AP 2
ap.3.mwp.mt.edovo.com.			IN	A	10.0.216.13	; Ruckus AP 3
ap.4.mwp.mt.edovo.com.			IN	A	10.0.216.14	; Ruckus AP 4
ap.5.mwp.mt.edovo.com.                  IN      A       10.0.216.15     ; Ruckus AP 5
ap.6.mwp.mt.edovo.com.                  IN      A       10.0.216.16     ; Ruckus AP 6
ap.7.mwp.mt.edovo.com.                  IN      A       10.0.216.17     ; Ruckus AP 7
ap.8.mwp.mt.edovo.com.                  IN      A       10.0.216.18     ; Ruckus AP 8
ap.9.mwp.mt.edovo.com.                  IN      A       10.0.216.19     ; Ruckus AP 9
ap.10.mwp.mt.edovo.com.                 IN      A       10.0.216.20     ; Ruckus AP 10
ap.11.mwp.mt.edovo.com.                 IN      A       10.0.216.21     ; Ruckus AP 11
ap.12.mwp.mt.edovo.com.                 IN      A       10.0.216.22     ; Ruckus AP 12
cdn.mwp.mt.edovo.com.                   IN      A       10.0.216.3      ; Site CDN Server            
fw.mwp.mt.edovo.com.                    IN      A       172.17.0.230    ; Firewall Outside Address
ge.mwp.mt.edovo.com.                    IN      A       172.17.0.229    ; Router Gi0/0/1
ipmi.mwp.mt.edovo.com.                  IN      A       10.0.216.7      ; IPMI Interface
lan.mwp.mt.edovo.com.                   IN      A       10.0.216.1      ; Firewall Inside Address
rtr.mwp.mt.edovo.com.                   IN      A       192.168.254.65  ; Router Loopback0
tun.1.mwp.mt.edovo.com.                 IN      A       172.16.0.218    ; Router Tun42
tun.2.mwp.mt.edovo.com.                 IN      A       172.16.8.218    ; Router Tun44
wan.mwp.mt.edovo.com.                   IN      A       65.154.212.250  ; WAN IP

; Montana Pine Hills Correctional Facility - A Record 
ap.1.phycf.mt.edovo.com.		IN	A	10.0.220.11	; Ruckus AP 1
ap.2.phycf.mt.edovo.com.                IN      A       10.0.220.12     ; Ruckus AP 2
ap.3.phycf.mt.edovo.com.                IN      A       10.0.220.13     ; Ruckus AP 3
ap.4.phycf.mt.edovo.com.                IN      A       10.0.220.14     ; Ruckus AP 4
ap.5.phycf.mt.edovo.com.                IN      A       10.0.220.15     ; Ruckus AP 5
cdn.phycf.mt.edovo.com.                 IN      A       10.0.220.3      ; Site CDN Server            
fw.phycf.mt.edovo.com.                  IN      A       172.17.0.234    ; Firewall Outside Address
ge.phycf.mt.edovo.com.                  IN      A       172.17.0.233    ; Router Gi0/0/1
ipmi.phycf.mt.edovo.com.                IN      A       10.0.220.7      ; IPMI Interface
lan.phycf.mt.edovo.com.                 IN      A       10.0.220.1      ; Firewall Inside Address
rtr.phycf.mt.edovo.com.                 IN      A       192.168.254.66  ; Router Loopback0
tun.1.phycf.mt.edovo.com.               IN      A       172.16.0.222    ; Router Tun42
tun.2.phycf.mt.edovo.com.               IN      A       172.16.8.222    ; Router Tun44
wan.phycf.mt.edovo.com.                 IN      A       65.121.113.61   ; WAN IP

; Montana Riverside Corectional Facility - A Record 
ap.1.rcf.mt.edovo.com.			IN	A	10.0.224.11	; Ruckus AP 1
ap.2.rcf.mt.edovo.com.			IN	A	10.0.224.12	; Ruckus AP 2
cdn.rcf.mt.edovo.com.                   IN      A       10.0.224.3      ; Site CDN Server            
fw.rcf.mt.edovo.com.                    IN      A       172.17.0.238    ; Firewall Outside Address
ge.rcf.mt.edovo.com.                    IN      A       172.17.0.237    ; Router Gi0/0/1
ipmi.rcf.mt.edovo.com.                  IN      A       10.0.224.7      ; IPMI Interface
lan.rcf.mt.edovo.com.                   IN      A       10.0.224.1      ; Firewall Inside Address
rtr.rcf.mt.edovo.com.                   IN      A       192.168.254.67  ; Router Loopback0
tun.1.rcf.mt.edovo.com.                 IN      A       172.16.0.226    ; Router Tun42
tun.2.rcf.mt.edovo.com.                 IN      A       172.16.8.226    ; Router Tun44
wan.rcf.mt.edovo.com.                   IN      A       67.128.238.101  ; WAN IP

; Montana Lewistown Infirmary - A Record 
ap.1.lti.mt.edovo.com.			IN	A	10.0.228.11	; AP 1
cdn.lti.mt.edovo.com.                   IN      A       10.0.228.3      ; Site CDN Server            
fw.lti.mt.edovo.com.                    IN      A       172.17.0.242    ; Firewall Outside Address
ge.lti.mt.edovo.com.                    IN      A       172.17.0.241    ; Router Gi0/0/1
ipmi.lti.mt.edovo.com.                  IN      A       10.0.228.7      ; IPMI Interface
lan.lti.mt.edovo.com.                   IN      A       10.0.228.1      ; Firewall Inside Address
rtr.lti.mt.edovo.com.                   IN      A       192.168.254.68  ; Router Loopback0
tun.1.lti.mt.edovo.com.                 IN      A       172.16.0.230    ; Router Tun42
tun.2.lti.mt.edovo.com.                 IN      A       172.16.8.230    ; Router Tun44
wan.lti.mt.edovo.com.                   IN      A       67.128.238.198  ; WAN IP

; Randolph County, NC - A Record 
cdn.rcj.nc.edovo.com.                   IN      A       10.0.232.3      ; Site CDN Server            
fw.rcj.nc.edovo.com.                    IN      A       172.17.0.246    ; Firewall Outside Address
ge.rcj.nc.edovo.com.                    IN      A       172.17.0.245    ; Router Gi0/0/1
ipmi.rcj.nc.edovo.com.                  IN      A       10.0.232.7      ; IPMI Interface
lan.rcj.nc.edovo.com.                   IN      A       10.0.232.1      ; Firewall Inside Address
rtr.rcj.nc.edovo.com.                   IN      A       192.168.254.69  ; Router Loopback0
tun.1.rcj.nc.edovo.com.                 IN      A       172.16.0.234    ; Router Tun42
tun.2.rcj.nc.edovo.com.                 IN      A       172.16.8.234    ; Router Tun44
wan.rcj.nc.edovo.com.                   IN      A       66.57.216.107   ; WAN IP

; St. Johns County, FL - A Record 
cdn.sjc.fl.edovo.com.                   IN      A       10.0.236.3      ; Site CDN Server            
fw.sjc.fl.edovo.com.                    IN      A       172.17.0.250    ; Firewall Outside Address
ge.sjc.fl.edovo.com.                    IN      A       172.17.0.249    ; Router Gi0/0/1
ipmi.sjc.fl.edovo.com.                  IN      A       10.0.236.7      ; IPMI Interface
lan.sjc.fl.edovo.com.                   IN      A       10.0.236.1      ; Firewall Inside Address
rtr.sjc.fl.edovo.com.                   IN      A       192.168.254.70  ; Router Loopback0
tun.1.sjc.fl.edovo.com.                 IN      A       172.16.0.238    ; Router Tun42
tun.2.sjc.fl.edovo.com.                 IN      A       172.16.8.238    ; Router Tun44
wan.sjc.fl.edovo.com.                   IN      A       96.75.17.10     ; WAN IP

; Santa Barbara County, CA - A Record 
ap.1.sbc.ca.edovo.com.			IN	A	10.0.240.21	; Ruckus AP 1
ap.2.sbc.ca.edovo.com.                  IN      A       10.0.240.22     ; Ruckus AP 2
ap.3.sbc.ca.edovo.com.                  IN      A       10.0.240.23     ; Ruckus AP 3
ap.4.sbc.ca.edovo.com.                  IN      A       10.0.240.24     ; Ruckus AP 4
ap.5.sbc.ca.edovo.com.                  IN      A       10.0.240.25     ; Ruckus AP 5
ap.6.sbc.ca.edovo.com.                  IN      A       10.0.240.26     ; Ruckus AP 6
ap.7.sbc.ca.edovo.com.                  IN      A       10.0.240.27     ; Ruckus AP 7
ap.8.sbc.ca.edovo.com.                  IN      A       10.0.240.28     ; Ruckus AP 8
ap.9.sbc.ca.edovo.com.                  IN      A       10.0.240.29     ; Ruckus AP 9
ap.10.sbc.ca.edovo.com.                 IN      A       10.0.240.30     ; Ruckus AP 10
ap.11.sbc.ca.edovo.com.                 IN      A       10.0.240.31     ; Ruckus AP 11
ap.12.sbc.ca.edovo.com.                 IN      A       10.0.240.32     ; Ruckus AP 12
ap.13.sbc.ca.edovo.com.                 IN      A       10.0.240.33     ; Ruckus AP 13
ap.14.sbc.ca.edovo.com.                 IN      A       10.0.240.34     ; Ruckus AP 14
ap.15.sbc.ca.edovo.com.                 IN      A       10.0.240.35     ; Ruckus AP 15
ap.16.sbc.ca.edovo.com.                 IN      A       10.0.240.36     ; Ruckus AP 16
ap.17.sbc.ca.edovo.com.                 IN      A       10.0.240.37     ; Ruckus AP 17
ap.18.sbc.ca.edovo.com.                 IN      A       10.0.240.38     ; Ruckus AP 18
ap.19.sbc.ca.edovo.com.                 IN      A       10.0.240.39     ; Ruckus AP 19
ap.20.sbc.ca.edovo.com.                 IN      A       10.0.240.40     ; Ruckus AP 20
ap.21.sbc.ca.edovo.com.                 IN      A       10.0.240.41     ; Ruckus AP 21
ap.22.sbc.ca.edovo.com.                 IN      A       10.0.240.42     ; Ruckus AP 22
ap.23.sbc.ca.edovo.com.                 IN      A       10.0.240.43     ; Ruckus AP 23
ap.24.sbc.ca.edovo.com.                 IN      A       10.0.240.44     ; Ruckus AP 24
ap.25.sbc.ca.edovo.com.                 IN      A       10.0.240.45     ; Ruckus AP 25
ap.26.sbc.ca.edovo.com.                 IN      A       10.0.240.46     ; Ruckus AP 26
ap.27.sbc.ca.edovo.com.                 IN      A       10.0.240.47     ; Ruckus AP 27
ap.28.sbc.ca.edovo.com.                 IN      A       10.0.240.48     ; Ruckus AP 28
ap.29.sbc.ca.edovo.com.                 IN      A       10.0.240.49     ; Ruckus AP 29
ap.30.sbc.ca.edovo.com.                 IN      A       10.0.240.50     ; Ruckus AP 30
sw.mdf.sbc.ca.edovo.com.		IN	A	10.0.240.4	; MDF Switch
sw.1.sbc.ca.edovo.com.                	IN      A       10.0.240.11     ; Switch 1 (Juniper)
sw.2.sbc.ca.edovo.com.                	IN      A       10.0.240.12     ; Switch 2 (Juniper)
sw.3.sbc.ca.edovo.com.                	IN      A       10.0.240.13     ; Switch 3 (Juniper)
sw.4.sbc.ca.edovo.com.                	IN      A       10.0.240.14     ; Switch 4 (Juniper)
sw.5.sbc.ca.edovo.com.			IN	A	10.0.240.15	; Switch 5 (HP)
cdn.sbc.ca.edovo.com.                   IN      A       10.0.240.3      ; Site CDN Server            
ge.sbc.ca.edovo.com.                    IN      A       10.0.240.1	; Router Gi0/0/1
ipmi.sbc.ca.edovo.com.                  IN      A       10.0.240.7      ; IPMI Interface
rtr.sbc.ca.edovo.com.                   IN      A       192.168.254.71  ; Router Loopback0
tun.1.sbc.ca.edovo.com.                 IN      A       172.16.0.242    ; Router Tun42
tun.2.sbc.ca.edovo.com.                 IN      A       172.16.8.242    ; Router Tun44
wan.sbc.ca.edovo.com.                   IN      A       72.215.184.94   ; WAN IP

; Burke County, GA - A Record 
sw.mdf.bk.ga.edovo.com.                 IN      A       10.0.244.4      ; MDF Switch
cdn.bk.ga.edovo.com.                    IN      A       10.0.244.3      ; Site CDN Server            
fw.bk.ga.edovo.com.                     IN      A       172.17.0.106    ; Firewall Outside Address
ge.bk.ga.edovo.com.                     IN      A       172.17.0.105    ; Router Gi0/0/1
ipmi.bk.ga.edovo.com.                   IN      A       10.0.244.7      ; IPMI Interface
lan.bk.ga.edovo.com.                    IN      A       10.0.244.1      ; Firewall Inside Address
rtr.bk.ga.edovo.com.                    IN      A       192.168.254.72  ; Router Loopback0
tun.1.bk.ga.edovo.com.                  IN      A       172.16.0.246    ; Router Tun42
tun.2.bk.ga.edovo.com.                  IN      A       172.16.8.246    ; Router Tun44
wan.bk.ga.edovo.com.                    IN      A       23.31.121.226   ; WAN IP

; Pierce County Jail, WI - Turnkey Office
wan.pcj.wi.edovo.com.			IN	A	24.111.95.163	; WAN IP
cdn.pcj.wi.edovo.com.			IN	A	10.0.248.3	; Content server
ipmi.pcj.wi.edovo.com.			IN	A	10.0.248.7	; IPMI interface
tun.1.pcj.wi.edovo.com.			IN	A	172.16.0.250	; Router Tun42
tun.2.pcj.wi.edovo.com.			IN	A	172.16.8.250	; Router Tun44
rtr.pcj.wi.edovo.com.			IN	A	192.168.254.73	; Router Loopback0
lan.pcj.wi.edovo.com.			IN	A	10.0.248.1	; Router LAN IP 

; Turnkey Site
wan.trnkey.2.edovo.com.                 IN      A       96.78.67.227	; WAN IP
cdn.trnkey.2.edovo.com.                 IN      A       10.0.252.3      ; Content server
ipmi.trnkey.2.edovo.com.		IN	A	10.0.252.7	; IPMI interface
tun.1.trnkey.2.edovo.com.               IN      A       172.16.0.254    ; Router Tun42
tun.2.trnkey.2.edovo.com.               IN      A       172.16.8.254    ; Router Tun44
rtr.trnkey.2.edovo.com.                 IN      A       192.168.254.74  ; Router Loopback0

;Dawson County Jail, MT
wan.dcj.mt.edovo.com.			IN	A	65.155.28.138	; WAN IP
rtr.dcj.mt.edovo.com.                   IN      A       192.168.254.75  ; Lookback IP
ge.dcj.mt.edovo.com.                   	IN      A       172.17.1.1	; RTR LAN IP
fw.dcj.mt.edovo.com.                    IN      A       172.17.1.2	; FW WAN IP
lan.dcj.mt.edovo.com.                   IN      A       10.1.0.1        ; FW LAN IP
cdn.dcj.mt.edovo.com.                   IN      A       10.1.0.3        ; CDN IP
ipmi.dcj.mt.edovo.com.                  IN      A       10.1.0.7        ; IPMI IP
tun.1.dcj.mt.edovo.com.			IN	A	172.16.1.2	; Tunnel 1 IP
tun.2.dcj.mt.edovo.com.			IN	A	172.16.9.2	; Tunnel 2 IP
ap.1.dcj.mt.edovo.com.			IN	A	10.1.0.21	; Ruckus AP 1
ap.2.dcj.mt.edovo.com.                  IN      A       10.1.0.22       ; Ruckus AP 2
ap.3.dcj.mt.edovo.com.                  IN      A       10.1.0.23       ; Ruckus AP 3
ap.4.dcj.mt.edovo.com.                  IN      A       10.1.0.24       ; Ruckus AP 4
ap.5.dcj.mt.edovo.com.                  IN      A       10.1.0.25       ; Ruckus AP 5
ap.6.dcj.mt.edovo.com.                  IN      A       10.1.0.26       ; Ruckus AP 6
ap.7.dcj.mt.edovo.com.                  IN      A       10.1.0.27       ; Ruckus AP 7
ap.8.dcj.mt.edovo.com.                  IN      A       10.1.0.28       ; Ruckus AP 8
ap.9.dcj.mt.edovo.com.                  IN      A       10.1.0.29       ; Ruckus AP 9

;Edgecomb County, NC
wan.ecj.nc.edovo.com.			IN	A	65.127.82.75	; WAN IP
rtr.ecj.nc.edovo.com.			IN	A	192.168.254.76	; Router Loopback0
tun.1.ecj.nc.edovo.com.                 IN      A       172.16.1.6	; Tunnel 1 IP
tun.2.ecj.nc.edovo.com.                 IN      A       172.16.9.6	; Tunnel 2 IP
ge.ecj.nc.edovo.com.			IN	A	172.17.1.5	; RTR LAN IP
fw.ecj.nc.edovo.com.			IN	A	172.17.1.6	; FW WAN IP
lan.ecj.nc.edovo.com.                   IN      A       10.1.4.1	; FW LAN IP
cdn.ecj.nc.edovo.com.                   IN      A       10.1.4.3	; CDN IP
ipmi.ecj.nc.edovo.com.			IN      A       10.1.4.7	; IPMI IP

;Washington County, IN
wan.wcj.in.edovo.com.			IN	A	98.100.88.11	; WAN IP
rtr.wcj.in.edovo.com.			IN	A	192.168.254.77	; Router Loopback
tun.1.wcj.in.edovo.com.                 IN      A       172.16.1.10     ; Tunnel 1 IP
tun.2.wcj.in.edovo.com.                 IN      A       172.16.9.10     ; Tunnel 2 IP
lan.wcj.in.edovo.com.                   IN      A       10.1.8.1        ; RTR LAN IP
cdn.wcj.in.edovo.com.                   IN      A       10.1.8.3        ; CDN IP
ipmi.wcj.in.edovo.com.                  IN      A       10.1.8.7        ; IPMI IP
ap.1.wcj.in.edovo.com.			IN	A	10.1.8.11	; Ruckus AP 1
ap.2.wcj.in.edovo.com.                  IN      A       10.1.8.12       ; Ruckus AP 2
ap.3.wcj.in.edovo.com.                  IN      A       10.1.8.13       ; Ruckus AP 3
ap.4.wcj.in.edovo.com.                  IN      A       10.1.8.14       ; Ruckus AP 4
ap.5.wcj.in.edovo.com.                  IN      A       10.1.8.15       ; Ruckus AP 5
ap.6.wcj.in.edovo.com.                  IN      A       10.1.8.16       ; Ruckus AP 6
ap.7.wcj.in.edovo.com.                  IN      A       10.1.8.17       ; Ruckus AP 7

;Dukes County, MA
wan.dcj.ma.edovo.com.                   IN      A       75.144.161.34   ; WAN IP
rtr.dcj.ma.edovo.com.                   IN      A       192.168.254.78  ; Router Loopback
tun.1.dcj.ma.edovo.com.                 IN      A       172.16.1.14     ; Tunnel 1 IP
tun.2.dcj.ma.edovo.com.                 IN      A       172.16.9.14     ; Tunnel 2 IP
lan.dcj.ma.edovo.com.                   IN      A       10.1.12.1       ; RTR LAN IP
cdn.dcj.ma.edovo.com.                   IN      A       10.1.12.3       ; CDN IP
ipmi.dcj.ma.edovo.com.                  IN      A       10.1.12.7       ; IPMI IP
sw.1.dcj.ma.edovo.com.			IN	A	10.1.12.2	; Juniper Switch 1
ap.1.dcj.ma.edovo.com.			IN	A	10.1.12.11	; Ruckus AP 1
ap.2.dcj.ma.edovo.com.			IN	A	10.1.12.12	; Ruckus AP 2

;Franklin County, GA
wan.fcj.ga.edovo.com.			IN	A	98.17.62.43	; WAN IP
rtr.fcj.ga.edovo.com.                   IN      A       192.168.254.79	; Router Loopback
tun.1.fcj.ga.edovo.com.                 IN      A       172.16.1.18	; Tunnel 1 IP
tun.2.fcj.ga.edovo.com.                 IN      A       172.16.9.18	; Tunnel 2 IP
lan.fcj.ga.edovo.com.                   IN      A       10.1.16.1	; RTR LAN IP
cdn.fcj.ga.edovo.com.                   IN      A       10.1.16.3	; CDN IP
ipmi.fcj.ga.edovo.com.                  IN      A       10.1.16.7	; IPMI IP

;Chatham County, NC
wan.ccj.nc.edovo.com.                   IN      A       184.2.223.105	; WAN IP
rtr.ccj.nc.edovo.com.                   IN      A       192.168.254.80  ; Router Loopback
tun.1.ccj.nc.edovo.com.                 IN      A       172.16.1.22	; Tunnel 1 IP
tun.2.ccj.nc.edovo.com.                 IN      A       172.16.9.22	; Tunnel 2 IP
lan.ccj.nc.edovo.com.                   IN      A       10.1.20.1	; RTR LAN IP
cdn.ccj.nc.edovo.com.                   IN      A       10.1.20.3	; CDN IP
ipmi.ccj.nc.edovo.com.                  IN      A       10.1.20.7	; IPMI IP

;Cleveland County, OK
wan.ccj.ok.edovo.com.			IN	A	184.178.17.76	; WAN IP
rtr.ccj.ok.edovo.com.                   IN      A       192.168.254.81  ; Router Loopback
tun.1.ccj.ok.edovo.com.                 IN      A       172.16.1.26     ; Tunnel 1 IP
tun.2.ccj.ok.edovo.com.                 IN      A       172.16.9.26     ; Tunnel 2 IP
lan.ccj.ok.edovo.com.                   IN      A       10.1.24.1       ; RTR LAN IP
cdn.ccj.ok.edovo.com.                   IN      A       10.1.24.3       ; CDN IP
ipmi.ccj.ok.edovo.com.                  IN      A       10.1.24.7       ; IPMI IP
sw.1.ccj.ok.edovo.com.			IN	A	10.1.24.11	; Ruckus Switch 1
sw.2.ccj.ok.edovo.com.                  IN      A       10.1.24.12      ; Ruckus Switch 2
sw.3.ccj.ok.edovo.com.                  IN      A       10.1.24.13      ; Ruckus Switch 3
sw.4.ccj.ok.edovo.com.                  IN      A       10.1.24.14      ; Ruckus Switch 4
sw.5.ccj.ok.edovo.com.                  IN      A       10.1.24.15      ; Ruckus Switch 5
sw.6.ccj.ok.edovo.com.                  IN      A       10.1.24.16      ; Ruckus Switch 6
sw.7.ccj.ok.edovo.com.                  IN      A       10.1.24.17      ; Ruckus Switch 7
ap.1.ccj.ok.edovo.com.			IN	A	10.1.24.21	; Ruckus AP 1
ap.2.ccj.ok.edovo.com.                  IN      A       10.1.24.22      ; Ruckus AP 2
ap.3.ccj.ok.edovo.com.                  IN      A       10.1.24.23      ; Ruckus AP 3
ap.4.ccj.ok.edovo.com.                  IN      A       10.1.24.24      ; Ruckus AP 4
ap.5.ccj.ok.edovo.com.                  IN      A       10.1.24.25      ; Ruckus AP 5
ap.6.ccj.ok.edovo.com.                  IN      A       10.1.24.26      ; Ruckus AP 6
ap.7.ccj.ok.edovo.com.                  IN      A       10.1.24.27      ; Ruckus AP 7
ap.8.ccj.ok.edovo.com.                  IN      A       10.1.24.28      ; Ruckus AP 8
ap.9.ccj.ok.edovo.com.                  IN      A       10.1.24.29      ; Ruckus AP 9
ap.10.ccj.ok.edovo.com.                 IN      A       10.1.24.30      ; Ruckus AP 10
ap.11.ccj.ok.edovo.com.                 IN      A       10.1.24.31      ; Ruckus AP 11
ap.12.ccj.ok.edovo.com.                 IN      A       10.1.24.32      ; Ruckus AP 12
ap.13.ccj.ok.edovo.com.                 IN      A       10.1.24.33      ; Ruckus AP 13
ap.14.ccj.ok.edovo.com.                 IN      A       10.1.24.34      ; Ruckus AP 14
ap.15.ccj.ok.edovo.com.                 IN      A       10.1.24.35      ; Ruckus AP 15
ap.16.ccj.ok.edovo.com.                 IN      A       10.1.24.36      ; Ruckus AP 16
ap.17.ccj.ok.edovo.com.                 IN      A       10.1.24.37      ; Ruckus AP 17
ap.18.ccj.ok.edovo.com.                 IN      A       10.1.24.38      ; Ruckus AP 18
ap.19.ccj.ok.edovo.com.                 IN      A       10.1.24.39      ; Ruckus AP 19
ap.20.ccj.ok.edovo.com.                 IN      A       10.1.24.40      ; Ruckus AP 20
ap.21.ccj.ok.edovo.com.                 IN      A       10.1.24.41      ; Ruckus AP 21
ap.22.ccj.ok.edovo.com.                 IN      A       10.1.24.42      ; Ruckus AP 22
ap.23.ccj.ok.edovo.com.                 IN      A       10.1.24.43      ; Ruckus AP 23
ap.24.ccj.ok.edovo.com.                 IN      A       10.1.24.44      ; Ruckus AP 24
ap.25.ccj.ok.edovo.com.                 IN      A       10.1.24.45      ; Ruckus AP 25
ap.26.ccj.ok.edovo.com.                 IN      A       10.1.24.46      ; Ruckus AP 26
ap.27.ccj.ok.edovo.com.                 IN      A       10.1.24.47      ; Ruckus AP 27
ap.28.ccj.ok.edovo.com.                 IN      A       10.1.24.48      ; Ruckus AP 28
ap.29.ccj.ok.edovo.com.                 IN      A       10.1.24.49      ; Ruckus AP 29
ap.30.ccj.ok.edovo.com.                 IN      A       10.1.24.50      ; Ruckus AP 30
ap.31.ccj.ok.edovo.com.                 IN      A       10.1.24.51      ; Ruckus AP 31
ap.32.ccj.ok.edovo.com.                 IN      A       10.1.24.52      ; Ruckus AP 32
ap.33.ccj.ok.edovo.com.                 IN      A       10.1.24.53      ; Ruckus AP 33
ap.34.ccj.ok.edovo.com.                 IN      A       10.1.24.54      ; Ruckus AP 34

;Hendrics County, IN
wan.hcj.in.edovo.com.                   IN      A       50.195.131.169  ; WAN IP
rtr.hcj.in.edovo.com.                   IN      A       192.168.254.82  ; Router Loopback
tun.1.hcj.in.edovo.com.                 IN      A       172.16.1.30     ; Tunnel 1 IP
tun.2.hcj.in.edovo.com.                 IN      A       172.16.9.30     ; Tunnel 2 IP
lan.hcj.in.edovo.com.                   IN      A       10.1.28.1       ; RTR LAN IP
cdn.hcj.in.edovo.com.                   IN      A       10.1.28.3       ; CDN IP
ipmi.hcj.in.edovo.com.                  IN      A       10.1.28.7       ; IPMI IP
ap.1.hcj.in.edovo.com.			IN	A	10.1.28.21	; Ruckus AP 1
ap.2.hcj.in.edovo.com.			IN	A	10.1.28.22	; Ruckus AP 2

;KDOC Topeka Correctional Facility
wan.tcf.ks.edovo.com.                   IN      A       67.130.255.46	; WAN IP
rtr.tcf.ks.edovo.com.                   IN      A       192.168.254.83  ; Router Loopback
tun.1.tcf.ks.edovo.com.                 IN      A       172.16.1.34     ; Tunnel 1 IP
tun.2.tcf.ks.edovo.com.                 IN      A       172.16.9.34     ; Tunnel 2 IP
lan.tcf.ks.edovo.com.                   IN      A       10.1.32.1       ; RTR LAN IP
cdn.tcf.ks.edovo.com.                   IN      A       10.1.32.3       ; CDN IP
ipmi.tcf.ks.edovo.com.                  IN      A       10.1.32.7       ; IPMI IP
pri.1.tcf.ks.edovo.com.			IN	A	10.1.32.8	; Mailroom Printer
wrk.1.tcf.ks.edovo.com.			IN	A	10.1.32.9	; Mailroom Workstation
sw.1.tcf.ks.edovo.com.			IN	A	10.1.32.11	; Mailroom Switch
ap.1.tcf.ks.edovo.com.			IN	A	10.1.32.21	; Ruckus AP 1
ap.2.tcf.ks.edovo.com.                  IN      A       10.1.32.22      ; Ruckus AP 2
ap.3.tcf.ks.edovo.com.                  IN      A       10.1.32.23      ; Ruckus AP 3
ap.4.tcf.ks.edovo.com.                  IN      A       10.1.32.24      ; Ruckus AP 4
ap.5.tcf.ks.edovo.com.                  IN      A       10.1.32.25      ; Ruckus AP 5
ap.6.tcf.ks.edovo.com.                  IN      A       10.1.32.26      ; Ruckus AP 6
ap.7.tcf.ks.edovo.com.                  IN      A       10.1.32.27      ; Ruckus AP 7
ap.8.tcf.ks.edovo.com.                  IN      A       10.1.32.28      ; Ruckus AP 8
ap.9.tcf.ks.edovo.com.                  IN      A       10.1.32.29      ; Ruckus AP 9
ap.10.tcf.ks.edovo.com.                 IN      A       10.1.32.30      ; Ruckus AP 10
ap.11.tcf.ks.edovo.com.                 IN      A       10.1.32.31      ; Ruckus AP 11
ap.12.tcf.ks.edovo.com.                 IN      A       10.1.32.32      ; Ruckus AP 12
ap.13.tcf.ks.edovo.com.                 IN      A       10.1.32.33      ; Ruckus AP 13
ap.14.tcf.ks.edovo.com.                 IN      A       10.1.32.34      ; Ruckus AP 14
ap.15.tcf.ks.edovo.com.                 IN      A       10.1.32.35      ; Ruckus AP 15
ap.16.tcf.ks.edovo.com.                 IN      A       10.1.32.36      ; Ruckus AP 16
ap.17.tcf.ks.edovo.com.                 IN      A       10.1.32.37      ; Ruckus AP 17
ap.18.tcf.ks.edovo.com.                 IN      A       10.1.32.38      ; Ruckus AP 18
ap.19.tcf.ks.edovo.com.                 IN      A       10.1.32.39      ; Ruckus AP 19
ap.20.tcf.ks.edovo.com.                 IN      A       10.1.32.40      ; Ruckus AP 20
ap.21.tcf.ks.edovo.com.                 IN      A       10.1.32.41      ; Ruckus AP 21
ap.22.tcf.ks.edovo.com.                 IN      A       10.1.32.42      ; Ruckus AP 22
ap.23.tcf.ks.edovo.com.                 IN      A       10.1.32.43      ; Ruckus AP 23
ap.24.tcf.ks.edovo.com.			IN	A	10.1.32.44	; Ruckus AP 24
ap.25.tcf.ks.edovo.com.			IN	A	10.1.32.45	; Ruckus AP 25
;KDOC Norton Correctional Facility
wan.ncf.ks.edovo.com.                   IN      A       67.128.234.190  ; WAN IP
rtr.ncf.ks.edovo.com.                   IN      A       192.168.254.84  ; Router Loopback
tun.1.ncf.ks.edovo.com.                 IN      A       172.16.1.38     ; Tunnel 1 IP
tun.2.ncf.ks.edovo.com.                 IN      A       172.16.9.38     ; Tunnel 2 IP
lan.ncf.ks.edovo.com.                   IN      A       10.1.36.1       ; RTR LAN IP
cdn.ncf.ks.edovo.com.                   IN      A       10.1.36.3       ; CDN IP
ipmi.ncf.ks.edovo.com.                  IN      A       10.1.36.7       ; IPMI IP
pri.1.ncf.ks.edovo.com.			IN	A	10.1.36.8	; Mailroom Printer
wrk.1.ncf.ks.edovo.com.			IN	A	10.1.36.9	; Mailroom Workstation
sw.1.ncf.ks.edovo.com.			IN	A	10.1.36.11	; Mailroom Switch
ap.1.ncf.ks.edovo.com.                  IN      A       10.1.36.21      ; Ruckus AP 1
ap.2.ncf.ks.edovo.com.                  IN      A       10.1.36.22      ; Ruckus AP 2
ap.3.ncf.ks.edovo.com.                  IN      A       10.1.36.23      ; Ruckus AP 3
ap.4.ncf.ks.edovo.com.                  IN      A       10.1.36.24      ; Ruckus AP 4
ap.5.ncf.ks.edovo.com.                  IN      A       10.1.36.25      ; Ruckus AP 5
ap.6.ncf.ks.edovo.com.                  IN      A       10.1.36.26      ; Ruckus AP 6
ap.7.ncf.ks.edovo.com.                  IN      A       10.1.36.27      ; Ruckus AP 7
ap.8.ncf.ks.edovo.com.                  IN      A       10.1.36.28      ; Ruckus AP 8
ap.9.ncf.ks.edovo.com.                  IN      A       10.1.36.29      ; Ruckus AP 9
ap.10.ncf.ks.edovo.com.                 IN      A       10.1.36.30      ; Ruckus AP 10
ap.11.ncf.ks.edovo.com.                 IN      A       10.1.36.31      ; Ruckus AP 11
ap.12.ncf.ks.edovo.com.                 IN      A       10.1.36.32      ; Ruckus AP 12
ap.13.ncf.ks.edovo.com.                 IN      A       10.1.36.33      ; Ruckus AP 13
ap.14.ncf.ks.edovo.com.                 IN      A       10.1.36.34      ; Ruckus AP 14
ap.15.ncf.ks.edovo.com.                 IN      A       10.1.36.35      ; Ruckus AP 15
ap.16.ncf.ks.edovo.com.                 IN      A       10.1.36.36      ; Ruckus AP 16
ap.17.ncf.ks.edovo.com.                 IN      A       10.1.36.37      ; Ruckus AP 17
ap.18.ncf.ks.edovo.com.                 IN      A       10.1.36.38      ; Ruckus AP 18
ap.19.ncf.ks.edovo.com.                 IN      A       10.1.36.39      ; Ruckus AP 19
ap.20.ncf.ks.edovo.com.                 IN      A       10.1.36.40      ; Ruckus AP 20
ap.21.ncf.ks.edovo.com.                 IN      A       10.1.36.41      ; Ruckus AP 21
ap.22.ncf.ks.edovo.com.                 IN      A       10.1.36.42      ; Ruckus AP 22
ap.23.ncf.ks.edovo.com.                 IN      A       10.1.36.43      ; Ruckus AP 23
ap.24.ncf.ks.edovo.com.			IN	A	10.1.36.44	; Ruckus AP 24
ap.25.ncf.ks.edovo.com.			IN	A	10.1.36.45	; Ruckus AP 25
ap.26.ncf.ks.edovo.com.			IN	A	10.1.36.46	; Ruckus AP 26

;KDOC Lansing Correctional Facility
wan.lcf.ks.edovo.com.                   IN      A       67.130.251.46	; WAN IP
rtr.lcf.ks.edovo.com.                   IN      A       192.168.254.85  ; Router Loopback
tun.1.lcf.ks.edovo.com.                 IN      A       172.16.1.42     ; Tunnel 1 IP
tun.2.lcf.ks.edovo.com.                 IN      A       172.16.9.42     ; Tunnel 2 IP
lan.lcf.ks.edovo.com.                   IN      A       10.1.40.1       ; RTR LAN IP
cdn.lcf.ks.edovo.com.                   IN      A       10.1.40.3       ; CDN IP
ipmi.lcf.ks.edovo.com.                  IN      A       10.1.40.7       ; IPMI IP
pri.1.lcf.ks.edovo.com.			IN	A	10.1.40.8	; Mailroom Printer
wrk.1.lcf.ks.edovo.com.			IN	A	10.1.40.9	; Mailroom Workstation
sw.1.lcf.ks.edovo.com.			IN	A	10.1.40.11	; Mailroom Switch
ap.1.lcf.ks.edovo.com.                  IN      A       10.1.40.21      ; Ruckus AP 1
ap.2.lcf.ks.edovo.com.                  IN      A       10.1.40.22      ; Ruckus AP 2
ap.3.lcf.ks.edovo.com.                  IN      A       10.1.40.23      ; Ruckus AP 3
ap.4.lcf.ks.edovo.com.                  IN      A       10.1.40.24      ; Ruckus AP 4
ap.5.lcf.ks.edovo.com.                  IN      A       10.1.40.25      ; Ruckus AP 5
ap.6.lcf.ks.edovo.com.                  IN      A       10.1.40.26      ; Ruckus AP 6
ap.7.lcf.ks.edovo.com.                  IN      A       10.1.40.27      ; Ruckus AP 7
ap.8.lcf.ks.edovo.com.                  IN      A       10.1.40.28      ; Ruckus AP 8
ap.9.lcf.ks.edovo.com.                  IN      A       10.1.40.29      ; Ruckus AP 9
ap.10.lcf.ks.edovo.com.                 IN      A       10.1.40.30      ; Ruckus AP 10
ap.11.lcf.ks.edovo.com.                 IN      A       10.1.40.31      ; Ruckus AP 11
ap.12.lcf.ks.edovo.com.                 IN      A       10.1.40.32      ; Ruckus AP 12
ap.13.lcf.ks.edovo.com.                 IN      A       10.1.40.33      ; Ruckus AP 13
ap.14.lcf.ks.edovo.com.                 IN      A       10.1.40.34      ; Ruckus AP 14
ap.15.lcf.ks.edovo.com.                 IN      A       10.1.40.35      ; Ruckus AP 15
ap.16.lcf.ks.edovo.com.                 IN      A       10.1.40.36      ; Ruckus AP 16
ap.17.lcf.ks.edovo.com.                 IN      A       10.1.40.37      ; Ruckus AP 17
ap.18.lcf.ks.edovo.com.                 IN      A       10.1.40.38      ; Ruckus AP 18
ap.19.lcf.ks.edovo.com.                 IN      A       10.1.40.39      ; Ruckus AP 19
ap.20.lcf.ks.edovo.com.                 IN      A       10.1.40.40      ; Ruckus AP 20
ap.21.lcf.ks.edovo.com.                 IN      A       10.1.40.41      ; Ruckus AP 21
ap.22.lcf.ks.edovo.com.                 IN      A       10.1.40.42      ; Ruckus AP 22
ap.23.lcf.ks.edovo.com.                 IN      A       10.1.40.43      ; Ruckus AP 23
ap.24.lcf.ks.edovo.com.                 IN      A       10.1.40.44      ; Ruckus AP 24
ap.25.lcf.ks.edovo.com.                 IN      A       10.1.40.45      ; Ruckus AP 25
ap.26.lcf.ks.edovo.com.                 IN      A       10.1.40.46      ; Ruckus AP 26
ap.27.lcf.ks.edovo.com.                 IN      A       10.1.40.47      ; Ruckus AP 27
ap.28.lcf.ks.edovo.com.                 IN      A       10.1.40.48      ; Ruckus AP 28
ap.29.lcf.ks.edovo.com.                 IN      A       10.1.40.49      ; Ruckus AP 29
ap.30.lcf.ks.edovo.com.                 IN      A       10.1.40.50      ; Ruckus AP 30
ap.31.lcf.ks.edovo.com.                 IN      A       10.1.40.51      ; Ruckus AP 31
ap.32.lcf.ks.edovo.com.                 IN      A       10.1.40.52      ; Ruckus AP 32
ap.33.lcf.ks.edovo.com.                 IN      A       10.1.40.53      ; Ruckus AP 33
ap.34.lcf.ks.edovo.com.                 IN      A       10.1.40.54      ; Ruckus AP 34
ap.35.lcf.ks.edovo.com.                 IN      A       10.1.40.55      ; Ruckus AP 35
ap.36.lcf.ks.edovo.com.                 IN      A       10.1.40.56      ; Ruckus AP 36
ap.37.lcf.ks.edovo.com.                 IN      A       10.1.40.57      ; Ruckus AP 37
ap.38.lcf.ks.edovo.com.                 IN      A       10.1.40.58      ; Ruckus AP 38
ap.39.lcf.ks.edovo.com.                 IN      A       10.1.40.59      ; Ruckus AP 39
ap.40.lcf.ks.edovo.com.                 IN      A       10.1.40.60      ; Ruckus AP 40
ap.41.lcf.ks.edovo.com.                 IN      A       10.1.40.61      ; Ruckus AP 41
ap.42.lcf.ks.edovo.com.                 IN      A       10.1.40.62      ; Ruckus AP 42
ap.43.lcf.ks.edovo.com.                 IN      A       10.1.40.63      ; Ruckus AP 43
ap.44.lcf.ks.edovo.com.                 IN      A       10.1.40.64      ; Ruckus AP 44
ap.45.lcf.ks.edovo.com.                 IN      A       10.1.40.65      ; Ruckus AP 45
ap.46.lcf.ks.edovo.com.                 IN      A       10.1.40.66      ; Ruckus AP 46
ap.47.lcf.ks.edovo.com.                 IN      A       10.1.40.67      ; Ruckus AP 47
ap.48.lcf.ks.edovo.com.                 IN      A       10.1.40.68      ; Ruckus AP 48
ap.49.lcf.ks.edovo.com.                 IN      A       10.1.40.69      ; Ruckus AP 49
ap.50.lcf.ks.edovo.com.                 IN      A       10.1.40.70      ; Ruckus AP 50
ap.51.lcf.ks.edovo.com.                 IN      A       10.1.40.71      ; Ruckus AP 51


;KDOC Kansas Juvenile Corrections Complex
wan.kjc.ks.edovo.com.                   IN      A       67.128.229.254  ; WAN IP
rtr.kjc.ks.edovo.com.                   IN      A       192.168.254.86  ; Router Loopback
tun.1.kjc.ks.edovo.com.                 IN      A       172.16.1.46     ; Tunnel 1 IP
tun.2.kjc.ks.edovo.com.                 IN      A       172.16.9.46     ; Tunnel 2 IP
lan.kjc.ks.edovo.com.                   IN      A       10.1.44.1       ; RTR LAN IP
cdn.kjc.ks.edovo.com.                   IN      A       10.1.44.3       ; CDN IP
ipmi.kjc.ks.edovo.com.                  IN      A       10.1.44.7       ; IPMI IP
pri.1.kjc.ks.edovo.com.			IN	A	10.1.44.8	; Mailroom Printer
wrk.1.kjc.ks.edovo.com.			IN	A	10.1.44.9	; Mailroom Workstation
sw.1.kjc.ks.edovo.com.			IN	A	10.1.44.11	; Mailroom Switch
ap.1.kjc.ks.edovo.com.                  IN      A       10.1.44.21      ; Ruckus AP 1
ap.2.kjc.ks.edovo.com.                  IN      A       10.1.44.22      ; Ruckus AP 2
ap.3.kjc.ks.edovo.com.                  IN      A       10.1.44.23      ; Ruckus AP 3
ap.4.kjc.ks.edovo.com.                  IN      A       10.1.44.24      ; Ruckus AP 4
ap.5.kjc.ks.edovo.com.                  IN      A       10.1.44.25      ; Ruckus AP 5
ap.6.kjc.ks.edovo.com.                  IN      A       10.1.44.26      ; Ruckus AP 6
ap.7.kjc.ks.edovo.com.                  IN      A       10.1.44.27      ; Ruckus AP 7
ap.8.kjc.ks.edovo.com.                  IN      A       10.1.44.28      ; Ruckus AP 8
ap.9.kjc.ks.edovo.com.                  IN      A       10.1.44.29      ; Ruckus AP 9
ap.10.kjc.ks.edovo.com.                 IN      A       10.1.44.30      ; Ruckus AP 10
ap.11.kjc.ks.edovo.com.                 IN      A       10.1.44.31      ; Ruckus AP 11
ap.12.kjc.ks.edovo.com.                 IN      A       10.1.44.32      ; Ruckus AP 12
ap.13.kjc.ks.edovo.com.                 IN      A       10.1.44.33      ; Ruckus AP 13
ap.14.kjc.ks.edovo.com.                 IN      A       10.1.44.34      ; Ruckus AP 14
ap.15.kjc.ks.edovo.com.                 IN      A       10.1.44.35      ; Ruckus AP 15
ap.16.kjc.ks.edovo.com.                 IN      A       10.1.44.36      ; Ruckus AP 16
ap.17.kjc.ks.edovo.com.                 IN      A       10.1.44.37      ; Ruckus AP 17

;KDOC El Dorado Correctional Facility
wan.edc.ks.edovo.com.                   IN      A       63.149.181.158  ; WAN IP
rtr.edc.ks.edovo.com.                   IN      A       192.168.254.87  ; Router Loopback
tun.1.edc.ks.edovo.com.                 IN      A       172.16.1.50	; Tunnel 1 IP
tun.2.edc.ks.edovo.com.                 IN      A       172.16.9.50     ; Tunnel 2 IP
lan.edc.ks.edovo.com.                   IN      A       10.1.48.1       ; RTR LAN IP
cdn.edc.ks.edovo.com.                   IN      A       10.1.48.3       ; CDN IP
ipmi.edc.ks.edovo.com.                  IN      A       10.1.48.7       ; IPMI IP
pri.1.edc.ks.edovo.com.			IN	A	10.1.48.8	; Mailroom Printer
wrk.1.edc.ks.edovo.com.			IN	A	10.1.48.9	; Mailroom Workstation
sw.1.edc.ks.edovo.com.			IN	A	10.1.48.11	; Mailroom Switch
ap.1.edc.ks.edovo.com.			IN	A	10.1.48.21	; Ruckus AP 1
ap.2.edc.ks.edovo.com.			IN	A	10.1.48.22	; Ruckus AP 2
ap.3.edc.ks.edovo.com.			IN	A	10.1.48.23	; Ruckus AP 3
ap.4.edc.ks.edovo.com.                  IN      A       10.1.48.24      ; Ruckus AP 4
ap.5.edc.ks.edovo.com.                  IN      A       10.1.48.25      ; Ruckus AP 5
ap.6.edc.ks.edovo.com.                  IN      A       10.1.48.26      ; Ruckus AP 6
ap.7.edc.ks.edovo.com.                  IN      A       10.1.48.27      ; Ruckus AP 7
ap.8.edc.ks.edovo.com.                  IN      A       10.1.48.28      ; Ruckus AP 8
ap.9.edc.ks.edovo.com.                  IN      A       10.1.48.29      ; Ruckus AP 9
ap.10.edc.ks.edovo.com.                 IN      A       10.1.48.30      ; Ruckus AP 10
ap.11.edc.ks.edovo.com.                 IN      A       10.1.48.31      ; Ruckus AP 11
ap.12.edc.ks.edovo.com.                 IN      A       10.1.48.32      ; Ruckus AP 12
ap.13.edc.ks.edovo.com.                 IN      A       10.1.48.33      ; Ruckus AP 13
ap.14.edc.ks.edovo.com.                 IN      A       10.1.48.34      ; Ruckus AP 14
ap.15.edc.ks.edovo.com.                 IN      A       10.1.48.35      ; Ruckus AP 15
ap.16.edc.ks.edovo.com.                 IN      A       10.1.48.36      ; Ruckus AP 16
ap.17.edc.ks.edovo.com.                 IN      A       10.1.48.37      ; Ruckus AP 17
ap.18.edc.ks.edovo.com.                 IN      A       10.1.48.38      ; Ruckus AP 18
ap.19.edc.ks.edovo.com.                 IN      A       10.1.48.39      ; Ruckus AP 19
ap.20.edc.ks.edovo.com.                 IN      A       10.1.48.40      ; Ruckus AP 20
ap.21.edc.ks.edovo.com.                 IN      A       10.1.48.41      ; Ruckus AP 21
ap.22.edc.ks.edovo.com.                 IN      A       10.1.48.42      ; Ruckus AP 22
ap.23.edc.ks.edovo.com.                 IN      A       10.1.48.43      ; Ruckus AP 23
ap.24.edc.ks.edovo.com.                 IN      A       10.1.48.44      ; Ruckus AP 24
ap.25.edc.ks.edovo.com.                 IN      A       10.1.48.45      ; Ruckus AP 25
ap.26.edc.ks.edovo.com.                 IN      A       10.1.48.46      ; Ruckus AP 26
ap.27.edc.ks.edovo.com.                 IN      A       10.1.48.47      ; Ruckus AP 27
ap.28.edc.ks.edovo.com.                 IN      A       10.1.48.48      ; Ruckus AP 28
ap.29.edc.ks.edovo.com.                 IN      A       10.1.48.49      ; Ruckus AP 29
ap.30.edc.ks.edovo.com.                 IN      A       10.1.48.50      ; Ruckus AP 3o
ap.31.edc.ks.edovo.com.                 IN      A       10.1.48.51      ; Ruckus AP 31
ap.32.edc.ks.edovo.com.                 IN      A       10.1.48.52      ; Ruckus AP 32
ap.33.edc.ks.edovo.com.                 IN      A       10.1.48.53      ; Ruckus AP 33
ap.34.edc.ks.edovo.com.                 IN      A       10.1.48.54      ; Ruckus AP 34
ap.35.edc.ks.edovo.com.                 IN      A       10.1.48.55      ; Ruckus AP 35
ap.36.edc.ks.edovo.com.                 IN      A       10.1.48.56      ; Ruckus AP 36
ap.37.edc.ks.edovo.com.                 IN      A       10.1.48.57      ; Ruckus AP 37

;KDOC Stockton Correctional Faciity
wan.scf.ks.edovo.com.                   IN      A       67.128.233.102  ; WAN IP
rtr.scf.ks.edovo.com.                   IN      A       192.168.254.88  ; Router Loopback
tun.1.scf.ks.edovo.com.                 IN      A       172.16.1.54     ; Tunnel 1 IP
tun.2.scf.ks.edovo.com.                 IN      A       172.16.9.54     ; Tunnel 2 IP
lan.scf.ks.edovo.com.                   IN      A       10.1.52.1       ; RTR LAN IP
cdn.scf.ks.edovo.com.                   IN      A       10.1.52.3       ; CDN IP
ipmi.scf.ks.edovo.com.                  IN      A       10.1.52.7       ; IPMI IP
ap.1.scf.ks.edovo.com.			IN	A	10.1.52.21	; Ruckus AP 1

;KDOC Wichita Work Release Facility
wan.wwr.ks.edovo.com.                   IN      A       72.164.69.182	; WAN IP
rtr.wwr.ks.edovo.com.                   IN      A       192.168.254.89  ; Router Loopback
tun.1.wwr.ks.edovo.com.                 IN      A       172.16.1.58     ; Tunnel 1 IP
tun.2.wwr.ks.edovo.com.                 IN      A       172.16.9.58     ; Tunnel 2 IP
lan.wwr.ks.edovo.com.                   IN      A       10.1.56.1       ; RTR LAN IP
cdn.wwr.ks.edovo.com.                   IN      A       10.1.56.3       ; CDN IP
ipmi.wwr.ks.edovo.com.                  IN      A       10.1.56.7       ; IPMI IP
pri.1.wwr.ks.edovo.com.			IN	A	10.1.56.8	; Mailroom Printer
wrk.1.wwr.ks.edovo.com.			IN	A	10.1.56.9	; Mailroom Workstation
sw.1.wwr.ks.edovo.com.			IN	A	10.1.56.11	; Mailroom Switch
ap.1.wwr.ks.edovo.com.			IN	A	10.1.56.21	; Ruckus AP 1
ap.2.wwr.ks.edovo.com.                  IN      A       10.1.56.22      ; Ruckus AP 2
ap.3.wwr.ks.edovo.com.                  IN      A       10.1.56.23      ; Ruckus AP 3
ap.4.wwr.ks.edovo.com.                  IN      A       10.1.56.24      ; Ruckus AP 4

;KDOC Hutchinson Correctional Facility
wan.hcf.ks.edovo.com.                   IN      A       65.117.144.238	; WAN IP
rtr.hcf.ks.edovo.com.                   IN      A       192.168.254.90  ; Router Loopback
tun.1.hcf.ks.edovo.com.                 IN      A       172.16.1.62     ; Tunnel 1 IP
tun.2.hcf.ks.edovo.com.                 IN      A       172.16.9.62     ; Tunnel 2 IP
lan.hcf.ks.edovo.com.                   IN      A       10.1.60.1       ; RTR LAN IP
cdn.hcf.ks.edovo.com.                   IN      A       10.1.60.3       ; CDN IP
ipmi.hcf.ks.edovo.com.                  IN      A       10.1.60.7       ; IPMI IP
pri.1.hcf.ks.edovo.com.			IN	A	10.1.60.8	; Mailroom Printer
wrk.1.hcf.ks.edovo.com.			IN	A	10.1.60.9	; Mailroom Workstation
sw.1.hcf.ks.edovo.com.			IN	A	10.1.60.11	; Mailroom Switch
ap.1.hcf.ks.edovo.com.			IN	A	10.1.60.21	; Ruckus AP 1
ap.2.hcf.ks.edovo.com.                  IN      A       10.1.60.22      ; Ruckus AP 2
ap.3.hcf.ks.edovo.com.                  IN      A       10.1.60.23      ; Ruckus AP 3
ap.4.hcf.ks.edovo.com.                  IN      A       10.1.60.24      ; Ruckus AP 4
ap.5.hcf.ks.edovo.com.                  IN      A       10.1.60.25      ; Ruckus AP 5
ap.6.hcf.ks.edovo.com.                  IN      A       10.1.60.26      ; Ruckus AP 6
ap.7.hcf.ks.edovo.com.                  IN      A       10.1.60.27      ; Ruckus AP 7
ap.8.hcf.ks.edovo.com.                  IN      A       10.1.60.28      ; Ruckus AP 8
ap.9.hcf.ks.edovo.com.                  IN      A       10.1.60.29      ; Ruckus AP 9
ap.10.hcf.ks.edovo.com.                 IN      A       10.1.60.30      ; Ruckus AP 10
ap.11.hcf.ks.edovo.com.                 IN      A       10.1.60.31      ; Ruckus AP 11
ap.12.hcf.ks.edovo.com.                 IN      A       10.1.60.32      ; Ruckus AP 12
ap.13.hcf.ks.edovo.com.                 IN      A       10.1.60.33      ; Ruckus AP 13
ap.14.hcf.ks.edovo.com.                 IN      A       10.1.60.34      ; Ruckus AP 14
ap.15.hcf.ks.edovo.com.                 IN      A       10.1.60.35      ; Ruckus AP 15
ap.16.hcf.ks.edovo.com.                 IN      A       10.1.60.36      ; Ruckus AP 16
ap.17.hcf.ks.edovo.com.                 IN      A       10.1.60.37      ; Ruckus AP 17
ap.18.hcf.ks.edovo.com.                 IN      A       10.1.60.38      ; Ruckus AP 18
ap.19.hcf.ks.edovo.com.                 IN      A       10.1.60.39      ; Ruckus AP 19
ap.20.hcf.ks.edovo.com.                 IN      A       10.1.60.40      ; Ruckus AP 20
ap.21.hcf.ks.edovo.com.                 IN      A       10.1.60.41      ; Ruckus AP 21
ap.22.hcf.ks.edovo.com.                 IN      A       10.1.60.42      ; Ruckus AP 22
ap.23.hcf.ks.edovo.com.                 IN      A       10.1.60.43      ; Ruckus AP 23
ap.24.hcf.ks.edovo.com.                 IN      A       10.1.60.44      ; Ruckus AP 24

;KDOC Ellsworth Correctional Facility
wan.ecf.ks.edovo.com.                   IN      A       67.128.234.142  ; WAN IP
rtr.ecf.ks.edovo.com.                   IN      A       192.168.254.91  ; Router Loopback
tun.1.ecf.ks.edovo.com.                 IN      A       172.16.1.66     ; Tunnel 1 IP
tun.2.ecf.ks.edovo.com.                 IN      A       172.16.9.66     ; Tunnel 2 IP
lan.ecf.ks.edovo.com.                   IN      A       10.1.64.1       ; RTR LAN IP
cdn.ecf.ks.edovo.com.                   IN      A       10.1.64.3       ; CDN IP
ipmi.ecf.ks.edovo.com.                  IN      A       10.1.64.7       ; IPMI IP
pri.1.ecf.ks.edovo.com.			IN	A	10.1.64.8	; Mailroom Printer
wrk.1.ecf.ks.edovo.com.			IN	A	10.1.64.9	; Mailroom Workstation
sw.1.ecf.ks.edovo.com.			IN	A	10.1.64.11	; Mailroom Switch
ap.1.ecf.ks.edovo.com.			IN	A	10.1.64.21	; Ruckus AP 1
ap.2.ecf.ks.edovo.com.                  IN      A       10.1.64.22      ; Ruckus AP 2
ap.3.ecf.ks.edovo.com.                  IN      A       10.1.64.23      ; Ruckus AP 3
ap.4.ecf.ks.edovo.com.                  IN      A       10.1.64.24      ; Ruckus AP 4
ap.5.ecf.ks.edovo.com.                  IN      A       10.1.64.25      ; Ruckus AP 5
ap.6.ecf.ks.edovo.com.                  IN      A       10.1.64.26      ; Ruckus AP 6
ap.7.ecf.ks.edovo.com.                  IN      A       10.1.64.27      ; Ruckus AP 7
ap.8.ecf.ks.edovo.com.                  IN      A       10.1.64.28      ; Ruckus AP 8
ap.9.ecf.ks.edovo.com.                  IN      A       10.1.64.29      ; Ruckus AP 9
ap.10.ecf.ks.edovo.com.                 IN      A       10.1.64.30      ; Ruckus AP 10
ap.11.ecf.ks.edovo.com.                 IN      A       10.1.64.31      ; Ruckus AP 11
ap.12.ecf.ks.edovo.com.                 IN      A       10.1.64.32      ; Ruckus AP 12
ap.13.ecf.ks.edovo.com.                 IN      A       10.1.64.33      ; Ruckus AP 13

;KDOC El Dorado Correctional Facility - Oswego Medium
wan.edmed.ks.edovo.com.                 IN      A       65.123.121.206	; WAN IP
rtr.edmed.ks.edovo.com.                 IN      A       192.168.254.92 	; Router Loopback
tun.1.edmed.ks.edovo.com.               IN      A       172.16.1.70    	; Tunnel 1 IP
tun.2.edmed.ks.edovo.com.               IN      A       172.16.9.70    	; Tunnel 2 IP
lan.edmed.ks.edovo.com.                 IN      A       10.1.68.1      	; RTR LAN IP
cdn.edmed.ks.edovo.com.                 IN      A       10.1.68.3      	; CDN IP
ipmi.edmed.ks.edovo.com.                IN      A       10.1.68.7      	; IPMI IP
pri.1.edmed.ks.edovo.com.		IN	A	10.1.68.8	; Mailroom Printer
wrk.1.edmed.ks.edovo.com.		IN	A	10.1.68.9	; Mailroom Workstation
sw.1.edmed.ks.edovo.com.		IN	A	10.1.68.11	; Mailroom Switch
ap.1.edmed.ks.edovo.com.		IN	A	10.1.68.21	; Ruckus AP 1
ap.2.edmed.ks.edovo.com.                IN      A       10.1.68.22      ; Ruckus AP 2
ap.3.edmed.ks.edovo.com.                IN      A       10.1.68.23      ; Ruckus AP 3
ap.4.edmed.ks.edovo.com.                IN      A       10.1.68.24      ; Ruckus AP 4
ap.5.edmed.ks.edovo.com.		IN	A	10.1.68.25	; Ruckus AP 5

;KDOC Winfield Correctional Facility
wan.wcf.ks.edovo.com.                   IN      A       63.149.181.126  ; WAN IP
rtr.wcf.ks.edovo.com.                   IN      A       192.168.254.93  ; Router Loopback
tun.1.wcf.ks.edovo.com.                 IN      A       172.16.1.74     ; Tunnel 1 IP
tun.2.wcf.ks.edovo.com.                 IN      A       172.16.9.74     ; Tunnel 2 IP
lan.wcf.ks.edovo.com.                   IN      A       10.1.72.1       ; RTR LAN IP
cdn.wcf.ks.edovo.com.                   IN      A       10.1.72.3       ; CDN IP
ipmi.wcf.ks.edovo.com.                  IN      A       10.1.72.7       ; IPMI IP
pri.1.wcf.ks.edovo.com.			IN	A	10.1.72.8	; Mailroom Printer
wrk.1.wcf.ks.edovo.com.			IN	A	10.1.72.9	; Mailroom Workstation
sw.1.wcf.ks.edovo.com.			IN	A	10.1.72.11	; Mailroom Switch
ap.1.wcf.ks.edovo.com.                  IN      A       10.1.72.21      ; Ruckus AP 1
ap.2.wcf.ks.edovo.com.                  IN      A       10.1.72.22      ; Ruckus AP 2
ap.3.wcf.ks.edovo.com.                  IN      A       10.1.72.23      ; Ruckus AP 3
ap.4.wcf.ks.edovo.com.                  IN      A       10.1.72.24      ; Ruckus AP 4
ap.5.wcf.ks.edovo.com.                  IN      A       10.1.72.25      ; Ruckus AP 5
ap.6.wcf.ks.edovo.com.                  IN      A       10.1.72.26      ; Ruckus AP 6
ap.7.wcf.ks.edovo.com.                  IN      A       10.1.72.27      ; Ruckus AP 7
ap.8.wcf.ks.edovo.com.                  IN      A       10.1.72.28      ; Ruckus AP 8
ap.9.wcf.ks.edovo.com.                  IN      A       10.1.72.29      ; Ruckus AP 9

;KDOC Larned Correctional Facility
wan.lrc.ks.edovo.com.                   IN      A       216.111.107.254 ; WAN IP
rtr.lrc.ks.edovo.com.                   IN      A       192.168.254.94  ; Router Loopback
tun.1.lrc.ks.edovo.com.                 IN      A       172.16.1.78     ; Tunnel 1 IP
tun.2.lrc.ks.edovo.com.                 IN      A       172.16.9.78     ; Tunnel 2 IP
lan.lrc.ks.edovo.com.                   IN      A       10.1.76.1       ; RTR LAN IP
cdn.lrc.ks.edovo.com.                   IN      A       10.1.76.3       ; CDN IP
ipmi.lrc.ks.edovo.com.                  IN      A       10.1.76.7       ; IPMI IP
pri.1.lrc.ks.edovo.com.			IN	A	10.1.76.8	; Mailroom Printer
wrk.1.lrc.ks.edovo.com.			IN	A	10.1.76.9	; Mailroom Workstation
sw.1.lrc.ks.edovo.com.			IN	A	10.1.76.11	; Mailroom Switch
ap.1.lrc.ks.edovo.com.                  IN      A       10.1.76.21      ; Ruckus AP 1
ap.2.lrc.ks.edovo.com.                  IN      A       10.1.76.22      ; Ruckus AP 2
ap.3.lrc.ks.edovo.com.                  IN      A       10.1.76.23      ; Ruckus AP 3
ap.4.lrc.ks.edovo.com.                  IN      A       10.1.76.24      ; Ruckus AP 4
ap.5.lrc.ks.edovo.com.                  IN      A       10.1.76.25      ; Ruckus AP 5
ap.6.lrc.ks.edovo.com.                  IN      A       10.1.76.26      ; Ruckus AP 6
ap.7.lrc.ks.edovo.com.                  IN      A       10.1.76.27      ; Ruckus AP 7
ap.8.lrc.ks.edovo.com.                  IN      A       10.1.76.28      ; Ruckus AP 8
ap.9.lrc.ks.edovo.com.                  IN      A       10.1.76.29      ; Ruckus AP 9
ap.10.lrc.ks.edovo.com.                 IN      A       10.1.76.30      ; Ruckus AP 10
ap.11.lrc.ks.edovo.com.                 IN      A       10.1.76.31      ; Ruckus AP 11
ap.12.lrc.ks.edovo.com.			IN	A	10.1.76.32	; Ruckus AP 12
ap.13.lrc.ks.edovo.com.                 IN      A       10.1.76.33      ; Ruckus AP 13
ap.14.lrc.ks.edovo.com.                 IN      A       10.1.76.34      ; Ruckus AP 14
ap.15.lrc.ks.edovo.com.                 IN      A       10.1.76.35      ; Ruckus AP 15
ap.16.lrc.ks.edovo.com.                 IN      A       10.1.76.36      ; Ruckus AP 16
ap.17.lrc.ks.edovo.com.                 IN      A       10.1.76.37      ; Ruckus AP 17
ap.18.lrc.ks.edovo.com.                 IN      A       10.1.76.38      ; Ruckus AP 18
ap.19.lrc.ks.edovo.com.                 IN      A       10.1.76.39      ; Ruckus AP 19
ap.20.lrc.ks.edovo.com.                 IN      A       10.1.76.40      ; Ruckus AP 20
ap.21.lrc.ks.edovo.com.                 IN      A       10.1.76.41      ; Ruckus AP 21

;Sacramento Youth Detention Facility
wan.syd.ca.edovo.com.                   IN      A       96.86.141.100	; WAN IP
rtr.syd.ca.edovo.com.                   IN      A       192.168.254.95  ; Router Loopback
tun.1.syd.ca.edovo.com.                 IN      A       172.16.1.82     ; Tunnel 1 IP
tun.2.syd.ca.edovo.com.                 IN      A       172.16.9.82     ; Tunnel 2 IP
lan.syd.ca.edovo.com.                   IN      A       10.1.80.1       ; RTR LAN IP
cdn.syd.ca.edovo.com.                   IN      A       10.1.80.3       ; CDN IP
ipmi.syd.ca.edovo.com.                  IN      A       10.1.80.7       ; IPMI IP
ap.1.syd.ca.edovo.com.			IN	A	10.1.80.21	; Ruckus AP 1
ap.2.syd.ca.edovo.com.                  IN      A       10.1.80.22      ; Ruckus AP 2

;ID DOC ISCC
wan.iscc.id.edovo.com.                  IN     	A       65.153.52.44	; WAN IP
rtr.iscc.id.edovo.com.                  IN     	A       192.168.254.96	; Router Loopback
tun.1.iscc.id.edovo.com.                IN     	A       172.16.1.86     ; Tunnel 1 IP
tun.2.iscc.id.edovo.com.                IN     	A       172.16.9.86     ; Tunnel 2 IP
lan.iscc.id.edovo.com.                  IN     	A       10.1.84.1       ; RTR LAN IP
cdn.iscc.id.edovo.com.                  IN     	A       10.1.84.3       ; CDN IP
ipmi.iscc.id.edovo.com.                 IN     	A       10.1.84.7       ; IPMI IP
ap.1.iscc.id.edovo.com.			IN	A	10.1.84.21	; Ruckus AP 1
ap.2.iscc.id.edovo.com.			IN	A	10.1.84.22	; Ruckus AP 2
ap.3.iscc.id.edovo.com.			IN	A	10.1.84.23	; Ruckus AP 3

;ID DOC IMSI
wan.imsi.id.edovo.com.                  IN     	A       65.153.52.42	; WAN IP
rtr.imsi.id.edovo.com.                  IN     	A       192.168.254.97  ; Router Loopback
tun.1.imsi.id.edovo.com.                IN     	A       172.16.1.90     ; Tunnel 1 IP
tun.2.imsi.id.edovo.com.                IN     	A       172.16.9.90     ; Tunnel 2 IP
lan.imsi.id.edovo.com.                  IN     	A       10.1.88.1       ; RTR LAN IP
cdn.imsi.id.edovo.com.                  IN     	A       10.1.88.3       ; CDN IP
ipmi.imsi.id.edovo.com.                 IN     	A       10.1.88.7       ; IPMI IP
ap.1.imsi.id.edovo.com.                 IN      A       10.1.88.21      ; Ruckus AP 1
ap.2.imsi.id.edovo.com.                 IN      A       10.1.88.22      ; Ruckus AP 2
ap.3.imsi.id.edovo.com.                 IN      A       10.1.88.23      ; Ruckus AP 3
ap.4.imsi.id.edovo.com.                 IN      A       10.1.88.24      ; Ruckus AP 4

;Maine Correctional Center, ME
wan.mcc.me.edovo.com.                   IN      A       69.193.82.50    ; Wan IP
rtr.mcc.me.edovo.com.                   IN      A       192.168.254.98  ; Router Loopback
tun.1.mcc.me.edovo.com.                 IN      A       172.16.1.94     ; Tunnel 1 IP
tun.2.mcc.me.edovo.com.                 IN      A       172.16.9.94     ; Tunnel 2 IP
lan.mcc.me.edovo.com.                   IN      A       10.1.92.1       ; RTR LAN IP
cdn.mcc.me.edovo.com.			IN	A	10.1.92.3	; CDN IP
ipmi.mcc.me.edovo.com.			IN	A	10.1.92.7	; IPMI IP
sw.1.mcc.me.edovo.com.                  IN      A       10.1.92.11      ; Ruckus Switch 1
sw.2.mcc.me.edovo.com.                  IN      A       10.1.92.12      ; Ruckus Switch 2
sw.3.mcc.me.edovo.com.                  IN      A       10.1.92.13      ; Ruckus Switch 3
ptp.1.mcc.me.edovo.com.                 IN      A       10.1.92.14      ; Cambium F300-14 on Admin Building
ptp.2.mcc.me.edovo.com.                 IN      A       10.1.92.15      ; Cambium F300-15 on ReEntry Center
ptp.3.mcc.me.edovo.com.                 IN      A       10.1.92.16      ; Cambium F300-16 on ReEntry Center
ptp.4.mcc.me.edovo.com.                 IN      A       10.1.92.17      ; Cambium F300-17 on Womens Center
ap.1.mcc.me.edovo.com.			IN	A	10.1.92.21	; Ruckus AP 1
ap.2.mcc.me.edovo.com.                  IN      A       10.1.92.22      ; Ruckus AP 2
ap.3.mcc.me.edovo.com.                  IN      A       10.1.92.23      ; Ruckus AP 3

;Mountain View Correctional, ME
wan.mvc.me.edovo.com.                   IN      A       12.245.114.246  ; Wan IP 1
rtr.mvc.me.edovo.com.                   IN      A       192.168.254.99  ; Router Loopback
tun.1.mvc.me.edovo.com.                 IN      A       172.16.1.98     ; Tunnel 1 IP
tun.2.mvc.me.edovo.com.                 IN      A       172.16.9.98     ; Tunnel 2 IP
lan.mvc.me.edovo.com.                   IN      A       10.1.96.1       ; RTR LAN IP
cdn.mvc.me.edovo.com.			IN	A	10.1.96.3	; CDN IP
ipmi.mvc.me.edovo.com.			IN	A	10.1.96.7	; IPMI IP
sw.1.mvc.me.edovo.com.                  IN      A       10.1.96.11      ; Switch 1 IP
ap.1.mvc.me.edovo.com.			IN	A	10.1.96.21	; Ruckus AP 1
ap.2.mvc.me.edovo.com.                  IN      A       10.1.96.22      ; Ruckus AP 2
ap.3.mvc.me.edovo.com.                  IN      A       10.1.96.23      ; Ruckus AP 3
ap.4.mvc.me.edovo.com.                  IN      A       10.1.96.24      ; Ruckus AP 4
ap.5.mvc.me.edovo.com.                  IN      A       10.1.96.25      ; Ruckus AP 5

;Maine State Prison Facility, ME
wan.msp.me.edovo.com.                   IN      A       69.193.101.106  ; Wan IP
rtr.msp.me.edovo.com.                   IN      A       192.168.254.100 ; Router Loopback
tun.1.msp.me.edovo.com.                 IN      A       172.16.1.102    ; Tunnel 1 IP
tun.2.msp.me.edovo.com.                 IN      A       172.16.9.102    ; Tunnel 2 IP
lan.msp.me.edovo.com.                   IN      A       10.1.100.1      ; RTR LAN IP
sw.1.msp.me.edovo.com.                  IN      A       10.1.100.11     ; Switch 1 IP
cdn.msp.me.edovo.com.			IN	A	10.1.100.3	; CDN IP
ipmi.msp.me.edovo.com.			IN	A	10.1.100.7	; ipmi ip
ap.1.msp.me.edovo.com.			IN	A	10.1.100.21	; Ruckus AP 1

;KDOC El Dorado Corectional Facility - Oswego Minimum
wan.edmin.ks.edovo.com.                 IN      A       67.131.164.142  ; WAN IP
rtr.edmin.ks.edovo.com.                 IN      A       192.168.254.101 ; Router Loopback
tun.1.edmin.ks.edovo.com.               IN      A       172.16.1.106    ; Tunnel 1 IP
tun.2.edmin.ks.edovo.com.               IN      A       172.16.9.106    ; Tunnel 2 IP
lan.edmin.ks.edovo.com.                 IN      A       10.1.104.1      ; RTR LAN IP
cdn.edmin.ks.edovo.com.                 IN      A       10.1.104.3      ; CDN IP
ipmi.edmin.ks.edovo.com.                IN      A       10.1.104.7      ; IPMI IP
ap.1.edmin.ks.edovo.com.		IN	A	10.1.104.21	; Ruckus AP 1

;Henry County Jail, VA
wan.hcj.va.edovo.com.                 IN      A       204.134.138.27  ; WAN IP
rtr.hcj.va.edovo.com.                 IN      A       192.168.254.102 ; Router Loopback
tun.1.hcj.va.edovo.com.               IN      A       172.16.1.110    ; Tunnel 1 IP
tun.2.hcj.va.edovo.com.               IN      A       172.16.9.110    ; Tunnel 2 IP
lan.hcj.va.edovo.com.                 IN      A       10.1.108.1      ; RTR LAN IP
cdn.hcj.va.edovo.com.                 IN      A       10.1.108.3      ; CDN IP
ipmi.hcj.va.edovo.com.                IN      A       10.1.108.7      ; IPMI IP

;Dunn County Jail, WI
wan.dcj.wi.edovo.com.			IN	A       216.222.172.124 ; WAN IP
rtr.dcj.wi.edovo.com.			IN	A       192.168.254.103 ; Router Loopback
tun.1.dcj.wi.edovo.com.			IN	A       172.16.1.114    ; Tunnel 1 IP
tun.2.dcj.wi.edovo.com.			IN	A       172.16.9.114    ; Tunnel 2 IP
lan.dcj.wi.edovo.com.			IN	A       10.1.112.1      ; RTR LAN IP
cdn.dcj.wi.edovo.com.			IN	A       10.1.112.3      ; CDN IP
ipmi.dcj.wi.edovo.com.			IN	A       10.1.112.7      ; IPMI IP
sw.1.dcj.wi.edovo.com.			IN	A	10.1.112.11	; Juniper Switch 1

;San Bernadino County Jail, CA
wan.sbrn.ca.edovo.com.			IN	A	66.209.96.66	; WAN IP
rtr.sbrn.ca.edovo.com.			IN	A	192.168.254.104	; Router Loopback
tun.1.sbrn.ca.edovo.com.		IN	A	172.16.1.118	; Tunnel 1 AP
tun.2.sbrn.ca.edovo.com.		IN	A	172.16.9.118	; Tunnel 2 IP
lan.sbrn.ca.edovo.com.			IN	A	10.1.116.1	; RTR LAN IP
cdn.sbrn.ca.edovo.com.			IN	A	10.1.116.3	; CDN IP
ipmi.sbrn.ca.edovo.com.			IN	A	10.1.116.7	; IPMI IP

;Fresno County Jail, CA
wan.fcj.ca.edovo.com.                   IN      A       204.32.224.111  ; WAN IP
rtr.fcj.ca.edovo.com.                   IN      A       192.168.254.105 ; Router Loopback
tun.1.fcj.ca.edovo.com.                 IN      A       172.16.1.122    ; Tunnel 1 IP
tun.2.fcj.ca.edovo.com.                 IN      A       172.16.9.122    ; Tunnel 2 IP
lan.fcj.ca.edovo.com.                   IN      A       10.1.120.1      ; RTR LAN IP
cdn.fcj.ca.edovo.com.                   IN      A       10.1.120.3      ; CDN IP
ipmi.fcj.ca.edovo.com.                  IN      A       10.1.120.7      ; IPMI IP
sw.1.fcj.ca.edovo.com.			IN	A	10.1.120.11	; Ruckus Switch 1
sw.2.fcj.ca.edovo.com.                  IN      A       10.1.120.12     ; Ruckus Switch 2
sw.3.fcj.ca.edovo.com.                  IN      A       10.1.120.13     ; Ruckus Switch 3
sw.4.fcj.ca.edovo.com.                  IN      A       10.1.120.14     ; Ruckus Switch 4
sw.5.fcj.ca.edovo.com.                  IN      A       10.1.120.15     ; Ruckus Switch 5
sw.6.fcj.ca.edovo.com.                  IN      A       10.1.120.16     ; Ruckus Switch 6
sw.7.fcj.ca.edovo.com.                  IN      A       10.1.120.17     ; Ruckus Switch 7
sw.8.fcj.ca.edovo.com.                  IN      A       10.1.120.18     ; Ruckus Switch 8
sw.9.fcj.ca.edovo.com.                  IN      A       10.1.120.19     ; Ruckus Switch 9
sw.10.fcj.ca.edovo.com.                 IN      A       10.1.120.20     ; Ruckus Switch 10
sw.11.fcj.ca.edovo.com.                 IN      A       10.1.120.21     ; Ruckus Switch 11
sw.12.fcj.ca.edovo.com.                 IN      A       10.1.120.22     ; Ruckus Switch 12
sw.13.fcj.ca.edovo.com.                 IN      A       10.1.120.23     ; Ruckus Switch 13
sw.14.fcj.ca.edovo.com.                 IN      A       10.1.120.24     ; Ruckus Switch 14
sw.15.fcj.ca.edovo.com.                 IN      A       10.1.120.25     ; Ruckus Switch 15
sw.16.fcj.ca.edovo.com.                 IN      A       10.1.120.26     ; Ruckus Switch 16
sw.17.fcj.ca.edovo.com.                 IN      A       10.1.120.27     ; Ruckus Switch 17
ap.1.fcj.ca.edovo.com.			IN	A	10.1.120.41	; Ruckus AP 1
ap.2.fcj.ca.edovo.com.                  IN      A       10.1.120.42     ; Ruckus AP 2
ap.3.fcj.ca.edovo.com.                  IN      A       10.1.120.43     ; Ruckus AP 3
ap.4.fcj.ca.edovo.com.                  IN      A       10.1.120.44     ; Ruckus AP 4
ap.5.fcj.ca.edovo.com.                  IN      A       10.1.120.45     ; Ruckus AP 5
ap.6.fcj.ca.edovo.com.                  IN      A       10.1.120.46     ; Ruckus AP 6
ap.7.fcj.ca.edovo.com.                  IN      A       10.1.120.47     ; Ruckus AP 7
ap.8.fcj.ca.edovo.com.                  IN      A       10.1.120.48     ; Ruckus AP 8
ap.9.fcj.ca.edovo.com.                  IN      A       10.1.120.49     ; Ruckus AP 9
ap.10.fcj.ca.edovo.com.                 IN      A       10.1.120.50     ; Ruckus AP 10
ap.11.fcj.ca.edovo.com.                 IN      A       10.1.120.51	; Ruckus AP 11
ap.12.fcj.ca.edovo.com.                 IN      A       10.1.120.52     ; Ruckus AP 12
ap.13.fcj.ca.edovo.com.                 IN      A       10.1.120.53     ; Ruckus AP 13
ap.14.fcj.ca.edovo.com.                 IN      A       10.1.120.54     ; Ruckus AP 14
ap.15.fcj.ca.edovo.com.                 IN      A       10.1.120.55     ; Ruckus AP 15
ap.16.fcj.ca.edovo.com.                 IN      A       10.1.120.56     ; Ruckus AP 16
ap.17.fcj.ca.edovo.com.                 IN      A       10.1.120.57     ; Ruckus AP 17
ap.18.fcj.ca.edovo.com.                 IN      A       10.1.120.58     ; Ruckus AP 18
ap.19.fcj.ca.edovo.com.                 IN      A       10.1.120.59     ; Ruckus AP 19
ap.20.fcj.ca.edovo.com.                 IN      A       10.1.120.60     ; Ruckus AP 20
ap.21.fcj.ca.edovo.com.                 IN      A       10.1.120.61     ; Ruckus AP 21
ap.22.fcj.ca.edovo.com.                 IN      A       10.1.120.62     ; Ruckus AP 22
ap.23.fcj.ca.edovo.com.                 IN      A       10.1.120.63     ; Ruckus AP 23
ap.24.fcj.ca.edovo.com.                 IN      A       10.1.120.64     ; Ruckus AP 24
ap.25.fcj.ca.edovo.com.                 IN      A       10.1.120.65     ; Ruckus AP 25
ap.26.fcj.ca.edovo.com.                 IN      A       10.1.120.66     ; Ruckus AP 26
ap.27.fcj.ca.edovo.com.                 IN      A       10.1.120.67     ; Ruckus AP 27
ap.28.fcj.ca.edovo.com.                 IN      A       10.1.120.68     ; Ruckus AP 28
ap.29.fcj.ca.edovo.com.                 IN      A       10.1.120.69     ; Ruckus AP 29
ap.30.fcj.ca.edovo.com.                 IN      A       10.1.120.70     ; Ruckus AP 30
ap.31.fcj.ca.edovo.com.                 IN      A       10.1.120.71     ; Ruckus AP 31
ap.32.fcj.ca.edovo.com.                 IN      A       10.1.120.72     ; Ruckus AP 32
ap.33.fcj.ca.edovo.com.                 IN      A       10.1.120.73     ; Ruckus AP 33
ap.34.fcj.ca.edovo.com.                 IN      A       10.1.120.74     ; Ruckus AP 34
ap.35.fcj.ca.edovo.com.                 IN      A       10.1.120.75     ; Ruckus AP 35
ap.36.fcj.ca.edovo.com.                 IN      A       10.1.120.76     ; Ruckus AP 36
ap.37.fcj.ca.edovo.com.                 IN      A       10.1.120.77     ; Ruckus AP 37
ap.38.fcj.ca.edovo.com.                 IN      A       10.1.120.78     ; Ruckus AP 38
ap.39.fcj.ca.edovo.com.                 IN      A       10.1.120.79     ; Ruckus AP 39
ap.40.fcj.ca.edovo.com.                 IN      A       10.1.120.80     ; Ruckus AP 40
ap.41.fcj.ca.edovo.com.                 IN      A       10.1.120.81     ; Ruckus AP 41
ap.42.fcj.ca.edovo.com.                 IN      A       10.1.120.82     ; Ruckus AP 42
ap.43.fcj.ca.edovo.com.                 IN      A       10.1.120.83     ; Ruckus AP 43
ap.44.fcj.ca.edovo.com.                 IN      A       10.1.120.84     ; Ruckus AP 44
ap.45.fcj.ca.edovo.com.                 IN      A       10.1.120.85     ; Ruckus AP 45
ap.46.fcj.ca.edovo.com.                 IN      A       10.1.120.86     ; Ruckus AP 46

;KDOC Hutchinson Correctional Facility East, KS
wan.hcfe.ks.edovo.com.			IN	A	67.128.234.174	; WAN IP
rtr.hcfe.ks.edovo.com.			IN	A	192.168.254.106	; Router Loopback
tun.1.hcfe.ks.edovo.com.		IN	A	172.16.1.126	; Tunnel 1 IP
tun.2.hcfe.ks.edovo.com.		IN	A	172.16.9.126	; Tunnel 2 IP
lan.hcfe.ks.edovo.com.			IN	A	10.1.124.1	; RTR LAN IP
cdn.hcfe.ks.edovo.com.			IN	A	10.1.124.3	; CDN IP
ipmi.hcfe.ks.edovo.com.			IN	A	10.1.124.7	; IPMI IP
ap.1.hcfe.ks.edovo.com.			IN	A	10.1.124.21	; Ruckus AP1
ap.2.hcfe.ks.edovo.com.                 IN      A       10.1.124.22     ; Ruckus AP2
ap.3.hcfe.ks.edovo.com.                 IN      A       10.1.124.23     ; Ruckus AP3
ap.4.hcfe.ks.edovo.com.                 IN      A       10.1.124.24     ; Ruckus AP4
ap.5.hcfe.ks.edovo.com.                 IN      A       10.1.124.25     ; Ruckus AP5
ap.6.hcfe.ks.edovo.com.                 IN      A       10.1.124.26     ; Ruckus AP6
ap.7.hcfe.ks.edovo.com.                 IN      A       10.1.124.27     ; Ruckus AP7
ap.8.hcfe.ks.edovo.com.                 IN      A       10.1.124.28     ; Ruckus AP8
ap.9.hcfe.ks.edovo.com.                 IN      A       10.1.124.29     ; Ruckus AP9

; Jackson County Correctional, GA
wan.jcc.ga.edovo.com.			IN	A	216.207.248.157	; WAN IP Address
rtr.jcc.ga.edovo.com.			IN	A	192.168.254.107	; Router Loopback
tun.1.jcc.ga.edovo.com.			IN	A	172.16.1.130	; Tunnel 1 IP
tun.2.jcc.ga.edovo.com.			IN	A	172.16.9.130	; Tunnel 2 IP
lan.jcc.ga.edovo.com.			IN	A	10.1.128.1	; RTR LAN IP
cdn.jcc.ga.edovo.com.			IN	A	10.1.128.3	; CDN IP
ipmi.jcc.ga.edovo.com.			IN	A	10.1.128.7	; IPMI IP
ap.1.jcc.ga.edovo.com.			IN	A	10.1.128.21	; Ruckus AP 1
ap.2.jcc.ga.edovo.com.                  IN      A       10.1.128.22     ; Ruckus AP 2
ap.3.jcc.ga.edovo.com.                  IN      A       10.1.128.23     ; Ruckus AP 3
ap.4.jcc.ga.edovo.com.                  IN      A       10.1.128.24     ; Ruckus AP 4

; Jackson County Jail, OR
wan.jcj.or.edovo.com.			IN	A	97.90.123.10	; WAN IP Address
rtr.jcj.or.edovo.com.			IN	A	192.168.254.108	; RTR Loopback
tun.1.jcj.or.edovo.com.			IN	A	172.16.1.134	; Tunnel 1 IP
tun.2.jcj.or.edovo.com.			IN	A	172.16.9.134	; Tunnel 2 IP
lan.jcj.or.edovo.com.			IN	A	10.1.132.1	; RTR LAN IP

; Jackson County Transition Center, OR
wan.jct.or.edovo.com.			IN	A	68.116.76.187	; WAN IP Adrress
rtr.jct.or.edovo.com.			IN	A	192.168.254.109	; Router :Loopback
tun.1.jct.or.edovo.com.			IN	A	172.16.1.138	; Tunnel 1 IP
tun.2.jct.or.edovo.com.			IN	A	172.16.9.138	; Tunnel 2 IP
lan.jct.or.edovo.com.			IN	A	10.1.136.1	; RTR Lan IP
cdn.jct.or.edovo.com.			IN	A	10.1.136.3	; CDN IP
ipmi.jct.or.edovo.com.			IN	A	10.1.136.7	; IPMI IP
sw.1.jct.or.edovo.com.			IN	A	10.1.136.11	; Ruckus Switch 1

; Holmes County Jail, FL
wan.hcj.fl.edovo.com.			IN	A	65.113.189.10	; WAN IP Address
rtr.hcj.fl.edovo.com.			IN	A	192.168.254.110	; RTR Loopback
tun.1.hcj.fl.edovo.com.			IN	A	172.16.1.142	; Tunnel 1 IP
tun.2.hcj.fl.edovo.com.			IN	A	172.16.9.142	; Tunnel 2 IP
lan.hcj.fl.edovo.com.			IN	A	10.1.140.1	; RTR LAN IP

; KDOC TEST Facility
wan.test.kdoc.ks.edovo.com.		IN	A	174.66.93.62	; WAN IP Address
rtr.test.kdoc.ks.edovo.com.		IN	A	192.168.254.111	; RTR Loopback Address
tun.1.test.kdoc.ks.edovo.com.		IN	A	172.16.1.146	; Tunnel 1 IP
tun.2.test.kdoc.ks.edovo.com.		IN	A	172.16.9.146	; Tunnel 2 IP
lan.test.kdoc.ks.edovo.com.		IN	A	10.1.144.1	; RTR LAN IP
sw.1.test.kdoc.ks.edovo.com.		IN	A	10.1.144.11	; Ruckus Switch 1
ap.1.test.kdoc.ks.edovo.com.		IN	A	10.1.144.21	; Ruckus AP 1
ap.2.test.kdoc.ks.edovo.com.            IN      A       10.1.144.22     ; Ruckus AP 2
ap.3.test.kdoc.ks.edovo.com.            IN      A       10.1.144.23     ; Ruckus AP 3
ap.4.test.kdoc.ks.edovo.com.            IN      A       10.1.144.24     ; Ruckus AP 4

; Bay County Jail, FL
wan.bcj.fl.edovo.com.			IN	A	24.96.57.170	; WAN IP Address
rtr.bcj.fl.edovo.com.			IN	A	192.168.254.112	; RTR Loopback
tun.1.bcj.fl.edovo.com.			IN	A	172.16.1.150	; Tunnel 1 IP address
tun.2.bcj.fl.edovo.com.			IN	A	172.16.9.150	; Tunnel 2 IP address
lan.bcj.fl.edovo.com.			IN	A	10.1.148.1	; RTR LAN IP
sw.1.bcj.fl.edovo.com.			IN	A	10.1.148.11	; Ruckus Switch 1
sw.2.bcj.fl.edovo.com.                  IN      A       10.1.148.12     ; Ruckus Switch 2
sw.3.bcj.fl.edovo.com.                  IN      A       10.1.148.12     ; Ruckus Switch 3
sw.4.bcj.fl.edovo.com.                  IN      A       10.1.148.13     ; Ruckus Switch 4
sw.5.bcj.fl.edovo.com.                  IN      A       10.1.148.14     ; Ruckus Switch 5
sw.6.bcj.fl.edovo.com.                  IN      A       10.1.148.15     ; Ruckus Switch 6

;Santa Cruz Juvenile Correction, CA
wan.scjc.ca.edovo.com.			IN	A	50.78.97.9	; WAN IP Address
rtr.scjc.ca.edovo.com.			IN	A	192.168.254.113	; RTR Loopback
tun.1.scjc.ca.edovo.com.                IN      A	172.16.1.154	; Tun 1 IP Address
tun.2.scjc.ca.edovo.com.                IN      A	172.16.9.154	; Tun 2 IP Address
lan.scjc.ca.edovo.com.                  IN      A	10.1.152.1	; RTR LAN IP
cdn.scjc.ca.edovo.com.                  IN      A	10.1.152.3	; CDN LAN IP
ipmi.scjc.ca.edovo.com.                 IN      A	10.1.152.7	; CDN IPMI IP
sw.1.scjc.ca.edovo.com.                 IN      A	10.1.152.11	; Ruckus Switch 1
ap.1.scjc.ca.edovo.com.                 IN      A	10.1.152.21	; Ruckus AP 1

;Yakima Main Jail, WA
wan.ymj.wa.edovo.com.			IN      A       199.68.129.166  ; WAN IP Address
rtr.ymj.wa.edovo.com.			IN      A       192.168.254.114 ; RTR Loopback
tun.1.ymj.wa.edovo.com.			IN      A       172.16.1.158    ; Tun 1 IP Address
tun.2.ymj.wa.edovo.com.			IN      A       172.16.9.158    ; Tun 2 IP Address
lan.ymj.wa.edovo.com.			IN      A       10.1.156.1      ; RTR LAN IP
cdn.ymj.wa.edovo.com.			IN      A       10.1.156.3      ; CDN LAN IP
ipmi.ymj.wa.edovo.com.			IN      A       10.1.156.7      ; CDN IPMI IP
sw.1.ymj.wa.edovo.com.			IN      A       10.1.156.11     ; Ruckus Switch 1
ap.1.ymj.wa.edovo.com.			IN      A       10.1.156.21     ; Ruckus AP 1

;Yakima Young Adult Correctional, WA
wan.yyac.wa.edovo.com.                  IN      A       199.68.129.170  ; WAN IP Address
rtr.yyac.wa.edovo.com.                  IN      A       192.168.254.115 ; RTR Loopback
tun.1.yyac.wa.edovo.com.                IN      A       172.16.1.162    ; Tun 1 IP Address
tun.2.yyac.wa.edovo.com.                IN      A       172.16.9.162    ; Tun 2 IP Address
lan.yyac.wa.edovo.com.                  IN      A       10.1.160.1      ; RTR LAN IP
cdn.yyac.wa.edovo.com.                  IN      A       10.1.160.3      ; CDN LAN IP
ipmi.yyac.wa.edovo.com.                 IN      A       10.1.160.7      ; CDN IPMI IP
sw.1.yyac.wa.edovo.com.                 IN      A       10.1.160.11     ; Ruckus Switch 1
ap.1.yyac.wa.edovo.com.                 IN      A       10.1.160.21     ; Ruckus AP 1

; ############################################################
; ############# EDOVO WAN SITE DNS RECORDS ###################
; ############################################################

; ############# ATT WAN SITE DNS RECORDS #####################

; Yolo County Jail, CA - A Record
ap.1.ycj.ca.edovo.com.                  IN      A       10.100.0.11      ; R710 AP 1
ap.2.ycj.ca.edovo.com.                  IN      A       10.100.0.12      ; R710 AP 2
ap.3.ycj.ca.edovo.com.                  IN      A       10.100.0.13      ; R710 AP 3
ap.4.ycj.ca.edovo.com.                  IN      A       10.100.0.14      ; R710 AP 4
ap.5.ycj.ca.edovo.com.                  IN      A       10.100.0.15      ; R710 AP 5
ap.6.ycj.ca.edovo.com.                  IN      A       10.100.0.16      ; R710 AP 6
cdn.ycj.ca.edovo.com.                   IN      A       10.100.0.3       ; Site CDN Server
fw.ycj.ca.edovo.com.                    IN      A       172.24.8.2       ; Firewall Outside Address
ge.ycj.ca.edovo.com.                    IN      A       172.24.8.1       ; Router VLAN 42
ipmi.ycj.ca.edovo.com.                  IN      A       10.100.0.7       ; IPMI interface
lan.ycj.ca.edovo.com.                   IN      A       10.100.0.1       ; Firewall Inside Address
rtr.ycj.ca.edovo.com.                   IN      A       192.168.253.11   ; Router Loopback0
sw.1.ycj.ca.edovo.com.                  IN      A       10.100.0.2       ; IDF Switch
sw.2.ycj.ca.edovo.com.                  IN      A       10.100.0.4       ; IDF Switch
wan.ycj.ca.edovo.com.                   IN      A       172.16.20.11     ; ATT Secondary WAN IP

; William Donaldson Correctional Facility, AL - A Record 
ap.1.wdcf.al.edovo.com.                 IN      A       10.100.4.11      ; R710 AP 1
ap.2.wdcf.al.edovo.com.                 IN      A       10.100.4.12      ; R710 AP 2
cdn.wdcf.al.edovo.com.                  IN      A       10.100.4.3       ; Site CDN Server
fw.wdcf.al.edovo.com.                   IN      A       172.24.8.6       ; Firewall Outside Address
ge.wdcf.al.edovo.com.                   IN      A       172.24.8.5       ; Router VLAN 42
ipmi.wdcf.al.edovo.com.                 IN      A       10.100.4.7       ; IPMI interface
lan.wdcf.al.edovo.com.                  IN      A       10.100.4.1       ; Firewall Inside Address
rtr.wdcf.al.edovo.com.                  IN      A       192.168.253.12   ; Router Loopback0
sw.1.wdcf.al.edovo.com.                 IN      A       10.100.4.2       ; MDF Switch
wan.wdcf.al.edovo.com.                  IN      A       172.16.20.12     ; ATT Secondary WAN IP

; Sonoma County Jail, CA - A Record
cdn.scj.ca.edovo.com.                   IN      A       10.100.8.3       ; Site CDN Server
fw.scj.ca.edovo.com.                    IN      A       172.24.8.10      ; Firewall Outside Address
ge.scj.ca.edovo.com.                    IN      A       172.24.8.9       ; Router VLAN 42
lan.scj.ca.edovo.com.                   IN      A       10.100.8.1       ; Firewall Inside Address
rtr.scj.ca.edovo.com.                   IN      A       192.168.253.13   ; Router Loopback0
wan.scj.ca.edovo.com.                   IN      A       172.16.20.13     ; ATT Secondary WAN IP

; Thumb Correctional Facility Network, MI - A Record 
ap.1.tcf.mi.edovo.com.                  IN      A       10.100.12.11     ; Ruckus AP 1 
ap.2.tcf.mi.edovo.com.                  IN      A       10.100.12.12     ; Ruckus AP 2 
ap.3.tcf.mi.edovo.com.                  IN      A       10.100.12.13     ; Ruckus AP 3
ap.4.tcf.mi.edovo.com.                  IN      A       10.100.12.14     ; Ruckus AP 4 
ap.5.tcf.mi.edovo.com.                  IN      A       10.100.12.15     ; Ruckus AP 5 
ap.6.tcf.mi.edovo.com.                  IN      A       10.100.12.16     ; Ruckus AP 6 
ap.7.tcf.mi.edovo.com.                  IN      A       10.100.12.17     ; Ruckus AP 7 
ap.8.tcf.mi.edovo.com.                  IN      A       10.100.12.18     ; Ruckus AP 8 
ap.9.tcf.mi.edovo.com.                  IN      A       10.100.12.19     ; Ruckus AP 9 
ap.10.tcf.mi.edovo.com.                 IN      A       10.100.12.20     ; Ruckus AP 10 
ap.11.tcf.mi.edovo.com.                 IN      A       10.100.12.21     ; Ruckus AP 11
cdn.tcf.mi.edovo.com.                   IN      A       10.100.12.3      ; Site CDN Server            
fw.tcf.mi.edovo.com.                    IN      A       172.24.8.14      ; Firewall Outside Address
ge.tcf.mi.edovo.com.                    IN      A       172.24.8.13      ; Router VLAN 42
ipmi.tcf.mi.edovo.com.                  IN      A       10.100.12.7      ; IPMI Interface
lan.tcf.mi.edovo.com.                   IN      A       10.100.12.1      ; Firewall Inside Address
rtr.tcf.mi.edovo.com.                   IN      A       192.168.253.14   ; Router Loopback0
sw.mdf.tcf.mi.edovo.com.                IN      A       10.100.12.2      ; MDF Switch
sw.1.tcf.mi.edovo.com.                  IN      A       10.100.12.4      ; IDF Switch 1
wan.tcf.mi.edovo.com.                   IN      A       172.16.20.14     ; ATT Secondary WAN IP

; Women's Huron Valley Correctional Network, MI - A Record 
ap.1.whvc.mi.edovo.com.                 IN      A       10.100.16.11     ; Ruckus AP 1 
ap.2.whvc.mi.edovo.com.                 IN      A       10.100.16.12     ; Ruckus AP 2 
ap.3.whvc.mi.edovo.com.                 IN      A       10.100.16.13     ; Ruckus AP 3
ap.4.whvc.mi.edovo.com.                 IN      A       10.100.16.14     ; Ruckus AP 4 
ap.5.whvc.mi.edovo.com.                 IN      A       10.100.16.15     ; Ruckus AP 5 
ap.6.whvc.mi.edovo.com.                 IN      A       10.100.16.16     ; Ruckus AP 6 
ap.7.whvc.mi.edovo.com.                 IN      A       10.100.16.17     ; Ruckus AP 7 
ap.8.whvc.mi.edovo.com.                 IN      A       10.100.16.18     ; Ruckus AP 8 
ap.9.whvc.mi.edovo.com.                 IN      A       10.100.16.19     ; Ruckus AP 9 
ap.10.whvc.mi.edovo.com.                IN      A       10.100.16.20     ; Ruckus AP 10 
ap.11.whvc.mi.edovo.com.                IN      A       10.100.16.21     ; Ruckus AP 11
ap.12.whvc.mi.edovo.com.                IN      A       10.100.16.22     ; Ruckus AP 12
ap.13.whvc.mi.edovo.com.                IN      A       10.100.16.23     ; Ruckus AP 13
ap.14.whvc.mi.edovo.com.                IN      A       10.100.16.24     ; Ruckus AP 14
ap.15.whvc.mi.edovo.com.                IN      A       10.100.16.25     ; Ruckus AP 15
ap.16.whvc.mi.edovo.com.                IN      A       10.100.16.26     ; Ruckus AP 16
ap.17.whvc.mi.edovo.com.                IN      A       10.100.16.27     ; Ruckus AP 17
ap.18.whvc.mi.edovo.com.                IN      A       10.100.16.28     ; Ruckus AP 18
ap.19.whvc.mi.edovo.com.                IN      A       10.100.16.29     ; Ruckus AP 19
ap.20.whvc.mi.edovo.com.                IN      A       10.100.16.20     ; Ruckus AP 20
cdn.whvc.mi.edovo.com.                  IN      A       10.100.16.3      ; Site CDN Server            
fw.whvc.mi.edovo.com.                   IN      A       172.24.8.18      ; Firewall Outside Address
ge.whvc.mi.edovo.com.                   IN      A       172.24.8.17      ; Router VLAN 42
ipmi.whvc.mi.edovo.com.                 IN      A       10.100.16.7      ; IPMI Interface
lan.whvc.mi.edovo.com.                  IN      A       10.100.16.1      ; Firewall Inside Address
rtr.whvc.mi.edovo.com.                  IN      A       192.168.253.15   ; Router Loopback0
sw.1.whvc.mi.edovo.com.                 IN      A       10.100.16.4      ; IDF Switch 1
sw.mdf.whvc.mi.edovo.com.               IN      A       10.100.16.2      ; MDF Switch
wan.whvc.mi.edovo.com.                  IN      A       172.16.20.15     ; ATT Secondary WAN IP

; Bellamy Creek Correctional Network, MI - A Record 
ap.1.bcc.mi.edovo.com.                  IN      A       10.100.20.11     ; Ruckus AP 1 
ap.2.bcc.mi.edovo.com.                  IN      A       10.100.20.12     ; Ruckus AP 2 
ap.3.bcc.mi.edovo.com.                  IN      A       10.100.20.13     ; Ruckus AP 3
ap.4.bcc.mi.edovo.com.                  IN      A       10.100.20.14     ; Ruckus AP 4 
ap.5.bcc.mi.edovo.com.                  IN      A       10.100.20.15     ; Ruckus AP 5 
ap.6.bcc.mi.edovo.com.                  IN      A       10.100.20.16     ; Ruckus AP 6 
ap.7.bcc.mi.edovo.com.                  IN      A       10.100.20.17     ; Ruckus AP 7 
ap.8.bcc.mi.edovo.com.                  IN      A       10.100.20.18     ; Ruckus AP 8 
ap.9.bcc.mi.edovo.com.                  IN      A       10.100.20.19     ; Ruckus AP 9 
cdn.bcc.mi.edovo.com.                   IN      A       10.100.20.3      ; Site CDN Server            
fw.bcc.mi.edovo.com.                    IN      A       172.24.8.22      ; Firewall Outside Address
ge.bcc.mi.edovo.com.                    IN      A       172.24.8.21      ; Router VLAN 42
ipmi.bcc.mi.edovo.com.                  IN      A       10.100.20.7      ; IPMI Interface
lan.bcc.mi.edovo.com.                   IN      A       10.100.20.1      ; Firewall Inside Address
rtr.bcc.mi.edovo.com.                   IN      A       192.168.253.16   ; Router Loopback0
sw.mdf.bcc.mi.edovo.com.                IN      A       10.100.20.2      ; MDF Switch
wan.bcc.mi.edovo.com.                   IN      A       172.16.20.16     ; ATT Secondary WAN IP


; ############################################################
; ########## COOK COUNTY MAIN JAIL DNS RECORDS ###############
; ############################################################

rtr-1-ccj.il.edovo.com                  IN      A       192.168.253.18  ; Router 1
rtr-2-ccj.il.edovo.com			IN	A	192.168.253.18	; Router 2
rtr-d2-d1.ccj.il.edovo.com		IN	A	192.168.252.12	; Division 2 Dorm 1
rtr-d2-d2.ccj.il.edovo.com		IN	A	192.168.252.13	; Division 2 Dorm 2
rtr-d2-d3.ccj.il.edovo.com		IN	A	192.168.252.14	; Division 2 Dorm 3
rtr-d2-d4.ccj.il.edovo.com		IN	A	192.168.252.15	; Division 2 Dorm 4
rtr-d3.ccj.il.edovo.com			IN	A	192.168.252.16	; Division 3 Annex
rtr-d4.ccj.il.edovo.com			IN	A	192.168.252.17	; Division 4
rtr-d5.ccj.il.edovo.com			IN	A	192.168.252.18	; Division 5
rtr-d6.ccj.il.edovo.com			IN	A	192.168.252.19	; Division 6
rtr-d7.ccj.il.edovo.com			IN	A	192.168.252.20	; Division 7
rtr-d8.ccj.il.edovo.com			IN	A	192.168.252.21	; Division 8
rtr-d9.ccj.il.edovo.com			IN	A	192.168.252.22	; Division 9
rtr-d10.ccj.il.edovo.com		IN	A	192.168.252.23	; Division 10
rtr-d11.ccj.il.edovo.com		IN	A	192.168.252.24	; Division 11
ata-1-d2-d1.ccj.il.edovo.com		IN	A	 172.16.25.34	; Division 2 Dorm 1 ATA 1
ata-2-d2-d1.ccj.il.edovo.com		IN	A	 172.16.25.35	; Division 2 Dorm 1 ATA 2
ata-3-d2-d1.ccj.il.edovo.com		IN	A	 172.16.25.36	; Division 2 Dorm 1 ATA 3
ata-1-d2-d2.ccj.il.edovo.com		IN	A	 172.16.25.66	; Division 2 Dorm 2 ATA 1
ata-2-d2-d2.ccj.il.edovo.com		IN	A	 172.16.25.67	; Division 2 Dorm 2 ATA 2
ata-3-d2-d2.ccj.il.edovo.com		IN	A	 172.16.25.68	; Division 2 Dorm 2 ATA 3
ata-1-d2-d3.ccj.il.edovo.com		IN	A	 172.16.25.98	; Division 2 Dorm 3 ATA 1
ata-2-d2-d3.ccj.il.edovo.com		IN	A	 172.16.25.99	; Division 2 Dorm 3 ATA 2
ata-3-d2-d3.ccj.il.edovo.com		IN	A	 172.16.25.100	; Division 2 Dorm 3 ATA 3
ata-1-d2-d4.ccj.il.edovo.com		IN	A	 172.16.25.130	; Division 2 Dorm 4 ATA 1
ata-2-d2-d4.ccj.il.edovo.com		IN	A	 172.16.25.131	; Division 2 Dorm 4 ATA 2
ata-3-d2-d4.ccj.il.edovo.com		IN	A	 172.16.25.132	; Division 2 Dorm 4 ATA 3
ata-1-d3.ccj.il.edovo.com		IN	A	 172.16.25.162	; Division 3 ATA 1
ata-2-d3.ccj.il.edovo.com		IN	A	 172.16.25.163	; Division 3 ATA 2
ata-3-d3.ccj.il.edovo.com		IN	A	 172.16.25.164	; Division 3 ATA 3
ata-1-d4.ccj.il.edovo.com		IN	A	 172.16.25.194	; Division 4 ATA 1
ata-2-d4.ccj.il.edovo.com		IN	A	 172.16.25.195	; Division 4 ATA 2
ata-3-d4.ccj.il.edovo.com		IN	A	 172.16.25.196	; Division 4 ATA 3
ata-1-d5.ccj.il.edovo.com		IN	A	 172.16.25.226	; Division 5 ATA 1
ata-2-d5.ccj.il.edovo.com		IN	A	 172.16.25.227	; Division 5 ATA 2
ata-3-d5.ccj.il.edovo.com		IN	A	 172.16.25.228	; Division 5 ATA 3
ata-4-d5.ccj.il.edovo.com		IN	A	 172.16.25.229	; Division 5 ATA 4
ata-5-d5.ccj.il.edovo.com		IN	A	 172.16.25.230	; Division 5 ATA 5
ata-1-d6.ccj.il.edovo.com		IN	A	 172.16.26.2	; Division 6 ATA 1
ata-2-d6.ccj.il.edovo.com		IN	A	 172.16.26.3	; Division 6 ATA 2
ata-3-d6.ccj.il.edovo.com		IN	A	 172.16.26.4	; Division 6 ATA 3
ata-4-d6.ccj.il.edovo.com		IN	A	 172.16.26.5	; Division 6 ATA 4
ata-1-d7.ccj.il.edovo.com		IN	A	 172.16.26.34	; Division 7 ATA 1
ata-2-d7.ccj.il.edovo.com		IN	A	 172.16.26.35	; Division 7 ATA 2
ata-3-d7.ccj.il.edovo.com		IN	A	 172.16.26.36	; Division 7 ATA 3
ata-4-d7.ccj.il.edovo.com		IN	A	 172.16.26.37	; Division 7 ATA 4
ata-5-d7.ccj.il.edovo.com		IN	A	 172.16.26.38	; Division 7 ATA 5
ata-1-d8.ccj.il.edovo.com		IN	A	 172.16.26.66	; Division 8 ATA 1
ata-2-d8.ccj.il.edovo.com		IN	A	 172.16.26.67	; Division 8 ATA 2
ata-1-d9.ccj.il.edovo.com		IN	A	 172.16.26.98	; Division 9 ATA 1
ata-2-d9.ccj.il.edovo.com		IN	A	 172.16.26.99	; Division 9 ATA 2
ata-3-d9.ccj.il.edovo.com		IN	A	 172.16.26.100	; Division 9 ATA 3
ata-4-d9.ccj.il.edovo.com		IN	A	 172.16.26.101	; Division 9 ATA 4
ata-5-d9.ccj.il.edovo.com		IN	A	 172.16.26.102	; Division 9 ATA 5
ata-1-d10.ccj.il.edovo.com		IN	A	 172.16.26.130	; Division 10 ATA 1
ata-2-d10.ccj.il.edovo.com		IN	A	 172.16.26.131	; Division 10 ATA 2
ata-3-d10.ccj.il.edovo.com		IN	A	 172.16.26.132	; Division 10 ATA 3
ata-1-d11.ccj.il.edovo.com		IN	A	 172.16.26.162	; Division 11 ATA 1
ata-2-d11.ccj.il.edovo.com		IN	A	 172.16.26.163	; Division 11 ATA 2
ata-3-d11.ccj.il.edovo.com		IN	A	 172.16.26.164	; Division 11 ATA 3
ata-4-d11.ccj.il.edovo.com		IN	A	 172.16.26.165	; Division 11 ATA 4
ata-5-d11.ccj.il.edovo.com		IN	A	 172.16.26.166	; Division 11 ATA 5


; ############################################################
; ######## EDOVO WAN SITE EXTENSIONS DNS RECORDS #############
; ############################################################

; ######## ATT WAN SITE EXTENSIONS DNS RECORDS ###############

; Madera County Juvenile Services, CA - A Record
sw.mdf.mcjs.ca.edovo.com.			IN	A	10.110.0.5	; MDF Switch
wan.mcjs.ca.edovo.com.				IN	A	10.0.44.5	; WAN IP address
ge.mcjs.ca.edovo.com.				IN	A	10.110.0.1	; Router Gi0/0/1
rtr.mcjs.ca.edovo.com.				IN	A	192.168.252.1	; Router Loopback 0
ap.1.mcjs.ca.edovo.com. 			IN	A	10.110.0.11	; Ruckus AP 1
ap.2.mcjs.ca.edovo.com.                         IN      A       10.110.0.12     ; Ruckus AP 2
ap.3.mcjs.ca.edovo.com.                         IN      A       10.110.0.13     ; Ruckus AP 3 
ap.4.mcjs.ca.edovo.com.                         IN      A       10.110.0.14     ; Ruckus AP 4
ap.5.mcjs.ca.edovo.com.                         IN      A       10.110.0.15     ; Ruckus AP 5

; ##################################################
; ############# SFTP DROPS ########## ##############
; ##################################################

; SFTP Drop
sftp.ar.securus.edovo.com.              IN      A       18.216.121.190 	; Securus ARDOC SFTP Drop
sftp.wcj.il.edovo.com.			IN	A	52.15.221.97	; Woodford IL SFTP Drop
sftp.dcj.ma.edovo.com.			IN	A	18.191.4.132	; Dukes MA SFTP Drop
sftp.mcdc.ca.edovo.com.			IN	A	3.16.156.231	; Madera CA SFTP Drop

; ##################################################
; ############# SECURUS CONFIGURATION ##############
; ##################################################

; Securus Lab Site
slp.lab.securus.edovo.com.             	IN      A       50.254.44.13    ; Securus Lab WAN

; Securus AR DOC Sites
cdn.mcrc.ar.edovo.com.			IN	A	64.233.149.102	; AR DOC - MISSISSIPPI COUNTY WORK RELEASE CENTER
cdn.gu.ar.edovo.com.			IN	A	12.184.209.221	; AR DOC - GRIMES UNIT
cdn.mpu.ar.edovo.com.			IN	A	12.184.209.222	; AR DOC - MCPHERSON UNIT (Womens)
cdn.earu.ar.edovo.com.			IN	A	12.184.209.246	; AR DOC - EAST ARKANSAS REGIONAL UNIT
cdn.jhsc.ar.edovo.com.			IN	A	67.220.62.94	; AR DOC - J AARON HAWKINS SR CENTER FOR WOMEN
cdn.trc.ar.edovo.com.			IN	A	65.122.107.78	; AR DOC - TUCKER RE-ENTRY CENTER (Women's)
cdn.tu.ar.edovo.com.			IN	A	65.120.147.126	; AR DOC - TUCKER UNIT
cdn.tmsu.ar.edovo.com.			IN	A	65.120.151.246	; AR DOC - TUCKER MAXIMUM SECURITY UNIT
cdn.rwf.ar.edovo.com.			IN	A	12.239.92.94	; AR DOC - RANDALL L WILLIAMS FACILITY
cdn.pbu.ar.edovo.com.			IN	A	12.184.211.198	; AR DOC - PINE BLUFF UNIT
cdn.pbrc.ar.edovo.com.			IN	A	12.239.92.70	; AR DOC - PINE BLUFF RE-ENTRY CENTER (work release)
cdn.eu.ar.edovo.com.			IN	A	12.184.211.126	; AR DOC - ESTER UNIT
cdn.bu.ar.edovo.com.			IN	A	12.184.211.182	; AR DOC - BENTON UNIT
cdn.cu.ar.edovo.com.			IN	A	12.179.60.182	; AR DOC - CUMMINS UNIT
cdn.dru.ar.edovo.com.			IN	A	12.184.211.230	; AR DOC - DELTA REGIONAL UNIT
cdn.ncu.ar.edovo.com.			IN	A	216.134.225.222	; AR DOC - NORTH CENTRAL UNIT
cdn.nawr.ar.edovo.com.			IN	A	70.163.47.180	; AR DOC - NW ARKANSAS WORK RELEASE CENTER
cdn.oru.ar.edovo.com.			IN	A	12.184.211.206	; AR DOC - OUACHITA RIVER UNIT
cdn.trcc.ar.edovo.com.			IN	A	24.119.75.46	; AR DOC - TEXARKANA REGION CORRECTION CENTER
cdn.vu.ar.edovo.com.			IN	A	12.144.146.142	; AR DOC - VARNER UNIT
cdn.wu.ar.edovo.com.			IN	A	67.220.62.86	; AR DOC - WRIGHTSVILLE UNIT
cdn.spb.ar.edovo.com.                   IN      A       12.184.211.190  ; AR DOC - State Police Barracks
slp.spb.ar.edovo.com.			IN	A	12.184.211.190  ; AR DOC - State Police Barracks
slp.mcrc.ar.edovo.com.                  IN      A       64.233.149.102  ; AR DOC - MISSISSIPPI COUNTY WORK RELEASE CENTER
slp.gu.ar.edovo.com.                    IN      A       12.184.209.221  ; AR DOC - GRIMES UNIT
slp.mpu.ar.edovo.com.                   IN      A       12.184.209.222  ; AR DOC - MCPHERSON UNIT (Womens)
slp.earu.ar.edovo.com.                  IN      A       12.184.209.246  ; AR DOC - EAST ARKANSAS REGIONAL UNIT
slp.jhsc.ar.edovo.com.                  IN      A       67.220.62.94    ; AR DOC - J AARON HAWKINS SR CENTER FOR WOMEN
slp.trc.ar.edovo.com.                   IN      A       65.122.107.78   ; AR DOC - TUCKER RE-ENTRY CENTER (Women's)
slp.tu.ar.edovo.com.                    IN      A       65.120.147.126  ; AR DOC - TUCKER UNIT
slp.tmsu.ar.edovo.com.                  IN      A       65.120.151.246  ; AR DOC - TUCKER MAXIMUM SECURITY UNIT
slp.rwf.ar.edovo.com.                   IN      A       12.239.92.94    ; AR DOC - RANDALL L WILLIAMS FACILITY
slp.pbu.ar.edovo.com.                   IN      A       12.184.211.198  ; AR DOC - PINE BLUFF UNIT
slp.pbrc.ar.edovo.com.                  IN      A       12.239.92.70    ; AR DOC - PINE BLUFF RE-ENTRY CENTER (work release)
slp.eu.ar.edovo.com.                    IN      A       12.184.211.126  ; AR DOC - ESTER UNIT
slp.bu.ar.edovo.com.                    IN      A       12.184.211.182  ; AR DOC - BENTON UNIT
slp.cu.ar.edovo.com.                    IN      A       12.179.60.182   ; AR DOC - CUMMINS UNIT
slp.dru.ar.edovo.com.                   IN      A       12.184.211.230  ; AR DOC - DELTA REGIONAL UNIT
slp.ncu.ar.edovo.com.                   IN      A       216.134.225.222 ; AR DOC - NORTH CENTRAL UNIT
slp.nawr.ar.edovo.com.                  IN      A       70.163.47.180   ; AR DOC - NW ARKANSAS WORK RELEASE CENTER
slp.oru.ar.edovo.com.                   IN      A       12.184.211.206  ; AR DOC - OUACHITA RIVER UNIT
slp.trcc.ar.edovo.com.                  IN      A       24.119.75.46    ; AR DOC - TEXARKANA REGION CORRECTION CENTER
slp.vu.ar.edovo.com.                    IN      A       12.144.146.142  ; AR DOC - VARNER UNIT
slp.wu.ar.edovo.com.                    IN      A       67.220.62.86    ; AR DOC - WRIGHTSVILLE UNIT

; Securus VA DOC Sites 
slp.nnrj.va.edovo.com.                 	IN      A       69.161.99.141   ; VA DOC - Northern Neck Regional Jail - SLP
cdn.nnrj.va.edovo.com.			IN	A	10.99.0.30	; VA DOC - Northern Neck Regional Jail - CDN


; ##################################################
; ############ SAS SITES CONFIGURATION #############
; ##################################################

; St. Johns County, FL - A Record 
sas-ipmi.sjc.fl.edovo.com.              IN      A       96.75.17.11     ; SAS IPMI Interface
sas-wan.sjc.fl.edovo.com.               IN      A       96.75.17.12     ; SAS WAN Interface

; Lumkin County Jail, GA - A Record
sas-ipmi.lcj.ga.edovo.com.		IN	A	12.168.98.203	; SAS IPMI Interface
sas-wan.lcj.ga.edovo.com.		IN      A       12.168.98.204   ; SAS WAN Interface

; ##################################################
; ############# END DNS CONFIGURATION ##############
; ##################################################
