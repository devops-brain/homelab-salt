#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


nfs-kernel-server:
  pkg:
    - installed

/srv/nfs:
  file.directory:
    - name: /srv/nfs
    - makedirs: True
    - user: 1001
    - group: 1001
    - mode: 777

## /etc/exports
nfs-share:
  nfs_export.present:
    - name:     '/srv/nfs'
    - hosts:    '192.168.76.0/22'
    - options:
      - 'rw'
      - 'sync'
      - 'no_subtree_check'
      - 'no_root_squash'


