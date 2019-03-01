#!jinja|yaml|gpg

{% set hostname = salt['grains.get']('id') %}


docker:
  jnlp:
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQGMA3gT58un8irNAQv+PE2vZ/X5/fsR2pq3G44IkXEtkRZmp9d+upKWeDdoJWu+
      ooImbt9mtoN1HzuT3TEwFNLdx1RoSoU7UAAyEo40rPcCCzmf391WFEUv8xhhecT/
      U3k2cBDbSG8M46jDeCMyOTTZpJAIeXfcOLD4xfq4Ifnaeky+K6o7Kvh0V7+RndLD
      aZ2Y9rzxZFJ0ECUydWtBNgu7X1iLEP1QAPMIqadvbqSRL77pexGcOBo6PYx9mp8+
      0rpvyoWX7qxpjKyMnk5/cACE0IUiv/TIAGuYX6SWbbGc4W0RQ4KPXf0FJSakSUDN
      3C/GCw5QUHaQaS/OunrwHG75sX9J+2zcuXsuJ7k6yTdeswVSdU96iGNjxRDO6dH+
      LVzySGgNqceXfsuxRA34ryofKQGUiFckamPFHnIyYaBWy72QSavDvZRAmiRbwCY6
      wwAnOP/whbwMMPv6pssLLVn2qiI+/yE/7lTwNPnPTEF6s+DH/QheGjnMbGhZSsuZ
      4Z3c1Z0IZbOKeePFhnc20ncB16t4BmJZ5YzawfCYU1Z1dV+G6wUAxtloTw0ebJe8
      gkoOnTEkKZk3nFuS7d5EZw3l5Qr7IzNqIFZCHF5SV+8OralL6Qnu2XuhhXacSKXU
      2Rs1DR967H/RDHZuZclTN+dVclp2ccWH2E6KaLTuFRWukPjGbdHSow==
      =rcWX
      -----END PGP MESSAGE-----

