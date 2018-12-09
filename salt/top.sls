base:
  '*':
    - saltstack
  'Zotac-mini-01':
    - saltstack.master
    - gluster.hosts
    - gluster.client
    - docker
  'odroid-hc2-*':
    - gluster.hosts
    - gluster.disks
    - gluster

