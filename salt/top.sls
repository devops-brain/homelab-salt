base:
  '*':
    - saltstack
    - jumpcloud
    - common
  'nuc5ppyh-01':
    - saltstack.master
    - saltstack.jenkins-client
#    - gluster.client
#    - docker
#    - docker.jnlp
  'nuc5cpyh-01':
    - gluster.client
    - docker
#    - docker.jnlp
#    - docker.duplicati
    - docker.samba
#  'Zotac-mini-01':
#    - gluster.client
#    - docker
#    - docker.jnlp
#    - docker.samba
  'bad-wol*':
    - gluster.client
    - docker
    - docker.jenkins
    - docker.jnlp
    - docker.plex
    - docker.ddns
    - docker.samba
  'odroid-hc2-*':
    - gluster.disks
    - gluster
    - gluster.volumes
  'ideal-mouse':
    - nfs.server
  'odroid-hc2-01':
    - nfs
  'odroid-hc2-02':
    - nfs
  'odroid-hc2-03':
    - nfs
  'odroid-hc2-04':
    - nfs
  'odroid-hc2-05':
    - nfs
  'odroid-hc2-06':
    - nfs
  'odroid-hc2-07':
    - nfs
  'odroid-hc2-08':
    - nfs
  'odroid-hc2-09':
    - nfs
  'odroid-hc2-1*':
    - nfs
