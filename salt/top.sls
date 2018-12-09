base:
  '*':
    - saltstack
  'Zotac-mini-01':
    - saltstack.master
  'odroid-hc2-*':
    - gluster.hosts
    - gluster.disks
    - gluster

