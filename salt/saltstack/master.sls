#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


salt-master:
  pkg:
    - installed
  service.running:
    - enable: True

gpg-dependency-packages:
  pkg.installed:
    - pkgs
      - python-gnupg
      - rng-tools
