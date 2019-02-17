#!jinja|yaml



plex:
  docker_container.running:
    - binds:
      - /var/lib/plexdb:/config:rw
      - /tmp/plex:/transcode:rw
      - /mnt/glusterfs/plexmedia:/data:rw
    - image: plexinc/pms-docker:plexpass
    - auto_remove: True
    - detach: True
    - hostname: BadWolf2.devops-brain.net
    - dommainname: devops-brain.net
    - network_mode: "host"
    - restart_policy: always


#sudo docker run -d \
#  --name plex \
#  --network=host \
#  -h BadWolf2.devops-brain.net \
#  -v /var/lib/plexdb:/config \
#  -v /tmp/plex:/transcode \
#  -v /mnt/glusterfs/plexmedia:/data \
#  plexinc/pms-docker:plexpass


#    - dns_search:
#      - foo1.domain.tld
#      - foo2.domain.tld
#    - dommainname: devops-brain.net
#    - network_mode: "host"
#    - ports:
#      - 8080
#      - 50000
#    - publish_all_ports: True
#    - port_bindings:
#      - 4505-4506:14505-14506
#      - 2123:2123/udp
#      - 8080
