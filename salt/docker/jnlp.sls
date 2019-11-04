#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


jnlp:
  docker_container.running:
    - binds:
      - /srv/nfs/masters_DVR:/srv/masters_DVR:ro
      - /srv/nfs/masters_Koi-Pond:/srv/masters_Koi-Pond:ro
      - /srv/nfs/masters_Rose-Garden:/srv/masters_Rose-Garden:ro
      - /srv/nfs/masters_Dragons-Den:/srv/masters_Dragons-Den:ro
      - /srv/nfs/masters_Donna-Collection:/srv/masters_Donna-Collection:ro
      - /srv/nfs/masters_Roger-Roger:/srv/masters_Roger-Roger:ro
      - /srv/plexmedia_symlinks:/srv/plexmedia_symlinks:rw
    - image: 'khoyi/jnlp-slave:latest'
    - detach: True
    - entrypoint: "jenkins-slave -url {{salt['pillar.get']('jenkins:master_url', 'http://192.168.7.69:8080')}} -workDir=/home/jenkins/agent {{salt['pillar.get']('docker:jnlp:secret', '')}} {{hostname}}-docker"
    - network_mode: "host"

