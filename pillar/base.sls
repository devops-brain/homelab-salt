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

    hQGMA3gT58un8irNAQv7BIKOptYQwvoHsNeG05M0yK+d/DKVPBnajmjwJWXUxleL
    6lNU1EhucGr2ZQ3NEdeNdfZ4V9L+S9JZzBlqq4gVJJ9Jp2c5hii3l1QAQADZ5TBU
    yXvz/CxF5dEtC/RmVUm6CVV6IyqxEZ5U7zpfW3/5Ea05ZGIw/nNCqHZ+6bK6OiqR
    BRkKCIopEQwBBrnf8oKNXqXS4HgST405ISHVzjm0rOYm07WlubseEZwH3x60qWQl
    4y2QbxQuhbvvBUb7YqjQ0nyYJoTXmZ4w/TtfRjDh/MKmaM1QOrEeOLVsp5F8dcGA
    r1iEmQJccDr2a/ZCyVmdyGrnkrydJofCHb+sWz0megMo/ZMEOTx0FvvAFwBYSE3A
    0nxIeCyOfzgXGW6FFhMVB+FArrc3oLfwS8bkPmVgSHSqIOXqO4Cbf1Kw5jZb0A72
    w3wR5Xn09fHpRl+nqROWGo+kCfqCJT4FaqeuyGrL7Fael6Qvd/5W0JqkVCO3inst
    xWpxKniSL+nW2nBrY+nS0mMB1F6LgdvVefI4Lc5pLj3BdhECzzcmpdbaYS4r3twm
    XAEWmUkUCCvNkbkyrBQeJ2TX2SGPU9gEHIZ8e+ez6QQ/2cN8AwoOMFnyVgbsx3kK
    QL3tFSxVEQkvVY/ABM5WQdz97WI=
    =/Ewr
    -----END PGP MESSAGE-----

salt:
  minion:
    master: 'salt'

jenkins:
  master_url: 'http://192.168.7.10:8080'

samba:
  password: |
    -----BEGIN PGP MESSAGE-----

    hQGMA3gT58un8irNAQv+MiYb4UOr1c0ZuGBmi2DCgsHTGeGeQCi3sImKmBpptaln
    T+sR094GYZCxjwhJWvkhjS6FgS7kDCpNDjTVePRHKh+kuTwnvOP+4npC9EcCbyw9
    bh9XKtFvejYd7KMmjxrB8hZTMBUWZtcaeiE/qH7LqQWfI6G9QnNqKKvO4Clu274L
    GtsXLFIEeCBsrJs0l4liQhSfS+4XJJ23tSLW9x5yZZ2oeZQl17PQrdrApAzOZdgK
    Kkw3jMqPQZL9OxyZIeX7LyJCaBkr1k0uo0CRZIixyuSHXNM6LJZZ+tsaB9mTYKkh
    5uXf2rynSxIgzl/BCrc5biP83gkMncbnUKUBQrGx49342cDzoKPfGhySA+AzYdWA
    gfxxgqwhxA9TGqTUSxwjgmGgbXzUnu/e1cyWOw/K076vqBYtGVBfAE6pDScRiG3H
    nbrgubQcQpuh45nB1QaXSVs8HNSeszTp08KpNfkTW61YXb/bRaI2kn8ksKALIHCT
    vyNTxho+Dw9zAPzBzMv80kkBH8uqFsKSBuUrcdX65oxxhXB1+n510WV8rwkxABz/
    UfAyozvDcKq0/nmqltrdoTxyOExVPIp/5L2WbfsVN4QJuQU7Q698iw5+
    =JvYs
    -----END PGP MESSAGE-----

