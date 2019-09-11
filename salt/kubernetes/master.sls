





kubectl:
  pkg.installed:
    - pkgs:
      - kubectl
    - require:
      - sls: kubernetes

