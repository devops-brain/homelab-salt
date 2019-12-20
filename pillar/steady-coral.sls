#!jinja|yaml|gpg

{% set hostname = salt['grains.get']('id') %}


docker:
  jnlp:
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQGMAygOx8UbPFfvAQv7BdghXnGBhgTi8ptT4uWQOxdXGCKm64UBGD+FgT8Qn3As
      K/fSYbyD1TvSI6sMKu959D+K0V+llvbEKWaHxaYLqn8w/ySPMvB42D1RmOuBX1Vm
      0YBERriim9Ra8rumkBylCacu7c45VUR7lLKPnWIe+BhnNhMSPWO9BvOPvh5Ce4ZJ
      D5ebOzutyCnB9gurWhwAaVwYUGbH5Y2Zh+bE68ldPXwXOGeFO4BWiXVYhXqyZQxy
      QwN/cTRzfinkJktFct26EP+M2p46eJF3PTzJIAB+9N3SFYBdDHyUybJanNblQFpe
      3XQZGKeu5q3ZpZdc1TUOBAHIEw3sOyYdUmqIYTy39H3kU2+Fi2Uj5tHwKrI2Tggl
      jpnxL3MP5e4oHlx7kJUBt1GOOB4KeXb+mXjf1Y9OphNEedvFCGHuLQ36VOD/gFUm
      2I9LY4gK6bn7cUxs+DcGiasEBZKfvuXtpLWFy+K+R6ivnR4lKzGOJb5TZnpx5qTq
      03LzEVIQG4VDWaycLvG70nMBxqCYoXWKcmktcoWP0OeAbFI+freCdSufC4SZiogT
      /8XlNvGudujYYk3HQsudDFtsPbI2HyH5vSggIr0JGfIj5Oj7Dg+2VtNFLB+sGvlP
      EQsWERdsHU9CwPeN3OdlJD8YuTczC6IswL7xrqHur53Qkmws
      =Y0KQ
      -----END PGP MESSAGE-----
