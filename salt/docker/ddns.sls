#!jinja|yaml



/var/glusterfs/google-domains-ddns:
  file.directory:
    - makedirs: True
    - user: 1000
    - group: 1000
    - mode: 744

ddns:
  docker_container.running:
    - binds:
      - /etc/localtime:/etc/localtime:ro
      - /mnt/glusterfs/google-domains-ddns:/config
    - image: 'dragoncube/google-domains-ddns:latest'
    - detach: True
    - network_mode: "host"



