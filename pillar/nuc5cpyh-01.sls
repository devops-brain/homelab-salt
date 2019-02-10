#!jinja|yaml|gpg

{% set hostname = salt['grains.get']('id') %}


docker:
  jnlp:
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQIMA8GuL1Ms8Af5AQ//QGQePmATk6jG8k2xJUlh5EwIuH3flwAdXDKAaIZaVkD3
      C21C53bWRYREk6N5kiul+CGnFpZeRosU3eHnFOXeD7gXoNrF7bgDtqaUKT4TUjCg
      nMjkJLODwTaCca2A1H6I+38nbEVjgMUXEVZimsx0yYPLlp6Q4RvX8whYkoKPcFLw
      SJtMezj5OK7iUbniSVqu+zsYuE7SQLgJuw0vuvpTY3DGvXI1/RgVgrpv+QUT3W88
      d2EZMyYCvN5n3fadRR0H1k6+tZqjxtzWavW0f+8i9+xy3/tXAKmvdewD0N4VPlo1
      x7eshZlqTbwBE9BfveLbXTvkbkm0z7uDe8wGPXeQA19GDc2oGM0etPn9Nm5vZ8qh
      SqV/aU3ZTbQXUj0e+gkGEH2OVxWJW97h7cbTJJZMe9b9jBKbgIcfWv+ZLCquX1yw
      iijVC4Mg7gJQfON28PTfMzfxNk3vHM3ybf4PCk26tx4gqodK6uZAszQ9KcysIe+u
      xznw07Kt9GxuBC70oniMzG16HvRtclaPHLhx+TOzuFeYpA42PuVbcAAz2+TzdG9P
      gsjliaT1GR8csR/3zevsP/OF99m8x7qG3BmDyf5Lk15+cFMSzVJPYCw7qDKrN+0h
      ZNUIBnrbuCLOFSS6dqSOOndVwkPxrLjcHddP1eDS7Yo+rpxn1wF8E9P5+5kwT/HS
      cgEr5nYm30SeY+2L+R/18KyeJFrnXYiDf4lKFidNh6LcT5wUBmjaoAtOdSjaah6j
      vFbMOLt65O7D+vS7xG6QqWDQuwM5Uk1zTxWNFBucReaSl7Uikr8NQvVk7NNBj2A1
      AWeIamKdSexvG+dtup6T/749Yw==
      =OI6S
      -----END PGP MESSAGE-----
