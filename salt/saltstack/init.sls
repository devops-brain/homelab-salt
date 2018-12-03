salt-minion:
  pkg:
    - installed
  service.running:
    - enable: True

/etc/salt/minion.d/master.conf:
  file.managed:
    - create: True
    - makedirs: True
    - source: salt://salt/saltstack/files/etc-salt-minion.d-master.conf
