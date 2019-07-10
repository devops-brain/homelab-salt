#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


nfs-common:
  pkg:
    - installed

## mount share from ideal-mouse
{{salt['pillar.get']('nfs:server')}}:
  mount.mounted:
    - device: {{salt['pillar.get']('nfs:server')}}:/srv/nfs
    - fstype: nfs
    - mkmnt: True
    - opts: rw,sync,no_root_squash,no_subtree_check
    - dump: 0
    - pass_num: 2



