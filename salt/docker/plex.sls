#!jinja|yaml



plex:
  docker_container.running:
    - binds:
      - /var/lib/plexdb:/config:rw
      - /tmp/plex:/transcode:rw
      - /mnt/glusterfs/plexmedia_DVR_TV:/data/DVR_TV:rw
      - /mnt/glusterfs/plexmedia_DVR_Movies:/data/DVR_Movies:rw
      - /mnt/glusterfs/plexmedia_Koi-Pond_TV:/data/Koi-Pond_TV:rw
      - /mnt/glusterfs/plexmedia_Koi-Pond_Movies:/data/Koi-Pond_Movies:rw
      - /mnt/glusterfs/plexmedia_Rose-Garden_TV:/data/Rose-Garden_TV:rw
      - /mnt/glusterfs/plexmedia_Rose-Garden_Movies:/data/Rose-Garden_Movies:rw
      - /mnt/glusterfs/plexmedia_Dragons-Den_TV:/data/Dragons-Den_TV:rw
      - /mnt/glusterfs/plexmedia_Dragons-Den_Movies:/data/Dragons-Den_Movies:rw
      - /mnt/glusterfs/plexmedia_Donna-Collection_TV:/data/Donna-Collection_TV:rw
      - /mnt/glusterfs/plexmedia_Donna-Collection_Movies:/data/Donna-Collection_Movies:rw
      - /mnt/glusterfs/plexmedia_Roger-Roger_Movies:/data/Roger-Roger_TV:rw
      - /mnt/glusterfs/plexmedia_Roger-Roger_Movies:/data/Roger-Roger_Movies:rw
      - /mnt/glusterfs/plex-backups:/data/backups:rw
    - image: plexinc/pms-docker:plexpass
    - detach: True
    - network_mode: "host"


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
