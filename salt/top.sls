base:
  '*':
    - saltstack
    - jumpcloud
    - common
  'salt':
    - saltstack.master
    - saltstack.jenkins-client
  'ideal-mouse':
    - nfs.server
    - nfs.btrfs
    - docker
    - docker.jenkins
    - docker.jnlp
    - docker.plex
    - docker.ddns
    - docker.samba
    - docker.netatalk
#    - docker.folding-at-home
  'odroid-hc2*':
    - gluster.server
#    - gluster
  'suited-macaw':
    - docker
#    - docker.folding-at-home
