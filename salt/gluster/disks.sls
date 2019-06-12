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
    - opts: "compress=zlib"

## Disabled as it is just too dangerous and not critical at my current scale.
#glusterfs_base_fs:
#  module.run:
#    - name: btrfs.mkfs
#    - device: /dev/sda
#    - noforce: True

# create subvolume if mounting it fails ('cause it doesn't exist)
#make_subvol:
#  cmd.run:
#    - name: "btrfs subvolume create /mnt/btrfs/@gluster"
#    - onfail:
#      - mount: /mnt/gluster_cow

 Mount the subvolume inplace for gluster
/mnt/gluster_cow:
  mount.mounted:
    - device: /dev/sda
    - fstype: btrfs
    - mkmnt: True
    - persist: True
    - dump: 0
    - pass_num: 0
    - opts: 'compress=zlib,subvol=@gluster'


## TODO:  create scrub and balance processes
## TODO:  consider snapshots

