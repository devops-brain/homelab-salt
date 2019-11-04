#!jinja|yaml



# enfore share perms
/srv/plexmedia_symlinks-perms:
  file.directory:
    - name: /srv/plexmedia_symlinks
    - makedirs: True
    - user: 1000
    - group: 1000
    - mode: 755
/srv/plexmedia_pictures-perms:
  file.directory:
    - name: /srv/plexmedia_pictures
    - makedirs: True
    - user: 1000
    - group: 1000
    - mode: 755

plex:
  docker_container.running:
    - binds:
      - /var/lib/plexdb:/config:rw
      - /tmp/plex:/transcode:rw
      - /mnt/steady-coral/nfs/masters_DVR:/srv/masters_DVR:ro
      - /mnt/steady-coral/nfs/masters_Koi-Pond:/srv/masters_Koi-Pond:ro
      - /mnt/steady-coral/nfs/masters_Rose-Garden:/srv/masters_Rose-Garden:ro
      - /mnt/steady-coral/nfs/masters_Dragons-Den:/srv/masters_Dragons-Den:ro
      - /mnt/steady-coral/nfs/masters_Donna-Collection:/srv/masters_Donna-Collection:ro
      - /mnt/steady-coral/nfs/masters_Roger-Roger:/srv/masters_Roger-Roger:ro
      - /srv/plexmedia_symlinks:/srv/plexmedia_symlinks:rw
      - /srv/plexmedia_pictures:/srv/plexmedia_pictures:rw
      - /srv/plex-backups:/data/backups:rw
    - image: plexinc/pms-docker:plexpass
    - detach: True
    - network_mode: "host"

