#!jinja|yaml|gpg

{% set hostname = salt['grains.get']('id') %}


docker:
  jnlp:
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQGMAygOx8UbPFfvAQv/RTDCWUJAgxuwD4V3CXxgwc1aZ2XOrQp1gAkZRtN3sSAh
      nKh8Upr0GrT8ZhA/tKZCAClFdd4JreKjCPiwBrk9P/YPcnSr58HRyDKw9uu2p8Zj
      wMNR2A7E/ol+8pKON0THAo+JOHkpyxDfNlLyCrGgOKidutH+NlW14qzbbN9qvKDB
      Y12vzyPBVxmdtXItGyJHskA1j4SzAVcjWHZQnv1zwTkmOFeURPziHmMvOtFEi1W8
      IIvOiZCbddH0cJr2z07BmUQuPekeR4dtEPV60sUzv870naE4IzF2HH5BbdadXPqi
      q0NCIezZQd+hm0ZjOfW8rZ/GzGNE91sGUW1BRS7MMLknIj3FGH1rLJp9krCnAH/h
      RBAnLT0UpZasKlXLlnp9EemVzBZpO01fVyDQ6hmdKJ2y8ISxtKdSFKWzV75l1RQ8
      z//r2pnAhVcEKgBK7q4LmS5cE2EtbGUanix03PGkgbzcrXSu3qYz14sOcT2ol7K3
      FWH5s4bbZQZo93LLBL2S0nQBl4xXJan4z+2DaMPK1qD64NnSJd3ABTk81hUJ+uLA
      oQTtrMGzh17L7kI8FfZXt/ivFmQkKNFFaymEMDS0SINexmEM10pJN1+2xfps4knN
      92tZ6urv9zbP1emcElOzGU+RTVKi6zXGBRMypiL2KNOF5o/D4Q==
      =60LD
      -----END PGP MESSAGE-----

