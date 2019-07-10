#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


nfs-common:
  pkg:
    - installed

{{salt['pillar.get']('nfs:server')}}_mountpoint:
  file.directory:
    - name: /mnt/{{salt['pillar.get']('nfs:server')}}/nfs
    - makedirs: True
    - user: 1001
    - group: 1001
    - mode: 777

## mount share from ideal-mouse
/mnt/{{salt['pillar.get']('nfs:server')}}/nfs:
  mount.mounted:
    - device: {{salt['pillar.get']('nfs:server')}}:/srv/nfs
    - fstype: nfs
    - mkmnt: True
    - dump: 0
    - pass_num: 2



