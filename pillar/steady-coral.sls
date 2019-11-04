#!jinja|yaml|gpg

{% set hostname = salt['grains.get']('id') %}


docker:
  jnlp:
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQGMAygOx8UbPFfvAQv/Z+RN7msR54feY+9/8rNg+a+Lm34nE9f9O4LzNf0TQ+dH
      mzh4EkievJy2JErUEeyRdAyyP7Bz7S/12+TcdXL52iNWM7VtJmcIkLcJU+OlRTSK
      2Zk4HDwqfP6Ntk6sPZQe3PTLlj0qzBjU4G5+0XsRfn1OiIcVQspSFbPmyXicnnW2
      0IRPQ8Xzq9HKG5dtn0FSNacFZ2DQfoYdeTFhv93MMj9AvamA991c5eYOVW/71xGh
      zgas2J7kZitqOv0RQ1KcbQZhfXuqElq6FC8In8OzwBqssWNE+A9zvY0qchaaCBv1
      rilzPZ2Mc+sKnGl2gV0J5lwHs+sbn4Xqg67TKELkAFady2kRkiQRYYGKEpRZH5wo
      3JWpIRxM7RiqaJ0GRaK4uLIJfVZVKJ7Kq92Fl0k6dbC8rGQaSc2EPbINyuyV6TPm
      RuqzXB01fBwRFTjAJqwhMsVCukcOnTjP1w/HhWCAMmmvkRnw5g3DoQgLpQR3t1OX
      VoIJsTRRHElWylUGRnRn0owBBti0Lu+7hPMafwMoevuPkNpZ0NXyzjqXFIQQWXL4
      icNbopIXH6juOraXfX2VlQTj9MPeVBpwJZN44KOPVr//FIYWOLg2gMrBzaS+lxWv
      LlpUDquqIHFN9DblN2CFtKUe0UNN7yjLLRcK6zbYnyRzR6ygn9ANKki4OFL+spDS
      a59ViVEmF70Yrj0eoQ==
      =gDr/
      -----END PGP MESSAGE-----
