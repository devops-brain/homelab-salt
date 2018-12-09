







{% for volume in salt['pillar.get']('gluster:volumes', ['jenkins', 'TARDIS', 'legacy', 'masters', 'plexmedia']) %}
/mnt/glusterfs/{{ volume }}:
  mount.mounted:
    - name: /mnt/glusterfs/{{ volume }}
    - device: {{ glusterfs_ip_list|join(',') }}:/{{ volume }}
    - fstype: glusterfs
    - opts: _netdev,rw,defaults,direct-io-mode=disable
    - mkmnt: True
    - persist: True
    - dump: 0
    - pass_num: 0
    - device_name_regex:
      - ({{ glusterfs_ip_list|join('|') }}):/{{ volume }}
{% endfor %}

# TODO:  add dispersed volume support, instead of default triple redundency raid10

