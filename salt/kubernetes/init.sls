



saltstack-repo-key:
  cmd.run:
    - name: "wget -O - https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -"

/etc/apt/sources.list.d/kubernetes.list:
  file.managed:
    - create: True
    - makedirs: True
    - contents: |
        deb http://apt.kubernetes.io/ kubernetes-xenial main
    - require:
      - cmd: saltstack-repo-key

kubernetes-dependencies:
  pkg.installed:
    - pkgs:
      - apt-transport-https
      - kubelet
      - kubeadm
      - docker.io
    - require:
      - file: /etc/apt/sources.list.d/kubernetes.list:

