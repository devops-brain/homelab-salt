base:
  '*':
    - saltstack
    - jumpcloud
    - common
    - nfs
  'nuc5ppyh-01':
    - saltstack.master
    - saltstack.jenkins-client
#    - gluster.client
#    - docker
#    - docker.jnlp
  'bn-bkhoyi-dev':
    - saltstack.master
#    - saltstack.jenkins-client
    - desktop
    - desktop.xrdp
    - desktop.development
#  'nuc5cpyh-01':
#    - desktop
#  'Zotac-mini-01':
#    - desktop
  'bad-wol*':
    - docker
    - docker.jenkins
    - docker.jnlp
    - docker.plex
    - docker.ddns
    - docker.samba
    - nfs.server
    - desktop
    - desktop.xrdp
    - desktop.development
  'real-beagle':
    - nfs.server
  'steady-coral':
    - nfs.server
    - kubernetes
    - kubernetes.master
