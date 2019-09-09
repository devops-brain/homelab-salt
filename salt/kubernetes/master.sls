





kubernetes-master:
  pkg.installed:
    - pkgs:
      - kubectl
    - require:
      - file: /etc/apt/sources.list.d/saltstack.list:

