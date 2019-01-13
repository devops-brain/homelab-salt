#!jinja|yaml

{% set glusterfs_host_list = salt['pillar.get']('gluster:hosts', ['odroid-hc2-01', 'odroid-hc2-02', 'odroid-hc2-03', 'odroid-hc2-04', 'odroid-hc2-05', 'odroid-hc2-06']) %}
{% set volume_redundancy_list = salt['pillar.get']('gluster:volumes_redundancy', ['jenkins', 'legacy', 'masters', 'steambrain', 'steamminikitty']) %}
{% set volume_parity_list = salt['pillar.get']('gluster:volumes_parity', ['TARDIS', 'plexmedia']) %}


glusterfs-client:
  pkg:
    - installed

{% for volume in volume_redundancy_list %}
/mnt/glusterfs/{{ volume }}:
  mount.mounted:
    - name: /mnt/glusterfs/{{ volume }}
    - device: {{ glusterfs_host_list|join(',') }}:/{{ volume }}
    - fstype: glusterfs
    - opts: _netdev,rw,defaults,direct-io-mode=disable
    - mkmnt: True
    - persist: True
    - dump: 0
    - pass_num: 0
    - device_name_regex:
      - ({{ glusterfs_host_list|join('|') }}):/{{ volume }}
{% endfor %}

{% for volume in volume_parity_list %}
/mnt/glusterfs/{{ volume }}:
  mount.mounted:
    - name: /mnt/glusterfs/{{ volume }}
    - device: {{ glusterfs_host_list|join(',') }}:/{{ volume }}
    - fstype: glusterfs
    - opts: _netdev,rw,defaults,direct-io-mode=disable
    - mkmnt: True
    - persist: True
    - dump: 0
    - pass_num: 0
    - device_name_regex:
      - ({{ glusterfs_host_list|join('|') }}):/{{ volume }}
{% endfor %}

