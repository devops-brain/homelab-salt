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
    - image: 'johnktims/folding-at-home:latest'
    - binds:
      - /srv/fah_config:/config:rw
    - detach: True
    - network_mode: "host"
    - environment:
      - PUIDE=1000
      - PGIDE=1000

#    - entrypoint: "FAHClient --web-allow='127.0.0.1 192.168.7.0/24' --allow='127.0.0.1 192.168.7.0/24'"
    #- entrypoint: "FAHClient"
#    - cmd:
#      - '--user=devops-brain'
#      - "--team=234679"
#      - "--passkey=bf452005d6804cbdbf452005d6804cbd"
#      - "--gpu=false"
#      - "--smp=true"
#      - "--power=medium"


