base:
  '*':
    - saltstack
    - jumpcloud
    - common
    - nfs
  'nuc5ppyh-01':
    - saltstack.master
    - saltstack.jenkins-client
  'steady-coral':
    - nfs.server
    - nfs.btrfs
    - docker
    - docker.jenkins
    - docker.jnlp
    - docker.plex
    - docker.ddns
    - docker.samba
    - docker.folding-at-home
  'E3PO':
    - docker
    - docker.folding-at-home
  'ideal-mouse':
    - docker
    - docker.folding-at-home
