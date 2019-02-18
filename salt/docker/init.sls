




python2.7-pip:
  pkg.installed:
  - reload_modules: True

docker-py:
  pip.removed:
    - name: docker-py
    - require:
      - pkg: python2.7-pip

docker:
  pip.installed:
    - name: docker
    - require:
      - pkg: python2.7-pip

docker.io:
  pkg:
    - installed
