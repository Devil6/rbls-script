# rbls Script

Small shell script for checking if a domain is on any DNS RBL

Usage:
```
rbls.sh DOMAINHERE
```

Example:
```
rbls.sh example.com
```

This script will lookup the domains MX records, resolve them, then run  the IP's against the RBL's currently configured.


Currently checks the following RBL's


```
all.s5h.net
b.barracudacentral.org
bl.spamcop.net
blacklist.woody.ch
bogons.cymru.com
cbl.abuseat.org
combined.abuse.ch
db.wpbl.info
dnsbl-1.uceprotect.net
dnsbl-2.uceprotect.net
dnsbl-3.uceprotect.net
dnsbl.dronebl.org
dnsbl.sorbs.net
drone.abuse.ch
duinv.aupads.org
dul.dnsbl.sorbs.net
dyna.spamrats.com
http.dnsbl.sorbs.net
ips.backscatterer.org
ix.dnsbl.manitu.net
korea.services.net
misc.dnsbl.sorbs.net
noptr.spamrats.com
orvedb.aupads.org
pbl.spamhaus.org
proxy.bl.gweep.ca
psbl.surriel.com
relays.bl.gweep.ca
relays.nether.net
sbl.spamhaus.org
singular.ttk.pte.hu
smtp.dnsbl.sorbs.net
socks.dnsbl.sorbs.net
spam.abuse.ch
spam.dnsbl.anonmails.de
spam.dnsbl.sorbs.net
spam.spamrats.com
spambot.bls.digibase.ca
spamrbl.imp.ch
spamsources.fabel.dk
ubl.lashback.com
ubl.unsubscore.com
virus.rbl.jp
web.dnsbl.sorbs.net
wormrbl.imp.ch
xbl.spamhaus.org
z.mailspike.net
zen.spamhaus.org
zombie.dnsbl.sorbs.net
```
