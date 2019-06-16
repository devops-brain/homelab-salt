#!jinja|yaml|gpg

{% set hostname = salt['grains.get']('id') %}


unattended-upgrades:
  pkg:
    - installed
