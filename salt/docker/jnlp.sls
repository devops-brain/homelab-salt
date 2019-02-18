#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


jnlp:
  docker_container.running:
    - binds:
      - /mnt/glusterfs/masters:/srv/masters:ro
      - /mnt/glusterfs/plexmedia:/srv/plexmedia:rw
    - image: khoyi/jnlp-slave:latest
    - auto_remove: True
    - detach: True
    - entrypoint:
      - -url
      - {{salt['pillar.get']('jenkins:master_url', 'http://192.168.7.69:8080')}}
      - -workDir=/home/jenkins/agent
      - {{salt['pillar.get']('docker:jnlp:secret', '')}}
      - {{hostname}}-docker
    - hostname: {{hostname}}-docker
    - restart_policy: always

