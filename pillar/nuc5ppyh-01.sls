#!jinja|yaml|gpg

{% set hostname = salt['grains.get']('id') %}


docker:
  jnlp:
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQIMA8GuL1Ms8Af5ARAAs1BRduIqcCWTLrRdcf8CRRruM5nlxEcrClWkVq5YGJar
      Nxqtvo7LTACjG2PLux49ruvpWUGb+U1yAmEecIEU5ELsuPRZLSKqBYwpapdiIfOk
      Uu3Yabuayn7njPiAyk9p3pkK2+TSOo1sUnJGpkfBTLUzHLSv7+tjWcrslz6U1Msa
      D76K01eDmha8U17du+PaDZ1OvbpxFQ07WyDQ6gB/mgaNbE+L9JJLvSGeZUPSTXym
      rvkUVMXkiCE4iFyMFiLHDJcOfqWzQTNYzVBvAW2oCOJBP6DChh1nZfUr70jd/dbb
      vI3lZG8tsWsLI6//bgVL/oAIsiITAgpYzpo28eikEIY8USJpXHPhTSjS2bInhcqS
      LqNmVkM2lQLOyMdtLCrdKElhkybIJ524xqFLduVuKnqCgYK1/7CZ5v1hLxPeOYpl
      y4cnKzzzaOd6nH+Uu7WgpU5cVQfXYpCZqJrv6l9YGUqr4qcT1atO+8Y8XyaYelMp
      MLRSFhFFKWXXYwts+cvrmoJ6tl68XSfQTD13v9xMctT+DplJDS8SbxtCVbt1a5u0
      IpDz/GtH2Al9HZ+5STloliDSeyDGevw5E6l4jeCRF3q6cZxKjhNlwt6YchxiKrQ/
      jitfV9H3Oy4Y1UevlPQu1hg+nIV65JoUj5EoGXeAvwy8WXwvqtBKh2V3+7O1mNbS
      cgE84WOsHutiz7WnPcV/egIZkBnm1z8ImADPQ0b8b81phV8lteVVQ3rNOgoi2lhN
      Ur1LgjPxWvwvSK9qKb1DY/S/XzmT/AQfnQj7Tun8ux6h2nJJn/oonvudfRzC+h38
      iibHdg5rDt8A/0Ns9BTurhinYQ==
      =tkuw
      -----END PGP MESSAGE-----

# bare metal agent to manage salt.  Could this work in a container?
jenkins:
  jnlp:
    secret: ""
