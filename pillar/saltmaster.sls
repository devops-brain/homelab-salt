#!jinja|yaml|gpg

{% set hostname = salt['grains.get']('id') %}


# bare metal agent to manage salt.  Could this work in a container?
jenkins:
  jnlp:
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQGMA2p9EgXH9hJQAQv/YwELcrC466Q7CCoOr/Tw1k/2fLgZ6jPAUz5wWSDlNFQB
      AkiXcght7OPjdeUhEZ8C3ZyklDrS9XYEzpY8r/lEvxU7teHzjUcvetMgJTmYjFW+
      LnlRPdo56+vlgUrtaluTqtRznfcpydJ/qZQnFwo7LQ+Ppz/YqOZdDrwFYz//bKRm
      1OqQU/QAnbftVMIU1UmFVvlSZHyZPJHEb3/3fkxh9iT+dZBnrabeLp+hvMkORM8k
      vvNoRVyJ3TXkdK4XOCnNB4qdsvSoOasXCI+8Tsx4J6DP1/u3xKp6UcHW52tqAfJh
      S0AmdNW2P2q1szCqrZPstN2D6EELThul5qGwXqgtnx/wR4cAwvi3dZi8E6w98iLX
      LhUVVx8uVEZmjwD6CXFWHGxE//piFDvV2BBoSf/5ARZ2kKS69yhDEpRqoqee7EJ7
      I1rVWK+4rsC4mrECoCzik24kDrUj7jgTtjsHVx1frLaDDNVI5e2i1iVmaqbpPXZL
      qGsbd/vbs/kijNYFEyiL0nEB+7t2XMcr0EJPkXMfMcSxYJJgwSq0tRPLCZr6hf4L
      bL86BCJ9BgweWbfn+ildew1spRblFXBPIav/Ar0OUDrOFrHl0/03Qd/yl5MAoO44
      h61DuUWhMD5JioXxsR2a8yNBxc61/Skfv6Qk3S2ngTJr7g==
      =AQrZ
      -----END PGP MESSAGE-----
