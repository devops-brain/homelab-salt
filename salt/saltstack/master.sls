#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


salt-master:
  mount.mounted:
    - name: /etc/salt
    - device: /mnt/glusterfs/salt-conf
    - fstype: bind
    - mkmnt: True
    - persist: True
  pkg:
    - installed
  service.running:
    - enable: True

gpg-dependency-packages:
  pkg.installed:
    - pkgs:
      - python-gnupg
      - rng-tools
