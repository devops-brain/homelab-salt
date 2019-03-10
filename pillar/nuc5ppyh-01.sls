#!jinja|yaml|gpg

{% set hostname = salt['grains.get']('id') %}


docker:
  jnlp:
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQGMA3gT58un8irNAQv+J26BYxtIbpw1wrr/HRTIAMSehijWqbU95BIKI9jaQgWt
      HVudhwcoewqj9sGAowVPmOj+ZEyFaapAuNzigcfYdnmGf8fdeKbzfTPzp6mojFTa
      kJxbzV4dAbacYwyW8CQK1dtnAlLj5gRohn5FPkXIpA28JwT7yliT+xIB80+qeyS4
      apOKufMOoSa+Sq7IM932LZ4gFiFpnSYCm6hF0VSWb7wJUacYcut1Z/jgWpu9tSCv
      SUadPvJGRnMdF6F8FRcebtPrnc9FlR8FAqEZKlr7IGKL/FUYCXUQdOMLvL+uHtBA
      O+F79piSPCB0rd8D4mY8RbPZnXrdNH5+Sh/NoQutMyHbeXjGMBPGHcms4/hOaCze
      j/JjZX0vQeBwj58rN2BjzhFSUiOXvbPJXNf99Vc1l2kjLiPdCt2o2NH4Zvs3wBIX
      IknrerVMTikyvsqbgVCxe2f54h/X5Tvdnn129SU/GyxHDFgdHrYqouW+pcb83hn/
      2jHFYYkrUHk4oCFfxRHJ0nQBHgyrtgbU+e4mAN3Maw52aLrQdtX9uulcf4WIQPgB
      aagM25KkkO9hsQmCVYPr4bTVwfJn4kllxNuKvNc3LDq7w4Ex5yUKpp5963odIIsR
      cDpfYrgYE8D//qTUX8uPEs891XchdUUNZFYJCjdljX4T0dSYFA==
      =s9cF
      -----END PGP MESSAGE-----

# bare metal agent to manage salt.  Could this work in a container?
jenkins:
  jnlp:
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQGMA3gT58un8irNAQv9HmX5BQjt/HRdgBrAzlpPUwlEr7jQWWTddoKbQDpz+Q8j
      wo6sYvj+9ndo268joxOly4DNPbdoSmWU3/iZ6gIzF7TjdIkpdGwQScYWnCjEVrzh
      W6+E8+fKyi5LgeFVtw3QDx8itq0tBBcz3M2Tq8j38fO8RcDhQtpl0QE0Lrv5aG06
      zdJwVTp8IiC8qsnD1d/BoUAUmnY8u+9fzrFw9Z0l0j5E+KmFjhruySCnxYjV1N6D
      yvm+4T+t8OxW1UIboiz3tE2r7dRoAQrXydBB/TIa6VaV9vvHxb8DPwZ32hxh6mKL
      QxpJZgaIzSoLEIbJM/nAmSfxtupazWKYy4jBDx5sQD9bKLjRvYiC4IubH0SlJGr6
      uDaYkmlHZBBPTiiKUZdseVeEeEdjZSHelbpJqtVOT1CAHX85Rc2yL+OCN1SGCGZR
      W5ouGDeVlqjCMTRcrnznhp0i+ZSln5lJUGuY95s+iddTCk7NlBpQhg134clO615A
      izMdW8AsRGvSPPY8NlOB0nMB0E/iyGiNSrp64Yeo6lCBHj1VB6KQnAtq5TLxF+T7
      ez9Xf+FTaaKjbeeTVLo6Y+PPKfm5VSF1Uib8qxCrrdRvw7yKqq0PdsOkK3O3qTbl
      iblK4A/o+bTt1FumSt1C5a6oaThCtNb3N+wKqWPPmQAC2H5K
      =9hr6
      -----END PGP MESSAGE-----
