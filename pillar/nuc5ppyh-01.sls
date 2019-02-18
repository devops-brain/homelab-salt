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

      hQGMA3gT58un8irNAQv8Cy2+t9zsiwISMjuWVUAjzExslvhI7iHdkBx7kF7dTj3Y
      ilHepODFMPR/T3gwcoHd3CHS6o/gdVqhTXyhlcYJ/Ku2VR3kjRo1Vn/JxAnD5cmn
      ivob2NuVuCmVwuWwX0jUQaCDtxz31CmqGceuReKcXWbuglfOL6B8EBh6aZ+N1cF+
      PgH5ME8WBMhy+ieoMzSI8GMNlmG/3awkasZOfhcQG64IxReBXVS3Bgd8heFcFHuF
      bzMFPDCU6OZr8YgMCH+onyPtX2cglmDEbhvYv66RyJjpPoHfOnphjBrW/MHbsJzz
      Ylydc7l7JYhU5EyE7oZRjiWPX7Q+nktXRiYKYFshIBI0+wKK3sQxPb56N/FhSZBk
      KMrC04B0DOJJM/TXwPZ0POgkR3eYKCjH6tzwyErvRWggWMhJQiq+5Ht8J8j+6+PG
      KDL0RyGsmH0LE7Hh7kTaK4OGf2KbKUSab7xr9wtCBudRj3bCzJO9mOP3v8tNB4BT
      jVnwwA46/4oYOdQ0ldfv0nIBQFoFH7VL6vn4tgQsEp9Mb2DKB50yCT+16y7rhj//
      XQk3cjkZrFzPs+q/agRwhpWegxPOy9SERr+KoXz98jqPRlnPdt/dlk6+/duR/0Po
      gpy+n73kwXm4KDfICk0Y3RT8ng42P4LTEZSUG9zx0PzOeDk=
      =bdqO
      -----END PGP MESSAGE-----
