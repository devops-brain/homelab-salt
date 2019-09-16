#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


swapoff:
  mount.unmounted:
    - device: /swap.img
    - persist: True

kubernetes-repo-key:
  cmd.run:
    - name: "wget -O - https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -"

/etc/apt/sources.list.d/kubernetes.list:
  file.managed:
    - create: True
    - makedirs: True
    - contents: |
        deb http://apt.kubernetes.io/ kubernetes-xenial main
    - require:
      - cmd: kubernetes-repo-key

dependency-packages:
  pkg.installed:
    - pkgs:
      - docker.io
      - apt-transport-https
      - kubelet
      - kubeadm
    - require:
      - file: /etc/apt/sources.list.d/kubernetes.list

docker.service:
  service.running:
    - enable: True
    - reload: False
    - watch:
      - pkg: dependency-packages

