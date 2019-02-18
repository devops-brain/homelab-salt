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
  'nuc5cpyh-01':
    - gluster.hosts
    - gluster.client
    - docker
#    - docker.jnlp
  'Zotac-mini-01':
    - gluster.hosts
    - gluster.client
    - docker
#    - docker.jnlp
#    - docker.plex
  'odroid-hc2-*':
    - gluster.hosts
    - gluster.disks
    - gluster

