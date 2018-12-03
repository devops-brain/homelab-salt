glusterfs-server:
  pkg:
    - installed
  service.running:
    - name: glusterd
    - enable: True

