base:
  '*':
    - saltstack
    - jumpcloud
    - common
  'salt':
    - saltstack.master
    - saltstack.jenkins-client
  'fast-stag':
    - nfs
    - nfs.server
    - nfs.btrfs
  'ideal-mouse':
    - nfs
    - nfs.server
    - nfs.btrfs
    - docker
    - docker.jenkins
    - docker.jnlp
    - docker.plex
    - docker.ddns
    - docker.samba
  'odroid-hc2*':
    - gluster
    - gluster.server
