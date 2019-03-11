#!jinja|yaml



{%- if grains['kernel'] == 'Linux' %}
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

{%- endif %}
{%- if grains['kernel'] == 'Windows' %}
#jumpcloud-windows:
#  pkg.installed:
#    - name: JumpCloudInstaller.exe -k {{salt['pillar.get']('jumpcloud:xConnectKey')}} /VERYSILENT /NORESTART

#https://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3/vcredist_x64.exe
{%- endif %}
