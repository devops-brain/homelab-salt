parted:
  pkg:
    - installed

btrfs-tools:
  pkg:
    - installed

# mounting the array and subvolumes
/mnt/btrfs:
  mount.mounted:
    - device: /dev/sdb
    - fstype: btrfs
    - mkmnt: True
    - persist: True
    - dump: 0
    - pass_num: 0
    - opts: "defaults,degraded"

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

