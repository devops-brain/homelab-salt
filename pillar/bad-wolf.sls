#!jinja|yaml|gpg

{% set hostname = salt['grains.get']('id') %}


docker:
  jnlp:
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQGMAygOx8UbPFfvAQv/RSasxoBn3jbMM6kyBDOXb8zT4NlfWOGTR0eRHZrhnXpz
      cJkoLNF2tLgUv2s5ZfF5NO4q4KXz4BzakyBosYrPQnSLveYDx0vK9odNftIG24JV
      uvTHCThCXwwV+JrZpJyA1rTZemZZEzs8EEJ+6isbyj87SGaHZcgLJqaAU058fen0
      mY/woc6X0MjzbwgjHyGY8d33BsNwV9mKGfRYKLaFUWi6NHqkg9gTaEFsRA6oiVPY
      nXNADDYXr3o91KGPCUVo7UagRg9rKoobPPgi98rW/l39B0l64EA7+KRgX1epBVo1
      a+9g9xuxbe0QTSRQ65IRtgVPlosoqG0edfZrDf9OO00yivkSh9BQ63rrUzJUsw6/
      ywRiFXtVLAiLdWzTMLGYifwUezyoghfgmKNL90OvXag51AXAjTNKGmCx1OP/pWmx
      JnCzYHnlfeLHiykmFIjtmMbKBr7TqCmBxDwKFoycS2MjBONyTNdjNm+hdX+NMZ4V
      Qw2IWu2LEqiPUD0CT68t0nUBSXwXtBfWWezh4Vn1ipo4ijilmIEcL2uVfuj8xzlI
      dgn+TRKP5e/RUrA0a3MtvIENZCqNGm0SsXVAsJSQpcOhd//ncdnjBmyDRRKEVp5A
      1t2+Spu/Uvnh5NLBbwn4RpdUUSyVgL9T8hwgE4yCqTi13pv+XUw=
      =j0ow
      -----END PGP MESSAGE-----

