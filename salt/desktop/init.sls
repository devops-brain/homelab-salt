#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


desktop-packages:
  pkg.installed:
    - pkgs:
      - ubuntu-desktop
      - unattended-upgrades
      - snapd

