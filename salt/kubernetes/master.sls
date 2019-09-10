





kubernetes-master:
  pkg.installed:
    - pkgs:
      - kubectl
    - require:
      - sls: kubernetes:

