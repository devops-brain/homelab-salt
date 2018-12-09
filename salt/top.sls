base:
  '*':
    - saltstack
  'Zotac-mini-01':
    - saltstack.master
    - gluster.hosts
    - gluster.client
  'odroid-hc2-*':
    - gluster.hosts
    - gluster.disks
    - gluster

