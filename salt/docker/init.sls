




python-pip:
  pkg.installed

docker-py:
  pip.removed:
    - name: docker-py
    - require:
      - pkg: python-pip

docker:
  pip.installed:
    - name: docker
    - require:
      - pkg: python-pip

docker.io:
  pkg:
    - installed
