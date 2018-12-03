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
        master: 192.168.7.69
