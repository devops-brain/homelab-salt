#!jinja|yaml



netatalk:
  docker_container.running:
    - binds:
      - /srv/nfs:/data
    - image: 'khoyi/netatalk:config-testing'
    - detach: True
    - network_mode: "host"
    - environment:
      - DOCKER_HOSTNAME=ideal-mouse
      - AVAHI=1
      - AFP_USER=malkav
      - AFP_PASSWORD={{salt['pillar.get']('samba:password','Change-me2d!')}}
      - AFP_UID=1001
      - AFP_GID=1001

