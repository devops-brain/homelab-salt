#!jinja|yaml|gpg

{% set hostname = salt['grains.get']('id') %}


# Gluster volumes are the storage behind everything, and therefore they are the foundation of everything else.
# Once I have volumes being directly attached to containers in kubernetes, this will switch from a common mounting strategy to less access needed.
# This is a bootstrap shortcut that is only safe in a one user env...   do NOT copy this approach on production setups!
gluster:
  hosts:
    {% for instance in range(6) %}
    - odroid-hc2-{{ '%02d' % (instance+1) }}
    {% endfor %}
  volumes_redundancy:
    - 'legacy'
    - 'masters_DVR'
    - 'masters_Koi-Pond'
    - 'masters_Rose-Garden'
    - 'masters_Dragons-Den'
    - 'masters_Donna-Collection'
    - 'masters_Roger-Roger'

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
  master_url: 'http://192.168.77.2:8080'

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

fah:
  power: 'FULL'
  team: '234679'
  user: 'devops-brain'
  passkey: |
    -----BEGIN PGP MESSAGE-----

    hQGMA2p9EgXH9hJQAQv/eGaU6/Nsi23Etzza53Lo3gR/ZOri8ffKBXPAGfLHp9bZ
    LV4ITlLXel+2dL+3HJh6kr1S1N3MAJM25bEAgERcgBm1lKGEnLBg8Kmz9x2OH9Ye
    SJCwh+JLF6JxnMPAr5KQaNKP/ERxjNwK385zE8LUapcmjJs8c1SVnT1vOSSTlZhh
    GeX8oHFlgoaJrp3+0ROQh2o5rNA87gT7wQLaOZNKGku9vfXWrj8XVLEz3FJoHpVF
    KkHplbXJMKslzk1+ZRc4wvdfyIGdfUNSf5dyfCdiB7XbGk8c0wAjCAHEcDuQmUS9
    9xfPNfajLkwWA6mrgZalvOpqRd06wUr/q74Sk5LMePLV5QjlUdWAz3QUXGRusyX2
    4bnELRLJFC49bNvSTA6C7uwDtEAG5pnwhxMV9gXQabhZU8QskZZJUOIxuUonATMQ
    IidiphYjkKXBoP5/53ikhwwNWtVPw8Vi6mkHjRyPU/Z12wjIOOGd0ORUeJN6kkRL
    /cYBeFRrxJLmL9NKjZch0k0B45xbicvOof7I01UlVNOylQ9RSrCmPEZGJY9WdxDX
    Eu3wXJeZzogQR+/GXyVm3phN5XsLPYWC+b2tecfMbXpKqfA7K1ofwWsSNE2gTw==
    =W13l
    -----END PGP MESSAGE-----

