#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}
{% set glusterfs_host_list = salt['pillar.get']('gluster:hosts', ['odroid-hc2-01', 'odroid-hc2-02', 'odroid-hc2-03']) %}


salt-master:
  mount.mounted:
    - name: /mnt/glusterfs/salt-conf
    - device: {{ glusterfs_host_list[0] }},{{ glusterfs_host_list[1] }},{{ glusterfs_host_list[2] }}:/salt-conf
    - fstype: glusterfs
    - opts: _netdev,rw,defaults,direct-io-mode=disable
    - mkmnt: True
    - persist: True
    - dump: 0
    - pass_num: 0
    - device_name_regex:
      - ({{ glusterfs_host_list|join('|') }}):/salt-conf
  pkg:
    - installed
  service.running:
    - enable: True

gpg-dependency-packages:
  pkg.installed:
    - pkgs:
      - python-gnupg
      - rng-tools
