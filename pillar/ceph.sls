#!jinja|yaml|gpg

{% set hostname = salt['grains.get']('id') %}


ceph:
  client:
    admin_key: |
      -----BEGIN PGP MESSAGE-----

      hQGMA2p9EgXH9hJQAQv+J/H8NaQaY4kBJSV/VPKXIATKGP9Odaz/Z+L20QXGNNhM
      o4UMj5iMYMsbW/WdYz+2a+n1Thfgpy3W3RxjUNxkuqFIYYob5h49iVosCV5fEoKi
      A9lU7uGJk979e4OL5Zojn9n4cmxp2hQdYH50N20V65di6W+naWu33F5kFSRz6fm5
      1CSqM0BuMlDY+EiP0KRnJGE4UyMNYz/6SmbEtdgMoEm8/EGVM1XB2rAD/g4TrMrp
      eoz3+QB8k/tnNbEvDb8chVSQRPNZUkauLzr8YA62/+QSZsF4Ydhy0OKgFMp/krJf
      stdWd/CVk2CUmVGPRunjGb4On16B1Rm7KNNWD8PMfS74++q1IhweAnHjrCzvVGyA
      OiUXYzOdinIGReeCKbBXLD+dh0wErE4K/PkUVN2zbRVbD/+VLGqPbZOh/DGHafcm
      YLxDQz4Axp3HZ72Th+qNc92j+PbpeeAjSJxJML86UXI3H10BivRLusvdDpwhC5o8
      2YOLtszoEEcSuNL5xlQ70mMBtOwh1Ki8Rm/5MbzVlrYjN2GXsSUtU+BtvqwIm7iw
      qXbgP8ogkHDTujeI/5zzkh7ii/C0Vcy52Lpzpe1aXE5afJoaXH+6GhWvfz0mTCcH
      Lbyvptk5ZzI1221KxXTcaBzsP9M=
      =UqOV
      -----END PGP MESSAGE-----
  fsid: |
    -----BEGIN PGP MESSAGE-----

    hQGMA2p9EgXH9hJQAQv+OHg051aNrCJqxynrrpWgWi58Re+6HfDTkGST4z9erRAe
    cyWvNLjcyrYCIHa/hE4l9YgEPFUnxaAnq3xgK6mvD2n8Kia7ATTBuejCdfNyhw2y
    oq9NfWCLHoPNGEAa37BfA/hBk24D12xjeA3+lLDU6nsysV1cMnYWQF8SycdEqEdL
    wugZkWTU+D5vKzl6HoPhhN3iyxVcAcEJi3fPzcQJ33NRoPyGuFIC4grsT4HmRvRV
    1wAlJz9isqcktBYpm895QFUcR7RhQehINRYaQm8zL5Fw4Ri9hfv0yXn17WrWV2N6
    PJZoDoRX3wNeL28Nr1+SK9R1G8iT9uLGL9FOh07ynK7u2AIXG3NZUB3Nbis01lK0
    nlFbGt9wa5OxtHljCJLvtKDGc/OneVUTr3iIIeEoGF7fOk0SkMbcJNXUigXKWz08
    ye1EAfSk2O8pG0P1tlJkRVUhV6MxhyvC66ddL0TOC8VFy+tdzb00pim9csVnGr8D
    vM3QpIZxkOCOoejDR8Ul0l8Be7Pn6lelB8tWFzCF79WekM7YaJuF50Qfm17DFcn2
    ylPlh6okF7NJ3g7Zxbm/4HOHbkroOy+owY38w9/qJrTlrQ/08Gcj81hV9G64TkPg
    P16uELQXYtEdfxzXave7UQ==
    =QbUc
    -----END PGP MESSAGE-----

