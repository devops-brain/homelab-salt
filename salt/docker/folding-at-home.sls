#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


/srv/fah_config:
  file.directory:
    - name: /srv/fah_config
    - makedirs: True
    - user: 1000
    - group: 1000
    - mode: 755

fah:
  docker_container.running:
    - binds:
      - /srv/fah_config:/etc/fahclient:rw
    - image: 'johnktims/folding-at-home:latest'
    - detach: True
    - entrypoint: "FAHClient --web-allow=0/0:7396 --allow=0/0:7396"
    #- entrypoint: "FAHClient"
    - cmd:
      - '--user=devops-brain'
      - "--team=234679"
      - "--gpu=false"
      - "--smp=true"
      - "--power=full"
    - network_mode: "host"


