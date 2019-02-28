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

      hQGMA3gT58un8irNAQwAlBg2ZPQEnThX1qy3XC0myrtpyTvubzoITY/kbPy8kwo3
      lziC3j9TJ7fzVj95RoVO14MCQPAN06Sfd0RT7P+ZZKKsPfW9Qf79//n3kCprCD7U
      LiCH5jpnsaAbSMsAS48J772ESPUXAfyjlly92D+QBI+QuW/bCR3ml/5bvR/rjVgl
      CO1Y32u+7aHfCVyBpFM02gT3PvfyZIZWu5uPMlF1faiwPHUyGMQCfMUBagFmTLM4
      fFzPDCqbHF2dyKdicXWHAcNXuvKO0AJ5oo87JgcIjRqa2uHdsOcEb0c3gtRNNytx
      MrA6MMrxOh/xRy2zmCh79hzYWHMYM3dCACfcvtESYUriyAjC1jSnVc26H8qdXztt
      Y9ddAfKCg8xfvdyoaCMrs9m5QEOPnAfzNijGSz+l5IcC0xcKs87y1EGPCN/shb6m
      oZGsoas9zEQndhVhfD5ZisK/QgQCfKhc2xzgcMLuSJWbQsol5hFmllvshgtx3inw
      2OvbW4CHDsKlHq8ZSSkB0nIBvCQZJHmz76xjyPiSuyFNbbT/4SEvMcA6j6BjbglW
      B/kZDXazNeVqmQMX/W+kJwjnQGwucUYZ9s1IwKY6VXicPeo/WqzSH9UkvglfSWS6
      h/PCPHTF2eq3LoseXXpgSKBraEH+pQcVFAzkFQEK+S9rntU=
      =2izY
      -----END PGP MESSAGE-----
