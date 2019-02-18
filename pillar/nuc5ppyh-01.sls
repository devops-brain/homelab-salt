#!jinja|yaml|gpg

{% set hostname = salt['grains.get']('id') %}


docker:
  jnlp:
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQGMA3gT58un8irNAQv/fK57Gdt9e4Xha6CU6ZN5+nTZZZ7dR8zeScUw1mzgS7jq
      4BNqb2G1icYpyvB/84bSBGbnuDzwpX/yqAYtsV8vRkdGYfpMTl3GI0A5wa/lRtsy
      vAtFopVdi308mRUYX0JGjc4CzXIu00/Qyv4hvAa4udlMEQBTEcXpjC4mzs34Y299
      nXLQVVaQ2nts5oC9rGdH9QrO33by/R5smbGnu1fT1WjpMvHybfDtG0A+K7kpk62H
      UbU24YCFpIqxSgZV/SxOTt/rFOwDBzEjKR3HieQdFNyZhw+BFfz+E5TARRHr+G5g
      AuoiV1P9cm7tXMVD19lVyIstvWhqsDtCHWG4JIkwx99QXLbEYpkqoynL9sbZvCUy
      JBBWPQA9EGyfGs5dLcfGtDO353mmkAcpelqwOvKWTIbNXj9+//bEhUUEyQxSV5xV
      M3Tx595X2myfpqvdGFX6WbOLOC1LrmGxEY5da4tkijifVGVbdRFgrzhDGztXpWre
      HUNGsxUq3pMPPryCJqo20nIBBp40UBcjsIvf9TB6uhL/KmW7I2pe00DoTbyyQc3a
      YkyNJMS0jlNERrtjdq6HGo+BXs+SlQfJJTJSdtjIV03O/qjy12RcD8lI4t9b9LKV
      cz4ofjIR/Zw7MNgz/U8fe17qSu3htHVK1dQQ2x76O1FVh7w=
      =33h6
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
