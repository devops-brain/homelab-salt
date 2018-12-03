base:
  '*':
    - saltstack
  'Zotac-mini-01':
    - saltstack.master
  'odroid-hc2-*':
    - gluster
    - gluster.hosts

