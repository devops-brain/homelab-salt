parted:
  pkg:
    - installed

btrfs-tools:
  pkg:
    - installed

# mount manually added to /etc/fstab, this should track removal to allow dependency creation...
/mnt/btrfs:
  mount.mounted:
    - device: /dev/sda
    - fstype: btrfs
    - mkmnt: True
    - persist: True
    - dump: 0
    - pass_num: 0
    - opts: "compress=zstd:3"

## Disabled as it is just too dangerous and not critical at my current scale.
#glusterfs_base_fs:
#  module.run:
#    - name: btrfs.mkfs
#    - device: /dev/sda
#    - noforce: True

## TODO:  Create subvolume for glusterfs
##cmd.run to create subvolume is it is not detected by another command
##Then mount the subvolume inplace for gluster

## TODO:  create scrub and balance processes
## TODO:  consider snapshots

