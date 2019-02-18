#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


## TODO:  make list dynamic, use salt['dnsutil.A'](hostname)[0]
/etc/hosts:
  file.managed:
    - create: True
    - makedirs: True
    - contents: |
        127.0.0.1	{{ salt['grains.get']('host', 'localhost.local') }}
        127.0.0.1	localhost
        ::1		localhost ip6-localhost ip6-loopback
        ff02::1		ip6-allnodes
        ff02::2		ip6-allrouters
        192.168.7.69    nuc5ppyh-01
        192.168.7.68    nuc5cpyh-01
        192.168.7.67    Zotac-mini-01
        192.168.7.199   odroid-hc2-01
        192.168.7.198   odroid-hc2-02
        192.168.7.197   odroid-hc2-03
        192.168.7.196   odroid-hc2-04
        192.168.7.195   odroid-hc2-05
        192.168.7.194   odroid-hc2-06
        192.168.7.193   odroid-hc2-07
        192.168.7.192   odroid-hc2-08
        192.168.7.191   odroid-hc2-09
        192.168.7.190   odroid-hc2-10
        192.168.7.189   odroid-hc2-11
        192.168.7.188   odroid-hc2-12

