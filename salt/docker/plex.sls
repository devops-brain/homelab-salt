#!jinja|yaml



# enfore share perms
/mnt/glusterfs/plexmedia_symlinks:
  file.directory:
    - makedirs: True
    - user: 10000
    - group: 10000
    - mode: 744

plex:
  docker_container.running:
    - binds:
      - /var/lib/plexdb:/config:rw
      - /tmp/plex:/transcode:rw
      - /mnt/glusterfs/masters_DVR:/srv/masters_DVR:ro
      - /mnt/glusterfs/masters_Koi-Pond:/srv/masters_Koi-Pond:ro
      - /mnt/glusterfs/masters_Rose-Garden:/srv/masters_Rose-Garden:ro
      - /mnt/glusterfs/masters_Dragons-Den:/srv/masters_Dragons-Den:ro
      - /mnt/glusterfs/masters_Donna-Collection:/srv/masters_Donna-Collection:ro
      - /mnt/glusterfs/masters_Roger-Roger:/srv/masters_Roger-Roger:ro
      - /mnt/glusterfs/plexmedia_symlinks:/srv/plexmedia_symlinks:rw
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

