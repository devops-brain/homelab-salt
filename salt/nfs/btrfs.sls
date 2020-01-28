parted:
  pkg:
    - installed

btrfs-tools:
  pkg:
    - installed

# array manually created, salt doesn't manage as it needs to be persistent
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

# mounting the array and subvolumes
/mnt/btrfs:
  mount.mounted:
    - device: /dev/sdb
    - fstype: btrfs
    - mkmnt: True
    - persist: True
    - dump: 0
    - pass_num: 0
    - opts: "nocompress,degraded"

/srv:
  mount.mounted:
    - device: /dev/sdb
    - fstype: btrfs
    - mkmnt: True
    - persist: True
    - dump: 0
    - pass_num: 0
    - opts: "nocompress,subvol=@srv"

btrfs-balance:
  cron.present:
    - name: btrfs balance start /mnt/btrfs
    - user: root
    - minute: 3
    - hour: 1
    - daymonth: 1

btrfs-scrub:
  cron.present:
    - name: btrfs scrub start /mnt/btrfs
    - user: root
    - minute: 3
    - hour: 1
    - daymonth: 15

## TODO:  snapshots

