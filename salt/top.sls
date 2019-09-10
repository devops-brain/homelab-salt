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
#  'nuc5cpyh-01':
#    - desktop
#  'Zotac-mini-01':
#    - desktop
  'bad-wol*':
    - docker
#    - docker.jenkins
#    - docker.jnlp
#    - docker.plex
#    - docker.ddns
#    - docker.samba
    - nfs.server
  'real-beagle':
    - nfs.server
  'steady-coral':
    - nfs.server
    - kubernetes
