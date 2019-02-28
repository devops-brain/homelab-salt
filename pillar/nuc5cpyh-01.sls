#!jinja|yaml|gpg

{% set hostname = salt['grains.get']('id') %}


docker:
  jnlp:
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQGMA3gT58un8irNAQv+NCgQdEGMhMy1tlI5xjINHM2tv2e33ZSBTRLoR0pZdlSW
      aDRituDhoxEWdGId8q+i4QUuKCsjrrmnxVRLpJ6FWwifj2WdX+Vtz5P9nwNkz78m
      ubTnz+DdU7BsXkOpr4x7GWclXTItylZ2Jv+DF9c7NmVNAKG5LJZ/VC2PIo/aEHsh
      RX92ORvh59T2/z64SqGR/b2/w4BmGr3v9/6hjhJeaa5mpMNto/zGQ0Pe+k8+7Nb4
      bp7M0zUTpjN+hrypUcAswSD0lejRelMfPOOe5Wt7bFudwCOslRb0nBEiImd+V+5P
      sqeoQ740lJ93+1wJmkWm2Lzmn8wgKcQ5OKZXOppAaajLmIdE6Lz4PeMcIHV0gpZ2
      CwDEBhJOMC/sPYGPm3bOBPLHHwDiOIIwzx4GHcJskuN2ad4LydhL5s75c34034Ax
      gK5eA+0y3UTU4opcVeSlAn1rKmS2LYyfI23NZClzOI5z6oIQkj3CXdjSENOq5zl0
      fbHKm4oEWL0MLnHXs2nD0ncBZUuf8ezc3s2OgACdgt1pzu1Ix1qLPxngxcAym7sJ
      gB02S6aDPEzb0wt3pGcYble0wiWeHh8xr3Xqy3nsHGcZoeJG0CC4XDEQ+w5aZlLb
      oyqQM/84yYPGXt8KtwhYlfFJW9i1Yrsa1K96DN8kXUYJjgGBGz+Eaw==
      =O7dt
      -----END PGP MESSAGE-----
