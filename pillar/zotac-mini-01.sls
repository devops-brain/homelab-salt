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

