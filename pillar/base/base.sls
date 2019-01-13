
# Gluster volumes are the storage behind everything, and therefore they are the foundation of everything else.
# Once I have volumes being directly attached to containers in kubernetes, this will switch from a common mounting strategy to less access needed.
# This is a bootstrap shortcut that is only safe in a one user env...   do NOT copy this approach on production setups!
gluster:
  hosts:
    {% for instance in range(9) %}
    - odroid-hc2-{{ '%02d' % (instance+1) }}
    {% endfor %}
  volumes_redundancy:
    - 'jenkins'
    - 'legacy'
    - 'masters'
    - 'steambrain'
    - 'steamminikitty'
  volumes_parity:
    - 'TARDIS'
    - 'plexmedia'

# user accounts are not automatically added, so if you use my key I'll own a machine in your network with no risk to me.
jumpcloud:
  xConnectKey: 4b362188eb128d1757e1592a0ba43b4cc852e1db
