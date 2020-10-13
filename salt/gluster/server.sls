#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}
{% set glusterfs_host_list = salt['pillar.get']('gluster:hosts', ['odroid-hc2-01', 'odroid-hc2-02', 'odroid-hc2-03']) %}


{% if hostname == glusterfs_host_list[0] %}
/mnt/gluster_cow:
  mount.mounted:
    - device: /dev/sda
    - fstype: ext4
    - mkmnt: True
    - persist: True
    - dump: 0
    - pass_num: 0

glusterfs-service:
  pkg:
    - name: glusterfs-server
    - installed
  service.running:
    - name: glusterd
    - enable: True
  {% if glusterfs_host_list[0] in hostname %}
  glusterfs.peered:
    - names:
      {% for host in glusterfs_host_list %}
      {% if host != hostname %}
      - {{host}}
      {% endif %}
      {% endfor %}
  {% endif %}

{% for volume in salt['pillar.get']('gluster:volumes_redundancy', ['jenkins', 'legacy']) %}
gluster_volume_{{ volume }}:
  glusterfs.volume_present:
    - name: {{ volume }}
    - bricks:
        {% for host in glusterfs_host_list %}
        - {{host}}:/mnt/gluster_cow/{{volume}}
        {% endfor %}
    - replica: 3
    - start: True
{% endfor %}

## TODO:  add dispersed volume support, instead of default triple redundancy raid10 or distributed (enable when added)
#{% for volume in salt['pillar.get']('gluster:volumes_distributed', ['recover']) %}
#gluster_volume_{{ volume }}:
#  glusterfs.volume_present:
#    - name: {{ volume }}
#    - bricks:
#        {% for host in glusterfs_host_list %}
#        - {{host}}:/mnt/gluster_cow/{{volume}}
#        {% endfor %}
#    - start: True
#{% endfor %}
{% endif %}

