




python3-pip:
  pkg.installed:
  - reload_modules: True

docker-py:
  pip.removed:
    - name: docker-py
    - require:
      - pkg: python-pip

docker:
  pip.installed:
    - name: docker
    - require:
      - pkg: python3-pip

docker.io:
  pkg:
    - installed
