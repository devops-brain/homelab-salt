




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

{%- endif %}
{%- if grains['kernel'] == 'Windows' %}
#/etc/salt/minion.d/master.conf:
#  file.managed:
#    - create: True
#    - makedirs: True
#    - contents: |
#        master: {{salt['pillar.get']('salt:minion:master', '192.168.7.69')}}

{%- endif %}