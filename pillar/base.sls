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
    - 'plexmedia_pictures'

jumpcloud:
  xConnectKey: |
    -----BEGIN PGP MESSAGE-----
    
    hQGMA2p9EgXH9hJQAQv+OAsR32r4NAl8bPxWi7ZDz7KMgjYxn0Edqwf6+YnlGypq
    3PsoaPB/FR7sET3E9qHaxbhQvyoGv/ajiiMs9A6ILq/jJh84WrvjDaUmInjghxg9
    yKgfIGg7YaSdPsXD8bBosFnWZCffk/6ljbkcRKTF4okXEtC7uSk/FQhUSp/5Jl8w
    CUk0gYfKh6BXyLH/KnN4PDf1hoW5gk+jTTXG04oP+oFuXMHzp31SUXamKFIwYryx
    x/xPyyIQt+lMIgn1UORhh3YDmrQCNfqnKIwQWI71sHZykAuSIwq5pOI4lP3jq7+z
    qaev2tppUHtG6qbw7l55ZxUVSRccq7RwNlZpMWUvawOvvNlnXHue9OzunPiKnJOD
    kEyN4ld6uL4o6ZpmCV9WQRJA5RoqxTekhamsiaLJJrJ1WpmWgjcILBbTQpOif8pY
    LP1261rKC6uHt8doS7khYGVUHsvERRp953qbT1NH2SQLGMd/PJqdk06lAN4f7PYz
    lOiGPmxAgXFMX2kI6uzx0mMBCKYuVCzyPiD01itnhhAh0n7sy5j/kW12lzDiHgB5
    H6b9D3afr2gThFHUMBcfeHDBN1uftndkgFfmR6+oMNqurChovfDaOxPiPP0tyJp1
    aKJDnLwC3nDx7UOAQe/SyOMj8+Q=
    =b1DG
    -----END PGP MESSAGE-----

salt:
  minion:
    master: 'salt'

jenkins:
  master_url: 'http://ideal-mouse.khoyi.io:8080'

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

nfs:
  server: 'ideal-mouse.khoyi.io'
