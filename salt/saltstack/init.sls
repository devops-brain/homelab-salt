




{%- if grains['kernel'] == 'Linux' %}
salt-minion:
  pkg:
    - installed
  service.running:
    - enable: True

/etc/salt/minion.d/master.conf:
  file.managed:
    - create: True
    - makedirs: True
    - contents: |
        master: {{salt['pillar.get']('salt:minion:master', '192.168.7.69')}}

saltstack-repo-key:
  cmd.run:
    - name: "wget -O - https://repo.saltstack.com/py3/ubuntu/18.04/amd64/2019.2/SALTSTACK-GPG-KEY.pub | apt-key add -"

/etc/apt/sources.list.d/saltstack.repo:
  file.managed:
    - create: True
    - makedirs: True
    - contents: |
        deb http://repo.saltstack.com/py3/ubuntu/18.04/amd64/2019.2 bionic main
{%- endif %}



{%- if grains['kernel'] == 'Windows' %}
#/etc/salt/minion.d/master.conf:
#  file.managed:
#    - create: True
#    - makedirs: True
#    - contents: |
#        master: {{salt['pillar.get']('salt:minion:master', '192.168.7.69')}}

{%- endif %}