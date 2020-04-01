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
    - image: 'linuxserver/foldingathome:latest'
    - binds:
      - /srv/fah_config:/config:rw
    - detach: True
    - network_mode: "host"
    - environment:
      - PUIDE=1000
      - PGIDE=1000


