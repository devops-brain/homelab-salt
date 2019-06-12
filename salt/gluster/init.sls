#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}
{% set glusterfs_host_list = salt['pillar.get']('gluster:hosts', ['odroid-hc2-01', 'odroid-hc2-02', 'odroid-hc2-03']) %}


glusterfs-service:
  pkg:
    - name: glusterfs-server
    - installed
  service.running:
    - name: glusterd
    - enable: True
  glusterfs.peered:
    - names:
      {% for host in glusterfs_host_list %}
      {% if host != hostname %}
      - {{host}}
      {% endif %}
      {% endfor %}

/etc/netplan/01-netcfg.yaml:
  file.managed:
    - user: root
    - group: root
    - contents: |
        # This file describes the network interfaces available on your system
        # For more information, see netplan(5).
        network:
          version: 2
          renderer: networkd
          ethernets:
            eth0:
              addresses: [ 192.168.7.1{{hostname.split('.')[0][-2:]}}/24 ]
              gateway4: 192.168.7.1
              nameservers:
                search: [khoyi.us]
                addresses:
                  - "192.168.7.10"
              mtu: 9000
