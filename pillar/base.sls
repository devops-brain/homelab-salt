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
    
    hQGMA2p9EgXH9hJQAQv/Vm/OJy5SN5+ILX/6KW1Vtn2+L+kX4PK1Eku1oCsrejMz
    VhILhhjT59HI1FQmZnr2EU2iHrTJ2jR0iCmYrE1BrZkv8puVGfGkoetABLQ+BtDD
    VEYbpT9T+xK7E97ieibImkjBXYFrQsEXCme9Ul4TkMF4M1nuy7oV9ce8podUtfUQ
    /pzyXQ9T1Jtv9J/OsMY2ZcqWqm68qAx194HYUWbsrsEzWVb/4oTOEDmCAtnPGbDL
    onH2AI659qs3lblsZEMc2kcmega5D6jkudJw87iNPQliJogy66UJN7m5m/FUBMx5
    fqqpVuqGQmfyY8eQAoyk3xLiK61jLwMbByNrXi51dDP7T8gcavHxhDRS/S/Og5YX
    ul3QwsQmSQT1PneUms/sIDhMzXyn+Je2fZkzE32tfT1iMvTQrgxVqjToii0bCMHS
    GaoFxZY4jb+ptrxf9fChVMvcHtSKj7iHgOYSTmuTfydHDAhljakocS23Dbszt6on
    yiRId3QB/3WfzVGTITGi0kgBCO7neCN/H0RunIK+qHQG6LeH5dG0oJA0OfoyeGAw
    IuMe+zmhwaXI038Y/RX0gqslq+LImUqE6S9EvUeEeRuNQ9yFcDIRrNI=
    =+sfx
    -----END PGP MESSAGE-----

nfs:
  server: 'ideal-mouse.khoyi.io'
