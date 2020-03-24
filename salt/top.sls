base:
  '*':
    - saltstack
    - jumpcloud
    - common
    - nfs
  'nuc5ppyh-01':
    - saltstack.master
    - saltstack.jenkins-client
  'bn-bkhoyi-dev':
    - saltstack.master
#    - saltstack.jenkins-client
    - desktop
    - desktop.xrdp
    - desktop.development
    - desktop.btrfs
  'bad-wol*':
    - docker
    - docker.plex
    - docker.samba
    - desktop
    - desktop.xrdp
    - desktop.development
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
