#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


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

apt-transport-https:
   pkg:
    - installed

docker.io:
   pkg:
    - installed

kubelet:
  pkg.installed:
    - pkgs:
      - kubelet
      - kubeadm
    - require:
      - file: /etc/apt/sources.list.d/kubernetes.list:

#kubeadm:
#  pkg.installed:
#    - require:
#      - file: /etc/apt/sources.list.d/kubernetes.list:
