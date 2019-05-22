base:
  '*':
    - saltstack
    - jumpcloud
  'nuc5ppyh-01':
    - saltstack.master
    - saltstack.jenkins-client
    - gluster.hosts
    - gluster.client
    - docker
    - docker.jenkins
    - docker.jnlp
    - docker.samba
    - docker.plex
#    - docker.ddns
    - docker.netatalk
  'nuc5cpyh-01':
    - gluster.hosts
    - gluster.client
    - docker
    - docker.jnlp
    - docker.duplicati
    - docker.samba
#  'Zotac-mini-01':
#    - gluster.hosts
#    - gluster.client
#    - docker
#    - docker.jnlp
#    - docker.samba
  'odroid-hc2-*':
    - gluster.hosts
    - gluster.disks
    - gluster

