#!jinja|yaml|gpg

{% set hostname = salt['grains.get']('id') %}


# bare metal agent to manage salt.  Could this work in a container?
jenkins:
  jnlp:
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQGMA2p9EgXH9hJQAQv+OdJrzW7Sl0gq0YFBzab8+xYPQ5Lcz8UGysDBXAR+v+/0
      Ty6KJ7Ah9xsZrGvZllTVkbatjMj+ZjKbb2i0jBWZQMcvMgD5sp087q6EOYqENzfy
      9eCQZztqy6wzAxm+CAAhFQP8JD9OruV29tq3PGoDlK5FnW6Xex/FHEiwNy6zDy3a
      1De3fXKNAwXHMtfwBuFGQ6FyV2WDTRFrrDJqnBPmjB8GJdLsQ/4UHejOlEpDDqj7
      MB9pcLE2iBM+xe/2377Dux+zZQLM7Ik7dXBgz7/mTkdeiT66VX4CLG2vo16pBBzb
      L76dKsGO8AiaSFXDKk8QFjfoUcUOzEVaamnGcJFw1m6JXqkGuEmZMd7ilWS7XoRW
      Ai08n0mJ2JaG/BcpY5NCTurWlBwDOEmrMyyyKZBzOI1oicUP+cMOQO3rXttwFcus
      rxErq/HXLZzox4/kwdU8gYg2lA6lvZkO/cnv1gwBhDXKrZQ8nibMWEOCl+URCUMj
      fBQeGHBYmy7uhRJ4upN20nIBNiFq698R81FXRTMjpat0smFKPk7+dSW2CqeYiIw4
      r0qblb22KJ0/Ao5ty5kLDF+Zt9FNE/Bt5niTHHhRvZ9rm5Z7iFYhclg4D58emJOs
      M6bG09q/WFfGshqYVbbz+s9OgQAW5wn/iiHrpgmufZoZHf8=
      =MY/4
      -----END PGP MESSAGE-----
