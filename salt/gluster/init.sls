#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}
{% set glusterfs_host_list = salt['pillar.get']('gluster:hosts', ['odroid-hc2-01', 'odroid-hc2-02', 'odroid-hc2-03']) %}


glusterfs-service:
  pkg:
    - name: glusterfs-server
    - installed
  service.running:
    - name: glusterd
    - enable: True
  glusterfs.peered:
    - names:
      {% for host in glusterfs_host_list %}
      {% if host != hostname %}
      - {{host}}
      {% endif %}
      {% endfor %}

{% if hostname == glusterfs_host_list[0] %}
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
{% endif %}

## TODO:  add dispersed volume support, instead of default triple redundancy raid10 or distributed (enable when added)
#{% for volume in salt['pillar.get']('gluster:volumes_distributed', ['TARDIS', 'plexmedia']) %}
#gluster_volume_{{ volume }}:
#  glusterfs.volume_present:
#    - name: {{ volume }}
#    - bricks:
#        {% for host in glusterfs_host_list %}
#        - {{host}}:/mnt/gluster_cow/{{volume}}
#        {% endfor %}
#    - start: True
#{% endfor %}

