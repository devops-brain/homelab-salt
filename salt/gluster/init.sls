glusterfs-service:
  pkg:
    - installed
  service.running:
    - name: glusterd
    - enable: True

/dev/sda:
  blockdev.formatted:
    - fs_type: u'ext4'



## TODO:  mount drive if not formatted

## TODO:  determine and duplicate formatting and mounting process for additional drives if applicable

#jenkins TARDIS legacy masters_Donna_Collection masters_Dragons_Den masters_Koi_Pond masters_Roger_Roger masters_Rose_Garden plex_Donna_Collection plex_Dragons_Den plex_Koi_Pond plex_Roger_Roger plex_Rose_Garden plex_Optimized_Versions plex_PlayOn plex_HDHomeRun plex_backups
#
#{% for volume in salt['pillar.get']('gluster:volumes', 'jenkins') %}
#{{ volume }}
#  glusterfs.volume_present:
#    - bricks:
#        {% for instance in range(5) %}
#        - odroid-hc2-{{ '%02d' % instance }}:/var/spool/gluster/archive_brick1
#        {% endfor %}
#{% endfor %}
