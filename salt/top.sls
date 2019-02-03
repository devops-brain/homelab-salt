base:
  '*':
    - saltstack
    - jumpcloud
  'Zotac-mini-01':
    - saltstack.master
    - gluster.hosts
    - gluster.client
    - docker
  'nuc5*':
    - gluster.hosts
    - gluster.client
    - docker
  'odroid-hc2-*':
    - gluster.hosts
    - gluster.disks
    - gluster

