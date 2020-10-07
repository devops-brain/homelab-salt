
btrfs-dependency-packages:
  pkg.installed:
    - pkgs:
      - btrfs-progs
      - parted

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
    - device: /dev/sdc
    - fstype: btrfs
    - mkmnt: True
    - persist: True
    - dump: 0
    - pass_num: 0
    - opts: "compress=no,nossd,degraded"

/srv:
  mount.mounted:
    - device: /dev/sdc
    - fstype: btrfs
    - mkmnt: True
    - persist: True
    - dump: 0
    - pass_num: 0
    - opts: "compress=no,nossd,subvol=@srv"

# tuned Ferroin's balance to better fit my needs:  better compaction and more aggressive use of idle window
# https://github.com/netdata/netdata/issues/3203
btrfs-balance-bulk:
  cron.present:
    - name: flock -x /tmp/btrfs.lck btrfs balance start -dusage=50 -dlimit=50 -musage=50 -mlimit=50 /mnt/btrfs
    - user: root
    - minute: 3
    - hour: 5

btrfs-balance-optimal:
  cron.present:
    - name: flock -x /tmp/btrfs.lck btrfs balance start -dusage=95 -dlimit=5 -musage=95 -mlimit=5 /mnt/btrfs
    - user: root
    - minute: 8
    - hour: 5

btrfs-raid-convert:
  cron.present:
    - name: flock -x /tmp/btrfs.lck btrfs balance start -dsoft -msoft -mconvert=raid1 -dconvert=raid1 /mnt/btrfs
    - user: root
    - minute: 18
    - hour: 5

btrfs-scrub:
  cron.present:
    - name: flock -x /tmp/btrfs.lck btrfs scrub start /mnt/btrfs
    - user: root
    - minute: 3
    - hour: 6
    - daymonth: 15

## TODO:  snapshots

