#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


jnlp:
  docker_container.running:
    - binds:
      - /mnt/steady-coral/nfs/masters_DVR:/srv/masters_DVR:ro
      - /mnt/steady-coral/nfs/masters_Koi-Pond:/srv/masters_Koi-Pond:ro
      - /mnt/steady-coral/nfs/masters_Rose-Garden:/srv/masters_Rose-Garden:ro
      - /mnt/steady-coral/nfs/masters_Dragons-Den:/srv/masters_Dragons-Den:ro
      - /mnt/steady-coral/nfs/masters_Donna-Collection:/srv/masters_Donna-Collection:ro
      - /mnt/steady-coral/nfs/masters_Roger-Roger:/srv/masters_Roger-Roger:ro
      - /srv/plexmedia_symlinks:/srv/plexmedia_symlinks:rw
    - image: 'khoyi/jnlp-slave:latest'
    - detach: True
    - entrypoint: "jenkins-slave -url {{salt['pillar.get']('jenkins:master_url', 'http://192.168.7.69:8080')}} -workDir=/home/jenkins/agent {{salt['pillar.get']('docker:jnlp:secret', '')}} {{hostname}}-docker"
    - network_mode: "host"

