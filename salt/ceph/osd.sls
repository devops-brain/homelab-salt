#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}
{% set fsid = salt['pillar.get']('ceph:fsid', ['pillar_error']) %}
{% set client_admin_key = salt['pillar.get']('ceph:client:admin_key', ['pillar_error']) %}


ceph-osd-packages:
  pkg.installed:
    - pkgs:
      - ceph-common
      - ceph-osd

/etc/ceph/ceph.client.admin.keyring:
  file.managed:
    - create: True
    - makedirs: True
    - contents: |
        [client.admin]
            key = {{client_admin_key}}
            caps mds = "allow *"
            caps mgr = "allow *"
            caps mon = "allow *"
            caps osd = "allow *"

/etc/ceph/ceph.conf:
  file.managed:
    - create: True
    - makedirs: True
    - contents: |
        [client.admin]

        [global]
        auth cluster required = cephx
        auth service required = cephx
        auth client required = cephx

        mon host = 192.168.77.2 192.168.77.3 192.168.77.4
        fsid = {{fsid}}

        log to syslog = false
        err to syslog = false
        clog to syslog = false
        mon cluster log to syslog = false
        debug mon = 1/5
        debug osd = 1/5

        # NOTE(jamespage):
        # Disable object skew warnings as these only use
        # the number of objects and not their size in the
        # skew calculation.
        mon pg warn max object skew = -1

        public network =
        cluster network =
        public addr = 192.168.77.2
        cluster addr = 192.168.77.2

        [mon]
        keyring = /var/lib/ceph/mon/$cluster-$id/keyring

        [mds]
        keyring = /var/lib/ceph/mds/$cluster-$id/keyring

#/etc/default/ceph:
#  file.managed:
#    - create: True
#    - makedirs: True
#    - contents: |
#        # /etc/default/ceph
#        #
#        # Environment file for ceph daemon systemd unit files.
#        #
#
#        # Increase tcmalloc cache size
#        TCMALLOC_MAX_TOTAL_THREAD_CACHE_BYTES=134217728

