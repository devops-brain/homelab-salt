#!jinja|yaml|gpg

{% set hostname = salt['grains.get']('id') %}


# Gluster volumes are the storage behind everything, and therefore they are the foundation of everything else.
# Once I have volumes being directly attached to containers in kubernetes, this will switch from a common mounting strategy to less access needed.
# This is a bootstrap shortcut that is only safe in a one user env...   do NOT copy this approach on production setups!
gluster:
  hosts:
    {% for instance in range(12) %}
    - odroid-hc2-{{ '%02d' % (instance+1) }}.khoyi.us
    {% endfor %}
  volumes_redundancy:
    - 'jenkins'
    - 'salt-conf'
    - 'legacy'
    - 'google-domains-ddns'
    - 'duplicati'
    - 'masters_DVR'
    - 'masters_Koi-Pond'
    - 'masters_Rose-Garden'
    - 'masters_Dragons-Den'
    - 'masters_Donna-Collection'
    - 'masters_Roger-Roger'
    - 'plex-backups'
    - 'plexmedia_symlinks'

jumpcloud:
  xConnectKey: |
    -----BEGIN PGP MESSAGE-----

    hQGMAygOx8UbPFfvAQwAyD3d5ot9OjIg3f/SFep+9a1tuuUM7UZ5M9Hi/3/Jq+uM
    u1R5sVtEv+fwQ+rNATA3LUlwY5ceWjJ4cu0dTZ5fY3MJiwyP2EL4tsVj16HgGACX
    IlLty1P4yRY1Hxp8UXksE+9cUlpS4b8pF+ntwldZAV/yokDeH5rdqV9DE09wwGiT
    0XWES8VlKPQ6UgD5yFsFFF/fkeLVfXDsPgBihRCTdP1/LlOqRu8NNl/nIfNj4n07
    vJCr0bho3D9b2JR0sx/Yk2T+wLLVZuizJdzz5wuQSxoZo8Z4eEMhNaSUk/j3d0Pa
    wQ/m7kbbcJzmvKO5tw9t+JRLOJIPeLqWHKqBKzD20Luf+BMeFUytuKTK/bL5RWai
    SlP5FlHRzX9lVMebPdF4AywJOC8q3NizqISwBiyK7GO69iHVLfUlOex+NPJhschb
    ANhnXK7RCJSrYNzxhFu92tWCCwg/AvhF6+EjkclRpsSvyFySHcOd8E8x2QLRBqas
    t4Is7ZYFgT3N8nS6DHOq0mMB5U/u8HTIX2YhvzjEMpNAHWhGznsHvuHyiaze3aoG
    2/o0IxRmMJW1FyZ0S1PYMZEZwWP8phi67HbEtaNNv6qwmvfyW9SfuSH28FlSPfam
    bPUikp3lTyHtNWDvYt7LVD3v+WY=
    =TJ+x
    -----END PGP MESSAGE-----

salt:
  minion:
    master: 'salt'

jenkins:
  master_url: 'http://192.168.7.14:8080'

samba:
  password: |
    -----BEGIN PGP MESSAGE-----

    hQGMAygOx8UbPFfvAQv/efa5yH3qZsxrNvS5rj9zPHssnQJq3qgVsTBCWmjhU9nt
    Cw5xCUGSH/40s7ngs7vobHQw/M1vcjJKJOXYzaopCeNOQi2bkS5BfUnCp0emgawp
    zA961okQVOS0wXdTAXi2G30l+Kerr6Owsy7tnInJm3DKbQtdBxo8H+50rLnrMS1o
    FYSWVAbF3FiRW0w6z9cWACm9WawI6mPbRo6mcR4MUiRuU1WH6kbP2/Lku9PG6jG5
    zEmLj+OPUOMf4xuvNPOfjzd7oFnmMnXGW4MPRgdOTjmiWEcTG8fyEgA050eleEup
    +sI3IIgpE31e97gwm11pvhKiIplFaEmAt3o/rqFjjBvAxfDglOP9G7WqnIfWfDGY
    hswsbSBCONXZPBYvi9h1jLU5+Cs2pSaNFef35LlhU5+DeT3BjkMLh3ssAlbkMrtS
    F5WgHwW2tmHpbUhuWJ5U0xnzRHB0LmZXJdvQPpwcZwj9TZpnopMTCnKki7f1PZrt
    criP6zPXI+rbK9dAJWWN0kgB7Gr0+e7w3lRoi/EyxgcVm5MC+4q9Y8RDj9Po0fyR
    32N49enB/zhCVqHOYHSyvrQr2whsr3g03cicmg8za0RDAJljrAU7Ft8=
    =ywcb
    -----END PGP MESSAGE-----
