#!jinja|yaml|gpg

{% set hostname = salt['grains.get']('id') %}


docker:
  jnlp:
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQGMA2p9EgXH9hJQAQv9Fv9BD0K/hD8u5sUuBCXx5R2gqduShj9riyUUQ5+r9jOD
      D0Ulp66o3WuSx5pWXwqJkgE65g0aakkiCDbok5FQrt4+esJqZfgwZo1QyA6WPGhS
      YFAykbf8ovUpuZs4duW/wv742lssP0waZO17XG6SQiybNPMpBoA5Y4/gWvOEZSaX
      YNddHu/DRWsUNMEFYJBDiu2HYN7FI7lESSHY5R4IODY2RCc09b/3AA7NDmbGquWY
      2mi5UJWmZH2U+jDwkKZSQQURT1z5l1EORYCtvF3aQPLtIcnV7KnqHsommI/AlI5O
      I5hHNVNx2AVt976zALhYNBmV2C8f/U0nmspEIM30TyEUN6f0+7y3sKxyHAAMHVZa
      ZczdwOluWjzkXIaJW8T6cjhQ4Us0zat6XvapNsXV8ZHOulstiaDtzC6/ZRpvECyN
      nQsrQMacVHRwEf1+LKdon78dcUEUCjhw4239OFdO3SOUrdsQWwHIrBInRVVjFOBd
      US+vsg7n8WSyeEJ03gaE0nABvw8XLoPpJK9687WxTxGnytA58sMLOsC1yZY5drty
      vp8Cabr2KuUvOIHMcjS8uzB3mhBb/dZ52NVy4RsVW9HAnvPg18tNeEkRwxMs/e0z
      41fFg1/roQZlPr19BS0OQ6thblPEh8lNtPx5PR3omtwP
      =tboM
      -----END PGP MESSAGE-----
