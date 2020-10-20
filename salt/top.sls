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
    - docker.netatalk
  'odroid-hc2*':
    - gluster.server
#    - gluster
