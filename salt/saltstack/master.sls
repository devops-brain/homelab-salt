#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


salt-master:
  pkg:
    - installed
  service.running:
    - enable: True

# duplicated in bootstrap script
gpg-dependency-packages:
  pkg.installed:
    - pkgs:
      - python3-gnupg
      - rng-tools
