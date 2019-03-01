#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


jnlp:
  docker_container.running:
    - binds:
      - /mnt/glusterfs/masters_DVR:/srv/masters/DVR:ro
      - /mnt/glusterfs/masters_Koi-Pond:/srv/masters_Koi-Pond:ro
      - /mnt/glusterfs/Rose-Garden:/srv/Rose-Garden:ro
      - /mnt/glusterfs/Dragons-Den:/srv/Dragons-Den:ro
      - /mnt/glusterfs/Donna-Collection:/srv/Donna-Collection:ro
      - /mnt/glusterfs/Roger-Roger:/srv/Roger-Roger:ro
      - /mnt/glusterfs/plexmedia_DVR_TV:/srv/plexmedia_DVR_TV:rw
      - /mnt/glusterfs/plexmedia_DVR_Movies:/srv/plexmedia_DVR_Movies:rw
      - /mnt/glusterfs/plexmedia_Koi-Pond_TV:/srv/plexmedia_Koi-Pond_TV:rw
      - /mnt/glusterfs/plexmedia_Koi-Pond_Movies:/srv/plexmedia_Koi-Pond_Movies:rw
      - /mnt/glusterfs/plexmedia_Rose-Garden_TV:/srv/plexmedia_Rose-Garden_TV:rw
      - /mnt/glusterfs/plexmedia_Rose-Garden_Movies:/srv/plexmedia_Rose-Garden_Movies:rw
      - /mnt/glusterfs/plexmedia_Dragons-Den_TV:/srv/plexmedia_Dragons-Den_TV:rw
      - /mnt/glusterfs/plexmedia_Dragons-Den_Movies:/srv/plexmedia_Dragons-Den_Movies:rw
      - /mnt/glusterfs/plexmedia_Donna-Collection_TV:/srv/plexmedia_Donna-Collection_TV:rw
      - /mnt/glusterfs/plexmedia_Donna-Collection_Movies:/srv/plexmedia_Donna-Collection_Movies:rw
      - /mnt/glusterfs/plexmedia_Roger-Roger_TV:/srv/plexmedia_Roger-Roger_TV:rw
      - /mnt/glusterfs/plexmedia_Roger-Roger_Movies:/srv/plexmedia_Roger-Roger_Movies:rw
    - image: 'khoyi/jnlp-slave:latest'
    - detach: True
    - entrypoint: "jenkins-slave -url {{salt['pillar.get']('jenkins:master_url', 'http://192.168.7.69:8080')}} -workDir=/home/jenkins/agent {{salt['pillar.get']('docker:jnlp:secret', '')}} {{hostname}}-docker"
    - network_mode: "host"

