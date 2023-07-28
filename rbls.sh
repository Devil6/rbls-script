#!/bin/bash
ips=()
RBLS=("all.s5h.net" "b.barracudacentral.org" "bl.spamcop.net" "blacklist.woody.ch" "bogons.cymru.com" "cbl.abuseat.org" "combined.abuse.ch" "db.wpbl.info" "dnsbl-1.uceprotect.net" "dnsbl-2.uceprotect.net" "dnsbl-3.uceprotect.net" "dnsbl.dronebl.org" "dnsbl.sorbs.net" "drone.abuse.ch" "duinv.aupads.org" "dul.dnsbl.sorbs.net" "dyna.spamrats.com" "http.dnsbl.sorbs.net" "ips.backscatterer.org" "ix.dnsbl.manitu.net" "korea.services.net" "misc.dnsbl.sorbs.net" "noptr.spamrats.com" "orvedb.aupads.org" "pbl.spamhaus.org" "proxy.bl.gweep.ca" "psbl.surriel.com" "relays.bl.gweep.ca" "relays.nether.net" "sbl.spamhaus.org" "singular.ttk.pte.hu" "smtp.dnsbl.sorbs.net" "socks.dnsbl.sorbs.net" "spam.abuse.ch" "spam.dnsbl.anonmails.de" "spam.dnsbl.sorbs.net" "spam.spamrats.com" "spambot.bls.digibase.ca" "spamrbl.imp.ch" "spamsources.fabel.dk" "ubl.lashback.com" "ubl.unsubscore.com" "virus.rbl.jp" "web.dnsbl.sorbs.net" "wormrbl.imp.ch" "xbl.spamhaus.org" "z.mailspike.net" "zen.spamhaus.org" "zombie.dnsbl.sorbs.net")

for y in $(dig +noall +answer mx $1 | awk '{if($5 == "1" || "0") system("dig +noall +answer "$6)}' | awk '{print $5}');
do 
	ips+=($(echo $y | awk -F '.' '{print $4"."$3"."$2"."$1}'));
done

for x in ${RBLS[@]};
do
#	echo $x;
	for xx in "${ips[@]}";
	do
		#echo "$xx.$x"
		if [[ $(dig +noall +answer $xx.$x | awk '{print $5}') == "127.0.0"* ]]; then
			echo "$(echo $xx | awk -F '.' '{print $4"."$3"."$2"."$1}') is Listed on $x";
		fi
	done
done

#for z in "${ips[@]}";
#do
#	echo $z;
#done
