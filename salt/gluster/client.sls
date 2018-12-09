




{% set glusterfs_host_list = ['odroid-hc2-01', 'odroid-hc2-02', 'odroid-hc2-03', 'odroid-hc2-04', 'odroid-hc2-05', 'odroid-hc2-06'] %}


{% for volume in salt['pillar.get']('gluster:volumes', ['jenkins', 'TARDIS', 'legacy', 'masters', 'plexmedia']) %}
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

# TODO:  add dispersed volume support, instead of default triple redundency raid10

