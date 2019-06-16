#!jinja|yaml|gpg

{% set hostname = salt['grains.get']('id') %}


# bare metal agent to manage salt.  Could this work in a container?
jenkins:
  jnlp:
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQGMAygOx8UbPFfvAQv9HPQqI9KgYjHAIn7GFMLfGj2sUHBgIOYwupOHVG2g2s2O
      qgTCEXp2Cge03RI59xusoqk8p3+plj4Y7NUZSLqu1Mok8keArO7JbXVWi8OxmA7i
      XzEBVFZK66s+kQnMSkVRzK3WopxUHON9YrIHUFq5w69clx+I0SUrrYhHbrgYZPER
      gfFboWh9FWU9fwi94udFALdR2XZQUsYWiCvoE7gqnyRuR4JtJfudF8nDcEsRv8tV
      znaZFKbHO963AhzKSs8FBSkWJYh6xjMu9sJ3sKmI5D0+rnI7NPwnAr65sqLncv30
      umi83yoKkdO8iOo9CqzNv8zmAVZT2vBvBvc7KmZ8f/viaflDLAYNGDuEuDjLyAak
      Djdx17wZbcfR8RME90nfruxtZ5REsS5jXT2p9Mt9vIBWmLCreWXsSpWZY0UAeWus
      VxD6M+GPVc2qABuxxFiaeJuD8giu63PbDu41U46aV/4e/NE8HGBJYshIEUh3MASY
      9nedCpVnpSWxY7c5mKsc0nMBauk6IMZ8W++RnSIfoM2tC4Rhj1SPIfuDYd3TOYlq
      CXIOhwGjFR2puVRcfyfVqPWNr5DCq1fZnpQ+I5WcedVkhsa+2xRdCpqPreEii5mG
      zdFWwR7wz44p6vp+ZM4H7rBolswMCuffjU/6XjNfHbVmCMfJ
      =fyFH
      -----END PGP MESSAGE-----
