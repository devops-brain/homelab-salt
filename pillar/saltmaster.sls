#!jinja|yaml|gpg

{% set hostname = salt['grains.get']('id') %}


# bare metal agent to manage salt.  Could this work in a container?
jenkins:
  jnlp:
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQGMA2p9EgXH9hJQAQv/YToFfZ6n8yfVdmrKgaDo8gnA2tLv+PPdfnnB21vIAHdc
      DWUjV+yS8gewyGgj82h1gpT3e2Zluqv7HHlBNXXpxyFRA/LcbDqBr3n7hd0xyH7K
      G7V+a4BXl35t+dUmKzGtXpm/HqXjRMyCmWzmm3qqvHMOGZ6ZK9jsDGXIo6UMIE+1
      7PmL0S6+/RdjpdVJ2K6e5bCeT5vVeNHmDKkxBDzQjCvntS54rshsQOkuhr0qDV2b
      SQOObQm58mt5QP5fzWnXPJ/0VDtIYfQJRn/h7O33nyKZz/TFB6fpf4A9/W7CG8qr
      QwoTt//2hjcjcABUZBaTW/WBcTOZ+8PCuhNP9whUxRb4tHbov7+mYm/p6lWhvnSV
      AZLFywNM0Xg1CuLRXZyncKVaM4UzNMecQYq8KTbGP8Z9dLkBZYL9qMCbFwcjb0MP
      R6ZyqhqDBXYshWAf2EXLPt5f7/D82dBj+GFD7pI6F+HZQ3/LuGipnG2m9nCG4kDr
      SeunR/vlV7D6SWL3GDjP0m8BW2iyIHgibuhLWUgDqaNZqduNq1ka2FZwwi5ctk7n
      NYdnFHHii46qVWnCpTKe9QMsB6zuT+Wbq5hKWlzjFBBNhXPePLUX+ELzKB5Ar3mS
      gd4GUBcXfbuYvZY2ggSapbbbtTkLQX33fvOisLgqVrc=
      =h6LK
      -----END PGP MESSAGE-----
