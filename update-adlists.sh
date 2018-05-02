#!/bin/bash

# Check if root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root or use sudo..."
  exit 1
fi

# See if pi-hole dir exists
if ! [ -e /etc/pihole/ ]
then
  echo "Directory '/etc/pihole/' does not exist. Please install the latest version of pi-hole first."
  exit 1
fi

# Pi-Hole's block lists

echo "http://hosts-file.net/ad_servers.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "http://someonewhocares.org/hosts/hosts" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "http://sysctl.org/cameleon/hosts" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "http://v.firebog.net/hosts/HPHosts-ads.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "http://v.firebog.net/hosts/HPHosts-emd.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "http://v.firebog.net/hosts/HPHosts-exp.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "http://v.firebog.net/hosts/HPHosts-psh.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "http://winhelp2002.mvps.org/hosts.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "http://www.joewein.net/dl/bl/dom-bl.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "http://www.networksec.org/grabbho/block.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://adaway.org/hosts.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://bitbucket.org/ethanr/dns-blacklists/raw/8575c9f96e5b4a1308f2f12394abd86d0927a4a0/bad_lists/Mandiant_APT1_Report_Appendix_D.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://gist.githubusercontent.com/anudeepND/adac7982307fec6ee23605e281a57f1a/raw/5b8582b906a9497624c3f3187a49ebc23a9cf2fb/Test.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://github.com/StevenBlack/hosts/blob/master/extensions/fakenews/hosts" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://github.com/StevenBlack/hosts/blob/master/extensions/gambling/hosts" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://hostsfile.mine.nu/hosts0.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://hosts-file.net/ad_servers.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://hosts-file.net/emd.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://hosts-file.net/exp.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://hosts-file.net/fsa.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://hosts-file.net/grm.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://hosts-file.net/mmt.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://hosts-file.net/pha.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://hosts-file.net/psh.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://hostsfile.org/Downloads/hosts.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://isc.sans.edu/feeds/suspiciousdomains_Low.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://isc.sans.edu/feeds/suspiciousdomains_Medium.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://mirror.cedia.org.ec/malwaredomains/immortal_domains.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://mirror1.malwaredomains.com/files/justdomains" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://openphish.com/feed.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://pgl.yoyo.org/as/serverlist.php?showintro=0&startdate%5Byear%5D=2000die" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://ransomwaretracker.abuse.ch/downloads/CW_C2_DOMBL.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://ransomwaretracker.abuse.ch/downloads/LY_C2_DOMBL.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://ransomwaretracker.abuse.ch/downloads/RW_DOMBL.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://ransomwaretracker.abuse.ch/downloads/TC_C2_DOMBL.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/anudeepND/blacklist/master/CoinMiner.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://github.com/chadmayfield/pihole-blocklists/raw/master/lists/pi_blocklist_porn_all.list" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/CHEF-KOCH/Audio-fingerprint-pages/master/AudioFp.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/CHEF-KOCH/Canvas-fingerprinting-pages/master/Canvas.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/CHEF-KOCH/Canvas-Font-Fingerprinting-pages/master/Canvas.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/CHEF-KOCH/Spotify-Ad-free/master/Spotifynulled.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/CHEF-KOCH/WebRTC-tracking/master/WebRTC.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/win10/spy.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/Dawsey21/Lists/master/main-blacklist.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/piwik/referrer-spam-blacklist/master/spammers.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/quidsup/notrack/master/malicious-sites.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/quidsup/notrack/master/trackers.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/reek/anti-adblock-killer/master/anti-adblock-killer-filters.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn-social/hosts" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/data/add.2o7Net/hosts" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/data/add.Risk/hosts" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/data/add.Spam/hosts" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/data/KADhosts/hosts" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/data/SpotifyAds/hosts" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/data/tyzbit/hosts" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/data/UncheckyAds/hosts" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/vokins/yhosts/master/hosts" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/ZeroDot1/CoinBlockerLists/master" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/ZeroDot1/CoinBlockerLists/master/hosts" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://reddestdream.github.io/Projects/MinimalHosts/etc/MinimalHostsBlocker/minimalhosts" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://s3.amazonaws.com/lists.disconnect.me/simple_malvertising.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://s3.amazonaws.com/lists.disconnect.me/simple_tracking.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://v.firebog.net/hosts/AdguardDNS.tx" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://v.firebog.net/hosts/Airelle-hrsk.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://v.firebog.net/hosts/Airelle-trc.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://v.firebog.net/hosts/BillStearns.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://v.firebog.net/hosts/Easylist.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://v.firebog.net/hosts/Easyprivacy.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://v.firebog.net/hosts/Prigent-Ads.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://v.firebog.net/hosts/Prigent-Malware.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://v.firebog.net/hosts/Prigent-Phishing.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://v.firebog.net/hosts/Shalla-mal.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://v.firebog.net/hosts/static/SamsungSmart.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://v.firebog.net/hosts/static/w3kbl.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://www.dshield.org/feeds/suspiciousdomains_Low.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://www.joewein.net/dl/bl/dom-bl-base.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://www.malwaredomainlist.com/hostslist/hosts.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://zeustracker.abuse.ch/blocklist.php?download=domainblocklist" | sudo tee -a /etc/pihole/adlists.list > /dev/null
