glusterfs-service:
  pkg:
    - name: glusterfs-server
    - installed
  service.running:
    - name: glusterd
    - enable: True

## TODO:  figure out the dependencies
#glusterfs_badblocks_log:
#  file.exists:
#    - name: /var/log/badblocks.log

parted:
  pkg:
    - installed

util-linux:
  pkg:
    - installed

glusterfs_gpt:
  module.run:
    - name: parted.mklabel
    - device: /dev/sda
    - label_type: gpt

glusterfs_partition:
  module.run:
    - name: parted.mkpart
    - device: /dev/sda
    - part_type: primary

#glusterfs_badblocks:
#  cmd.run:
#    - name: badblocks -wv /dev/sda1 > /var/log/badblocks.log

#glusterfs_base_fs:
#  module.run:
#    - name: parted.mkfs
#    - device: /dev/sda1
#    - fs_type: ext4

#glusterfs_mount:
#  mount.mounted:
#    - device: /dev/sda1
#    - fstype: ext4

# TODO:  move volume list into pillar:  jenkins TARDIS legacy masters_Donna_Collection masters_Dragons_Den masters_Koi_Pond masters_Roger_Roger masters_Rose_Garden plex_Donna_Collection plex_Dragons_Den plex_Koi_Pond plex_Roger_Roger plex_Rose_Garden plex_Optimized_Versions plex_PlayOn plex_HDHomeRun plex_backups
#{% for volume in salt['pillar.get']('gluster:volumes', 'jenkins') %}
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


