#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


## make conditional to allow ubuntu or mac
dev-packages:
  pkg.installed:
    - pkgs:
      - snapd
      - virtualbox
      - vagrant
      - docker
      - docker.io

pycharm.installed:
  cmd.run:
    - name: snap install pycharm-professional --classic
    - unless: which pycharm-professional
    - require:
       - pkg: dev-packages

intellij.installed:
  cmd.run:
    - name: snap install intellij-idea-ultimate --classic
    - unless: which ntellij-idea-ultimate
    - require:
       - pkg: dev-packages




