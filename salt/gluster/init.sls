glusterfs-service:
  pkg:
    - name: glusterfs-server
    - installed
  service.running:
    - name: glusterd
    - enable: True
  glusterfs.peered:
    - names:
      {% for instance in range(9) %}
      - odroid-hc2-{{ '%02d' % (instance+1) }}
      {% endfor %}

# TODO:  move volume list into pillar:  jenkins TARDIS legacy masters plexmedia
{% for volume in salt['pillar.get']('gluster:volumes', ['jenkins', 'legacy', 'masters', 'steambrain', 'steamminikitty']) %}
gluster_volume_{{ volume }}:
  glusterfs.volume_present:
    - name: {{ volume }}
    - bricks:
        {% for instance in range(9) %}
        - odroid-hc2-{{ '%02d' % (instance+1) }}:/mnt/sda1/{{volume}}
        {% endfor %}
    - replica: 3
    - start: True
{% endfor %}

# TODO:  add dispersed volume support, instead of default triple redundancy raid10 or distributed
#{% for volume in salt['pillar.get']('gluster:volumes', ['TARDIS', 'plexmedia']) %}
#gluster_volume_{{ volume }}:
#  glusterfs.volume_present:
#    - name: {{ volume }}
#    - bricks:
#        {% for instance in range(6) %}
#        - odroid-hc2-{{ '%02d' % (instance+1) }}:/mnt/sda1/{{volume}}
#        {% endfor %}
#    - start: True
#{% endfor %}

