#!jinja|yaml



# enfore share perms
/mnt/glusterfs/plexmedia_symlinks-perms:
  file.directory:
    - name: /mnt/glusterfs/plexmedia_symlinks
    - makedirs: True
    - user: 10000
    - group: 10000
    - mode: 755
/mnt/glusterfs/plexmedia_picturess-perms:
  file.directory:
    - name: /mnt/glusterfs/plexmedia_picturess
    - makedirs: True
    - user: 10000
    - group: 10000
    - mode: 755

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
      - /mnt/glusterfs/plexmedia_picturess:/srv/plexmedia_picturess:rw
      - /mnt/glusterfs/plex-backups:/data/backups:rw
    - image: plexinc/pms-docker:plexpass
    - detach: True
    - network_mode: "host"

