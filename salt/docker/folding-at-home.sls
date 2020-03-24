#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


fah:
  docker_container.running:
    - binds:
      - /srv/nfs/masters_DVR:/srv/masters_DVR:ro
      - /srv/plexmedia_symlinks:/srv/plexmedia_symlinks:rw
    - image: 'johnktims/folding-at-home:latest'
    - detach: True
    #- entrypoint: "FAHClient --web-allow=0/0:7396 --allow=0/0:7396"
    - entrypoint: "FAHClient"
    - cmd:
      - '--user=devops-brain'
      - "--team=234679"
      - "--gpu=false"
      - "--smp=true"
      - "--power=full"
    - network_mode: "host"


