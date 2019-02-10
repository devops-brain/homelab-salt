base:
  '*':
    - saltstack
    - jumpcloud
  'Zotac-mini-01':
    - saltstack.master
    - saltstack.jenkins-client
    - gluster.hosts
    - gluster.client
    - docker
    - docker.jenkins
    - docker.jnlp
  'nuc5*':
    - gluster.hosts
    - gluster.client
    - docker
    - docker.jnlp
  'odroid-hc2-*':
    - gluster.hosts
    - gluster.disks
    - gluster

