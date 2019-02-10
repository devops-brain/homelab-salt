#!jinja|yaml|gpg

{% set hostname = salt['grains.get']('id') %}


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
  volumes_parity:
    - 'TARDIS'
    - 'plexmedia'

jumpcloud:
  xConnectKey: |
    -----BEGIN PGP MESSAGE-----

    hQIMA8GuL1Ms8Af5AQ/+KIPzCfZntOgAwDrNMqwPERqiPEhoAJZQH3OCLrxizsSV
    NbzljsqhLHp/77YatiGL6ml7omjwTTq3JJRNKt43bvi4jt0XCcUmMW5ZQqwtXtFO
    hnKz9CRjFu8/Etdk9uwRxKAskIDibrEBh1c/dTokATszYr5gxlxjAAfg53uhrn1S
    ehc8N5B5TUPGQtECHWmw/ctpgTjSB/hqYdu1GvrfNcgImlaakaJtQ8WJgNXnLG/L
    D2LaIMxlcX0Q9JD9eKc3JY2hgv3ODCwBGH9r44iU3Li7/thZrx5b6sZO20iNkxGz
    YR3K05D5Um5Q235tTjJe7PZ1jIBPdxyOsEHxa/Qi4CWnmg1V+1HotgtPK9VcjaeD
    xmEJs2O7vfquipIOo1d5gEkQ2aZIVuttvInweWeae1sSOU3mi6H19i31CKL816s1
    qNE0ycVK+asl9dnTlNKNvMPMNNt9SORyNbqtHE3s2mEk3ugQXSxsFhBZN3edV9w4
    gX4nhtngy9192edUVpyCUJIRtVusSa/Q4yw09lSMcgtmOJMYG6BWJ5GEvwrw+5La
    CaKMu+6mYYyxLtPfVFz89UG+tp2BgeZlEM9Qp4XZ/6nKjEBmL6S3C/4wJ/Ww6ecw
    LSTtqUEBujL7I8stAIR0feaZ9EpgOcHgXAEID5YjMSU4WBQCBOIfjViob0ZG/LTS
    YwEoiW/aSeUfSYSx7aMjJuu1m195CsDNCOS4stugFqY5ML4v3XNr5k0Cf8+dvLsL
    eDqvb1jm0n2DRd636s6nwMphMqJ5RS5sclsMMDdOfUp63l7mwatg9zMWxOFotqo4
    33++hQ==
    =OIik
    -----END PGP MESSAGE-----

salt:
  minion:
    master: '192.168.7.69'

jenkins:
  master_url: 'http://192.168.7.69:8080'