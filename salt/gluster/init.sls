glusterfs-service:
  pkg:
    - name: glusterfs-server
    - installed
  service.running:
    - name: glusterd
    - enable: True
  glusterfs.peered:
    {% for instance in range(6) %}
    - odroid-hc2-{{ '%02d' % instance }}
    {% endfor %}

# TODO:  move volume list into pillar:  jenkins TARDIS legacy masters plexmedia
#{% for volume in salt['pillar.get']('gluster:volumes', ['jenkins', 'TARDIS', 'legacy', 'masters', 'plexmedia']) %}
#{% for volume in salt['pillar.get']('gluster:volumes', ['jenkins', 'legacy', 'masters']) %}
#gluster_volume_{{ volume }}
#  glusterfs.volume_present:
#    - name: {{ volume }}
#    - bricks:
#        {% for instance in range(6) %}
#        - odroid-hc2-{{ '%02d' % instance }}:/mnt/sda1/{{volume}}
#        {% endfor %}
#    - replica: 3
#    - start: True
#{% endfor %}


