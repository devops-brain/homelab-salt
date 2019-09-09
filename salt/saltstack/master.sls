#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}
{% set glusterfs_host_list = salt['pillar.get']('gluster:hosts', ['odroid-hc2-01', 'odroid-hc2-02', 'odroid-hc2-03']) %}


glusterfs-client:
  pkg:
    - installed

salt-master:
  pkg:
    - installed
  service.running:
    - enable: True

## TODO:  move to bootstrap script
gpg-dependency-packages:
  pkg.installed:
    - pkgs:
      - python-gnupg
      - rng-tools
