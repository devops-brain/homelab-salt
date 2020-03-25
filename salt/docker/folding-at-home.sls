#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


#fah:
#  docker_container.running:
#    - image: 'johnktims/folding-at-home:latest'
#    - detach: True
#    - network_mode: "host"
#    - entrypoint: "FAHClient --web-allow='127.0.0.1 192.168.7.0/24' --allow='127.0.0.1 192.168.7.0/24'"
#    #- entrypoint: "FAHClient"
#    - cmd:
#      - '--user=devops-brain'
#      - "--team=234679"
#      - "--passkey=bf452005d6804cbdbf452005d6804cbd"
#      - "--gpu=false"
#      - "--smp=true"
#      - "--power=medium"


