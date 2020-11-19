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
    - docker.folding-at-home
  'odroid-hc2*':
    - gluster.server
#    - gluster
  'wired-clam':
    - docker
    - docker.folding-at-home
  'fast-stag':
    - docker
    - docker.folding-at-home
  'hairy-hyena':
    - docker
    - docker.folding-at-home
  'cuddly-kitten':
    - docker
    - docker.folding-at-home
  'suited-macaw':
    - docker
    - docker.folding-at-home
