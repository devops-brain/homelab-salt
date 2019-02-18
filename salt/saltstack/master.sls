#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


salt-master:
  pkg:
    - installed
  service.running:
    - enable: True

gpg-dependency-packages:
  pkg.installed:
    - pkgs:
      - python-gnupg
      - rng-tools

/etc/apt/sources.list.d/saltstack.list:
  file.managed:
    - user: root
    - group: root
    - contents: |
        deb http://repo.saltstack.com/apt/ubuntu/18.04/amd64/2018.3 bionic main

saltstack.list-key:
  cmd.run:
    - name:  "wget -O - https://repo.saltstack.com/apt/ubuntu/18.04/amd64/2018.3/SALTSTACK-GPG-KEY.pub | apt-key add -"
    - onchanges:
      - file: /etc/apt/sources.list.d/saltstack.list
