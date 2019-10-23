#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


xrdp-packages:
  pkg.installed:
    - pkgs:
      - xrdp
      - gnome-tweak-tool

