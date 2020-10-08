#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


ceph-osd-packages:
  pkg.installed:
    - pkgs:
      - ceph-common
      - ceph-osd


