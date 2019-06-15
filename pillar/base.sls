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

    hQGMA/c42ow1fQGbAQv9F+5p+H6tawEsblO3EacyDEckSiw4eCO1c1MP9RkqOAMC
    SeuSvz8xhH6+XyxBy3g/AfwQqSdWx3k/wDtFCcA2eAuEWwIuAkebeG7b7DzASvYG
    EDejPMdIlta5nK5+wUQmuh+srf8tH6HbKC5wWJqbzgZP2j4bZnFxRMzzQtTxO/lQ
    p152tMMHAy7LUPDL3GZhkcTG8XuiyW9IHSCqxE5Apf3MXf3AZD9OnDszsFw9Fi5k
    7ihK6VZXHdbDKx2yPp9T5mX2Nix1tE6m8qDUv9IBbuYethRoHMOgMFXvfrtl+ZPq
    4dT6PTx2DlfMq1ihL5dJaIUva37eDa5dTC66PbA5Db+e/Z8V8m9sAsq/jpG933Dz
    ZMtWPvNmh+oE02I0y+J3hHJpgCPApTUSdsI+ouw1QYYbFpUIg1c4Ym+kc8iEz8it
    d9kdR7umjs+j92/A4kyckz8ENkTH1gBoM87J8oedNe1YE7ap4csL+2ymdiHC+dNG
    BPrQQ++yZ/JTL2V2feNd0mMB45FeDZsPpA2q/IMJZpg7gBuAab/dZqTeGGIp7nu1
    lIWbGAWj2VCbpU+4/wTBlUWp6NQmyEvwSaKXOFYkwivPKAI69//oq9hTnRcEcw7x
    XfhQ5ZHqI+nflB19E2jrG2+Krwk=
    =dYjB
    -----END PGP MESSAGE-----

salt:
  minion:
    master: 'salt'

jenkins:
  master_url: 'http://192.168.7.10:8080'

samba:
  password: |
    -----BEGIN PGP MESSAGE-----

    hQGMA/c42ow1fQGbAQwAjC81YyMycRDDIzxwzFiylNi8J2BQkpkz6djsCgZhNPMO
    9kLRW08EC7UkzOSY2FHfTH0A4zLgyrDY3NwhsAXWjeUg1gw5b/F/1nZ+3RXdhbd1
    fvDfIZog7k4+lWU6pksXIiJB/HmW44bx8mBKEhCslpGNuK3RYGq32N4PnRgXKdXW
    ptA+VWkT1Ah7+OwGRa7uOt8aPyheAo7GSWeNeIOHlRxcjDpebUKpvyya6nuVJxDS
    giEddsJtsav9lyGWzBPkVzFHknkAkF6ZSZn8IKQLuX4ErJV5cZ0BCjQ+cC4oxGsH
    sVL8TD4ndxfYFJguGptfag9JG+mWzhWGreejNlLoX55svGKD09Ig84X6RKKiduXz
    FayaZeGWjtEkDyV2vbm2eawX+gkcM9aESeCOZYajK87KvLzsDZzi8uFop5I+g4kh
    1FtLULdoGqBZp+QKEdllwn0socgHVXPoGMzGYnPhRYGpJz95eD84JNrmLd81Mwa0
    K85B3imKcxibqVk9ebWn0kgB/p20Nwrx5AxKHIScyLkz41e6UPoT2+bYVDa431Bu
    xybMjvg7PocT63oIxr+vb9gt/Y+kkWpV3SWm0zM4FQzE3/8BNXcDVo0=
    =mOCP
    -----END PGP MESSAGE-----

