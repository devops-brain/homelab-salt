#!jinja|yaml|gpg

{% set hostname = salt['grains.get']('id') %}


docker:
  jnlp:
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQGMA3gT58un8irNAQv/fK57Gdt9e4Xha6CU6ZN5+nTZZZ7dR8zeScUw1mzgS7jq
      4BNqb2G1icYpyvB/84bSBGbnuDzwpX/yqAYtsV8vRkdGYfpMTl3GI0A5wa/lRtsy
      vAtFopVdi308mRUYX0JGjc4CzXIu00/Qyv4hvAa4udlMEQBTEcXpjC4mzs34Y299
      nXLQVVaQ2nts5oC9rGdH9QrO33by/R5smbGnu1fT1WjpMvHybfDtG0A+K7kpk62H
      UbU24YCFpIqxSgZV/SxOTt/rFOwDBzEjKR3HieQdFNyZhw+BFfz+E5TARRHr+G5g
      AuoiV1P9cm7tXMVD19lVyIstvWhqsDtCHWG4JIkwx99QXLbEYpkqoynL9sbZvCUy
      JBBWPQA9EGyfGs5dLcfGtDO353mmkAcpelqwOvKWTIbNXj9+//bEhUUEyQxSV5xV
      M3Tx595X2myfpqvdGFX6WbOLOC1LrmGxEY5da4tkijifVGVbdRFgrzhDGztXpWre
      HUNGsxUq3pMPPryCJqo20nIBBp40UBcjsIvf9TB6uhL/KmW7I2pe00DoTbyyQc3a
      YkyNJMS0jlNERrtjdq6HGo+BXs+SlQfJJTJSdtjIV03O/qjy12RcD8lI4t9b9LKV
      cz4ofjIR/Zw7MNgz/U8fe17qSu3htHVK1dQQ2x76O1FVh7w=
      =33h6
      -----END PGP MESSAGE-----

# bare metal agent to manage salt.  Could this work in a container?
jenkins:
  jnlp:
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQGMA3gT58un8irNAQv/XCeuzTudl/UUXpSm8ZpSQg7gKQzAnr1zpJ/h2tgSRkc2
      4yVT40yZH/ePDgmBYP2BFgHEBLQYbwLSh8UAxISKMEvBa52zWtOQLVeiJcCQVim7
      bdMuGi8OQIp3xrvORQ4TPGHidnLWl4MaBrfqI/N4WUNsronfGyrX2Pyyekuj66l9
      WR7R0NISwxnb6Th7uLwJeMHSRPQDdOq5erO5uT/VkNr4orxeyOHZY7nZUDIFC8sv
      k4NI07ABPzoD9ZRs9uU16MhG4EtCd0Ef/L3fXS7n3ntlD1cm5mJ4DXhT2DaYmo9x
      CdldTATqCs6WLEhPZ3VVBxC0PvagHP4QY1SiwLW7TqdBjFrkzxNPXwwwL7KeaHgB
      QqlG4Pi5YB7aaFmSzUtMBFng3dVdRkf947dkQMhH3Kb8vKDa4PB51zSYwHeb2XoS
      gbcy9d4ds3JjJ2fM3Nn2IC0GG2SRLmp39C5gRO6Q5itSjZXEgIvFQhSEfzqx6NeC
      MXRVQJKXUFg8N+U7YOhD0nIBQCCX4B1XiXVTn2ouRwhaZl6Hy+nwf+BtioGj5bQu
      cuwfSBsEJbkwB2eQCAYUpF5CTANgj3hpEZR/p3Qykra39xeYJE5AFoJSOav5QcX8
      gkvUDm71yBxQ/YzgHB+9wf5sRjafx4iXi2Pb1F0TGUgH4og=
      =h5II
      -----END PGP MESSAGE-----
