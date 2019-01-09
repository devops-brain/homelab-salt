base:
  '*':
    - saltstack
  'Zotac-mini-01':
    - saltstack.master
    - gluster.hosts
    - gluster.client
    - docker
  'nuc5cpyh-01':
    - gluster.hosts
    - gluster.client
    - docker
    - desktop
  'odroid-hc2-*':
    - gluster.hosts
    - gluster.disks
    - gluster

