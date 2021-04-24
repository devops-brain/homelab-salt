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
  'odroid-hc2*':
    - gluster.server
#    - gluster
  'wired-clam':
    - docker
  'fast-stag':
    - docker
  'hairy-hyena':
    - docker
  'cuddly-kitten':
    - docker
  'suited-macaw':
    - docker
