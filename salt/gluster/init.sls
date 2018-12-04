glusterfs-service:
  pkg:
    - name: glusterfs-server
    - installed
  service.running:
    - name: glusterd
    - enable: True

parted:
  pkg:
    - installed

## TODO:  if disk is not a single GPT partition, format it as such
## TODO:  then, run badblocks -wv /dev/sda1 > /var/log/badblocks.log
## TODO:  then, run the following state only if the log shows no bad blocks...
#/dev/sda:
#  blockdev.formatted:
#    - fs_type: u'ext4'

## TODO:  mount drive if not formatted

# TODO:  move volume list into pillar:  jenkins TARDIS legacy masters_Donna_Collection masters_Dragons_Den masters_Koi_Pond masters_Roger_Roger masters_Rose_Garden plex_Donna_Collection plex_Dragons_Den plex_Koi_Pond plex_Roger_Roger plex_Rose_Garden plex_Optimized_Versions plex_PlayOn plex_HDHomeRun plex_backups
#
#{% for volume in salt['pillar.get']('gluster:volumes', 'jenkins') %}
#gluster_volume_{{ volume }}
#  glusterfs.volume_present:
#    - name: {{ volume }}
#    - bricks:
#        {% for instance in range(5) %}
#        - odroid-hc2-{{ '%02d' % instance }}:/mnt/sda1/{{volume}}
#        {% endfor %}
#    - replica: 3
#    - start: True
#{% endfor %}
