leonapacanis725@penguin:~$ hostname -I
100.115.92.195 
leonapacanis725@penguin:~$ ip address
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
5: eth0@if6: <BROADCAST,MULTICASTO,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether 00:16:3e:ba:26:3d brd ff:ff:ff:ff:ff:ff link-netnsid 0
    inet 100.115.92.195/28 brd 100.115.92.207 scope global eth0
       valid_lft forever preferred_lft forever
    inet6 fe80::216:3eff:feba:263d/64 scope link 
       valid_lft forever preferred_lft forever
leonapacanis725@penguin:~$ ip addr
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
5: eth0@if6: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether 00:16:3e:ba:26:3d brd ff:ff:ff:ff:ff:ff link-netnsid 0
    inet 100.115.92.195/28 brd 100.115.92.207 scope global eth0
       valid_lft forever preferred_lft forever
    inet6 fe80::216:3eff:feba:263d/64 scope link 
       valid_lft forever preferred_lft forever
leonapacanis725@penguin:~$ ip route
default via 100.115.92.193 dev eth0 
100.115.92.192/28 dev eth0 proto kernel scope link src 100.115.92.195 
leonapacanis725@penguin:~$ ping -c 4 google.com
PING google.com (142.250.189.110) 56(84) bytes of data.
64 bytes from ncorda-al-in-f14.1e100.net (142.250.189.110): icmp_seq=1 ttl=112 time=28.4 ms
64 bytes from ncorda-al-in-f14.1e100.net (142.250.189.110): icmp_seq=2 ttl=112 time=21.6 ms
64 bytes from ncorda-al-in-f14.1e100.net (142.250.189.110): icmp_seq=3 ttl=112 time=22.5 ms
64 bytes from ncorda-al-in-f14.1e100.net (142.250.189.110): icmp_seq=4 ttl=112 time=22.0 ms

--- google.com ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3005ms
rtt min/avg/max/mdev = 21.629/23.622/28.414/2.782 ms
leonapacanis725@penguin:~$ nslookup google.com
-bash: nslookup: command not found
leonapacanis725@penguin:~$ ss -tuln
Netid   State    Recv-Q   Send-Q     Local Address:Port     Peer Address:Port   Process   
udp     UNCONN   0        0                0.0.0.0:68            0.0.0.0:*                
leonapacanis725@penguin:~$ curl -I https://google.com
HTTP/2 301 
location: https://www.google.com/
content-type: text/html; charset=UTF-8
content-security-policy-report-only: object-src 'none';base-uri 'self';script-src 'nonce-9VAtSq6IeTbkoudssAqv6Q' 'strict-dynamic' 'report-sample' 'unsafe-eval' 'unsafe-inline' https: http:;report-uri https://csp.withgoogle.com/csp/gws/other-hp
date: Wed, 04 Nov 2026 23:45:59 GMT
expires: Fri, 04 Dec 2026 23:45:59 GMT
cache-control: public, max-age=2592000
server: gws
content-length: 220
x-xss-protection: 0
x-frame-options: SAMEORIGIN
alt-svc: h3=":443"; ma=2592000,h3-29=":443"; ma=2592000

leonapacanis725@penguin:~$ sudo apt update && sudo apt install -y dnsutils
Hit:1 https://deb.debian.org/debian bookworm InRelease
Hit:2 https://deb.debian.org/debian bookworm-updates InRelease
Hit:3 https://deb.debian.org/debian-security bookworm-security InRelease
Hit:4 https://persistent.oaistatic.com/codex-app-prod/linux/deb stable InRelease
Ign:5 https://storage.googleapis.com/cros-packages/126 bookworm InRelease
Hit:6 https://storage.googleapis.com/cros-packages/126 bookworm Release
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
132 packages can be upgraded. Run 'apt list --upgradable' to see them.
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  bind9-dnsutils bind9-host bind9-libs libfstrm0 libjemalloc2 liblmdb0 libprotobuf-c1
  libuv1
The following NEW packages will be installed:
  bind9-dnsutils bind9-host bind9-libs dnsutils libfstrm0 libjemalloc2 liblmdb0
  libprotobuf-c1 libuv1
0 upgraded, 9 newly installed, 0 to remove and 132 not upgraded.
Need to get 1,921 kB of archives.
After this operation, 5,726 kB of additional disk space will be used.
Get:1 https://deb.debian.org/debian bookworm/main amd64 libuv1 amd64 1.44.2-1+deb12u1 [136 kB]
Get:2 https://deb.debian.org/debian bookworm/main amd64 libfstrm0 amd64 0.6.1-1 [21.6 kB]
Get:3 https://deb.debian.org/debian bookworm/main amd64 libjemalloc2 amd64 5.3.0-1 [275 kB]
Get:4 https://deb.debian.org/debian bookworm/main amd64 liblmdb0 amd64 0.9.24-1 [45.0 kB]
Get:5 https://deb.debian.org/debian bookworm/main amd64 libprotobuf-c1 amd64 1.4.1-1+b1 [27.5 kB]
Get:6 https://deb.debian.org/debian-security bookworm-security/main amd64 bind9-libs amd64 1:9.18.49-1~deb12u3 [1,186 kB]
Get:7 https://deb.debian.org/debian-security bookworm-security/main amd64 bind9-host amd64 1:9.18.49-1~deb12u3 [57.6 kB]
Get:8 https://deb.debian.org/debian-security bookworm-security/main amd64 bind9-dnsutils amd64 1:9.18.49-1~deb12u3 [158 kB]
Get:9 https://deb.debian.org/debian-security bookworm-security/main amd64 dnsutils all 1:9.18.49-1~deb12u3 [14.2 kB]
Fetched 1,921 kB in 0s (4,195 kB/s)  
Selecting previously unselected package libuv1:amd64.
(Reading database ... 42368 files and directories currently installed.)
Preparing to unpack .../0-libuv1_1.44.2-1+deb12u1_amd64.deb ...
Unpacking libuv1:amd64 (1.44.2-1+deb12u1) ...
Selecting previously unselected package libfstrm0:amd64.
Preparing to unpack .../1-libfstrm0_0.6.1-1_amd64.deb ...
Unpacking libfstrm0:amd64 (0.6.1-1) ...
Selecting previously unselected package libjemalloc2:amd64.
Preparing to unpack .../2-libjemalloc2_5.3.0-1_amd64.deb ...
Unpacking libjemalloc2:amd64 (5.3.0-1) ...
Selecting previously unselected package liblmdb0:amd64.
Preparing to unpack .../3-liblmdb0_0.9.24-1_amd64.deb ...
Unpacking liblmdb0:amd64 (0.9.24-1) ...
Selecting previously unselected package libprotobuf-c1:amd64.
Preparing to unpack .../4-libprotobuf-c1_1.4.1-1+b1_amd64.deb ...
Unpacking libprotobuf-c1:amd64 (1.4.1-1+b1) ...
Selecting previously unselected package bind9-libs:amd64.
Preparing to unpack .../5-bind9-libs_1%3a9.18.49-1~deb12u3_amd64.deb ...
Unpacking bind9-libs:amd64 (1:9.18.49-1~deb12u3) ...
Selecting previously unselected package bind9-host.
Preparing to unpack .../6-bind9-host_1%3a9.18.49-1~deb12u3_amd64.deb ...
Unpacking bind9-host (1:9.18.49-1~deb12u3) ...
Selecting previously unselected package bind9-dnsutils.
Preparing to unpack .../7-bind9-dnsutils_1%3a9.18.49-1~deb12u3_amd64.deb ...
Unpacking bind9-dnsutils (1:9.18.49-1~deb12u3) ...
Selecting previously unselected package dnsutils.
Preparing to unpack .../8-dnsutils_1%3a9.18.49-1~deb12u3_all.deb ...
Unpacking dnsutils (1:9.18.49-1~deb12u3) ...
Setting up liblmdb0:amd64 (0.9.24-1) ...
Setting up libfstrm0:amd64 (0.6.1-1) ...
Setting up libjemalloc2:amd64 (5.3.0-1) ...
Setting up libprotobuf-c1:amd64 (1.4.1-1+b1) ...
Setting up libuv1:amd64 (1.44.2-1+deb12u1) ...
Setting up bind9-libs:amd64 (1:9.18.49-1~deb12u3) ...
Setting up bind9-host (1:9.18.49-1~deb12u3) ...
Setting up bind9-dnsutils (1:9.18.49-1~deb12u3) ...
Setting up dnsutils (1:9.18.49-1~deb12u3) ...
Processing triggers for libc-bin (2.36-9+deb12u4) ...
Processing triggers for man-db (2.11.2-2) ...
leonapacanis725@penguin:~$ nslookup google.com
Server:         100.115.92.193
Address:        100.115.92.193#53

Non-authoritative answer:
Name:   google.com
Address: 142.250.189.110
Name:   google.com
Address: 2607:f8b0:4009:80d::200e
