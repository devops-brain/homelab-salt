#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


## TODO:  completely re-work this to something not PoC
samba:
  docker_container.running:
    - binds:
    ## TODO:  clean up gluster share structure
      - /mnt/glusterfs:/mnt/glusterfs:rw
    - image: 'dperson/samba:latest'
    - detach: True
    - cmd: '''-u "malkav;{{salt['pillar.get']('samba:password','Change-me2d!')}};1001;1001" -s "glusterfs;/mnt/glusterfs;yes;no;no;malkav;malkav"'''
    - network_mode: "host"


#sudo docker run -d \
#  -it --name samba \
#  --network=host \
#  -v /mnt/glusterfs:/mnt/plexmedia \
#  dperson/samba \
#  -u "malkav;####13#####;1001;1001" \
#  -s "glusterfs;/mnt/plexmedia;yes;no;no;malkav;malkav"
