#!jinja|yaml


jumpcloud_dependencies:
  pkg.installed:
    - pkgs:
      - curl
      - bash
      - sudo

# disable root login on Linux
{% if salt['grains.get']('kernel') == 'Linux' %}
disable_root:
  cmd.run:
    - name: "sudo usermod -p '!' root"
{% endif %}

# add host to jumpcloud if not so
jumpcloud:
  cmd.run:
    - name: "curl --tlsv1.2 --silent --show-error --header 'x-connect-key: {{salt['pillar.get']('jumpcloud:xConnectKey')}}' https://kickstart.jumpcloud.com/Kickstart | bash"
    - unless: dir "/opt/jc"
