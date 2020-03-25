#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


/srv/fah_config:
  file.directory:
    - name: /srv/fah_config
    - makedirs: True
    - user: 1000
    - group: 1000
    - mode: 777

fah:
  docker_container.running:
    - binds:
      - /srv/fah_config:/etc/fahclient:rw
    - image: 'johnktims/folding-at-home:latest'
    - detach: True
    - network_mode: "host"
    - entrypoint: "FAHClient --web-allow=192.168.7.0/24 --allow=192.168.7.0/24"
    #- entrypoint: "FAHClient"
    #- cmd:
    #  - '--user=devops-brain'
    #  - "--team=234679"
    #  - "--gpu=false"
    #  - "--smp=true"
    #  - "--power=full"


