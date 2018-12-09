parted:
  pkg:
    - installed

## TODO:  figure out the dependencies
#glusterfs_badblocks_log:
#  file.exists:
#    - name: /var/log/badblocks.log

#glusterfs_gpt:
#  module.run:
#    - name: parted.mklabel
#    - device: /dev/sda
#    - label_type: gpt

#glusterfs_partition:
#  module.run:
#    - name: parted.mkpart
#    - device: /dev/sda
#    - part_type: primary

#glusterfs_badblocks:
#  cmd.run:
#    - name: badblocks -wv /dev/sda1 > /var/log/badblocks.log

#glusterfs_base_fs:
#  module.run:
#    - name: parted.mkfs
#    - device: /dev/sda1
#    - fs_type: ext4

/mnt/sda1:
  mount.mounted:
    - device: /dev/sda1
    - fstype: ext4
    - mkmnt: True
    - persist: True


