#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


/srv/fah_config:
  file.directory:
    - name: /srv/fah_config
    - makedirs: True
    - user: 1000
    - group: 1000
    - mode: 777

/srv/fah_config/config.xml:
  file.managed:
    - create: True
    - makedirs: True
    - contents: |
        <config>
          <!-- Slot Control -->
          <power v='{{salt['pillar.get']('fah:power', 'FULL')}}'/>

          <!-- User Information -->
          <passkey v='{{salt['pillar.get']('fah:passkey', 'check_your_email')}}'/>
          <team v='{{salt['pillar.get']('fah:team', '234679')}}'/>
          <user v='{{salt['pillar.get']('fah:user', 'devops-brain')}}'/>

          <!-- Folding Slots -->
          <slot id='0' type='CPU'/>
        </config>

fah:
  docker_container.running:
    - image: 'linuxserver/foldingathome:latest'
    - binds:
      - /srv/fah_config:/config:rw
    - detach: True
    - network_mode: "host"
    - gpus: "all"
    - environment:
      - PUID=1000
      - PGID=1000


