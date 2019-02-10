#!jinja|yaml|gpg

{% set hostname = salt['grains.get']('id') %}


docker:
  jnlp:
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQIMA8GuL1Ms8Af5AQ/9GuihAaLdqGtrJW8orb/6cTQMTVqIMyKx6KkWE3CINttY
      30M0iVWOYDRn1t4IhuCJ9nQhta933qHyPwlDN5sNu1dsN51ihCgQizMVMTLblgbh
      SsKE6kTOcYIDN+Gg7c7opflL9cgF985PQfXNNJ8e2fKgzJHbUMjoznqQO6JGMkmV
      OFyK3Fe4rjREPBpmbd/rLGYOhCBSbO+cekSzm+sN7x0KTGEvVByJOG9jV9AYQZXY
      AQIYJoTyH9ymD4tswtvzWuzRbPeTqV5Q7SS2Hol51nMZSi/YLN6FjHO6wZ4yoOr1
      cyTOMuw0G4v8lWcUGjzMykT/6oAojur5TBgpfyWUwenSTuKWRh82LVn5qG5Zkzld
      0m1OKl6cx9E4F3LMDmiTXSYB0U/R/lKs/ptEjb2vQUp2H70jjg1YmnwyIe5O35sZ
      /3eGNddH9rhtbEeydvL6K0K2XxXYUkOKqBUTKXxRCm+KVBTm+W7su0zDuulJ/Pi8
      bHvicsh9LMM0VKPmppeMXQegBbI2K3LxzbscUoSCqwhPuW1AzaniFUrH2VQwfhB/
      XeCi314uHF3a6Iu7uFHyZ4LR+WzPSi1YzTDmYXpxGj1y3cDesMrSoYEZI4Kcqnif
      /SZGDl/3rVJI0fXVWN0jn1as2O2Co8LXKqiEeuQ1PIDWOy0mTP4BHuWf4mI7ucfS
      dAE4jPuRUmcg77gpFmduz9NKkmyj+TaofZd+m2lpSaE5/qCD9Nk5AlAIVCQo/3Ev
      FGtbjSTmYEGJiTYWX6T78ttsKIhLIu1xVl35Mjgt0gzpQC1m9Z6JKPSnB9VbMaE4
      1Dhs1ljHwaKwOZoechhg/S4NriQ9
      =5+jU
      -----END PGP MESSAGE-----

# bare metal agent to manage salt.  Could this work in a container?
jenkins:
  jnlp:
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQIMA8GuL1Ms8Af5AQ//Z5v6WpY21O3w18gzjfeVnxAXl/OIkaf7Jty8CGfsbN6H
      bDYXVI/sqKpdOcpm+IMc1kBpsGERWyINdFxaNaAl6wWHFNrBwxo/cE/rtBPdYLDl
      WI1k6mZ3BJ8P+OqS0yE6XlUZkHNjk7ehDhu0fQ8k4Ca2Ce3KzTmFDnf5mA7lDBNo
      qhM0prrrTX7nRvwC9QOwv8Xl5h0yHLD4Xbgd4Q98dciwxKLh3L06+tnfKHoTALOI
      WA3xkERMxZFAIvMQ9jF1yFQypB5kLIIvOA6vPmhL7yUgzIIHU42QDp0+dUUfrvsx
      h+tlOrsvfj+VsUi9B0jejppPKHX6QLLI87Vo8jdq6WizxHtT9HGmk3J0lRAHUfSK
      2oIF38cuHYBOBfOkWXK2zP5nu8q2h8ZshVZ9tf4T2k/TB+InjzgPQfauMbpQb84F
      NPOfPqa1seZk48wibZWpfYoCpg51HbxNdkM27cGrKfaG3bDuA6QFiAxRpyuu+lIo
      T6Gn9d0kwr63xtftQ+2PEPXse70MEgyG3eNEmQR84hW5I4OpSWY2g6ggBmXVU+AJ
      xuSClPL+kEnV4pgR8XmaF36I3zvt0etd13sX+1k2QoqtWy801OFTbzYcV1BQE88Z
      nzGAnoYRLRsBVrRf/2mHRbqRV75HmcTzMrCHhuk7TuBYaEpbFE+DjiN3UMfER3LS
      cwGjk/Dn0VL+1LvI4DrDcMag0ZqZ5MGBlvibSTGKS+y8S1NqrYX/7M/IAj8J5GdG
      9ZeElpIp8TLKmL0LwVIr5KWqkub6h/M4ZpHtE62uOGT/KeCHzithX53bUyC8GkkI
      hJ0xxqtD6KUlaC6jLhErumUmFiU=
      =Exgf
      -----END PGP MESSAGE-----

