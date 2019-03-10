#!jinja|yaml

{% set glusterfs_host_list = salt['pillar.get']('gluster:hosts', ['odroid-hc2-01', 'odroid-hc2-02', 'odroid-hc2-03']) %}
{% set volume_redundancy_list = salt['pillar.get']('gluster:volumes_redundancy', ['jenkins', 'legacy', 'masters']) %}
#{% set volumes_distributed_list = salt['pillar.get']('gluster:volumes_distributed', ['TARDIS']) %}


glusterfs-client:
  pkg:
    - installed

{% for volume in volume_redundancy_list %}
{% if 'salt-conf' != volume %}
/mnt/glusterfs/{{ volume }}:
  mount.mounted:
    - name: /mnt/glusterfs/{{ volume }}
    - device: {{ glusterfs_host_list[0] }},{{ glusterfs_host_list[1] }},{{ glusterfs_host_list[2] }}:/{{ volume }}
    - fstype: glusterfs
    - opts: _netdev,rw,defaults,direct-io-mode=disable
    - mkmnt: True
    - persist: True
    - dump: 0
    - pass_num: 0
    - device_name_regex:
      - ({{ glusterfs_host_list|join('|') }}):/{{ volume }}
{% endif %}
{% endfor %}

#{% for volume in volumes_distributed_list %}
#/mnt/glusterfs/{{ volume }}:
#  mount.mounted:
#    - name: /mnt/glusterfs/{{ volume }}
#    - device: {{ glusterfs_host_list[0] }},{{ glusterfs_host_list[1] }},{{ glusterfs_host_list[2] }}:/{{ volume }}
#    - fstype: glusterfs
#    - opts: _netdev,rw,defaults,direct-io-mode=disable
#    - mkmnt: True
#    - persist: True
#    - dump: 0
#    - pass_num: 0
#    - device_name_regex:
#      - ({{ glusterfs_host_list|join('|') }}):/{{ volume }}
#{% endfor %}

