#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


## TODO:  completely re-work this to something not PoC
duplicati:
  docker_container.running:
    - binds:
    ## TODO:  test if RO works
      - /mnt/glusterfs:/source:ro
      - /mnt/glusterfs/duplicati:/config:rw
    #  - /etc/duplicati:/config:rw
    - image: 'linuxserver/duplicati:latest'
    - detach: True
    - network_mode: "host"

