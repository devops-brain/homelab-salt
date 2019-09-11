





master-packages:
  pkg.installed:
    - pkgs:
      - kubectl
    - require:
      - file: /etc/apt/sources.list.d/kubernetes.list

