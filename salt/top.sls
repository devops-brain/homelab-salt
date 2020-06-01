base:
  '*':
    - saltstack
    - jumpcloud
    - common
    - nfs
  'nuc5ppyh-01':
    - saltstack.master
    - saltstack.jenkins-client
  'salt':
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
  'wired-clam':
    - nfs.btrfs
  'fast-stag':
    - nfs.btrfs
