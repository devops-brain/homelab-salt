#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


nfs-kernel-server:
  pkg:
    - installed

## todo, make dir

## /etc/exports
nfs-share:
  nfs_export.present:
    - name:     '/srv/nfs'
    - hosts:    '192.168.7.0/24'
    - options:
      - 'rw'
      - 'sync'
      - 'no_subtree_check'
      - 'no_root_squash'


