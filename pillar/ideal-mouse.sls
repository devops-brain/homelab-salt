#!jinja|yaml|gpg

{% set hostname = salt['grains.get']('id') %}


docker:
  jnlp:
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQGMA2p9EgXH9hJQAQv8D8wItCElXzl5t0CRStG5fnDE/VcGrvmrNqchfOAmbBgT
      lTflnq1dbxRfKqlgsr9/VGEWPyFTrpRnOg3IOYlYLR0/G/pTuWJ+vC5dusUb0fiB
      9D7u0dj/twbSNcXe1W91msi3FXelzouBRs7OB5P1aXKrCIk5v1JbUJZq6U1knF0r
      fkJLJ5M6nI2s40WBudvJozt0+wjT360PL+xoZ2DiPkwwGjtqizdnX8GZnpxQ5hKs
      liXWR3L2qqiR1ad7Qi6fQSGxh3F9Xjfkv1ShyjI9VslYY0CkNaXgeoH0WUB+L8iI
      tv92Gw2HYSx8sjMus/RIo59eGa1WbM+FL6PGn5qsaQWwqvAtgkLxt2Y9K2SHI+ab
      JHEQHpD9wfX6Qbt2VDKRCUHycgnN76YlIZnmIugsWfM11h1/UPpyRRb/1TGOWkfR
      J9gpzlnLX3b3egk+6J7LaJ93zBH9cX8FIbCoDf1d/50lva6/EuFfJe9OJffdqjZF
      X+lUmV83VaHFlUj6MRQa0nMBVc4X/hFKEaeeNq6wsKj8oBn2eAK4Q/7mxgxsVm1L
      er2VA3fG/aZz3sRk/RRiF/L0DqIILCtbIP2UBtl1SFDZId9GvG1DNK2/vLtJpaxo
      S3OBrEOJ1sKbp/h7FqVAvbXbouPXS6UQVJMSE+9jPpar1V+A
      =oeo8
      -----END PGP MESSAGE-----
