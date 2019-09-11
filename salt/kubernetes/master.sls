#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


master-packages:
  pkg.installed:
    - pkgs:
      - kubectl
    - require:
      - file: /etc/apt/sources.list.d/kubernetes.list

user-kube-dir:
  file.directory:
    - name: /home/ubuntu/.kube
    - makedirs: True
    - user: ubuntu
    - group: ubuntu
    - mode: 755

kubernetes-init:
  cmd.run:
    - name: "kubeadm init --pod-network-cidr=10.0.0.0/10 >> /etc/kubernetes/cluster_initialized.txt"
    - require:
      - pkg: master-packages
    - unless: ls /etc/kubernetes/cluster_initialized.txt



# /etc/kubernetes/admin.conf /home/ubuntu/.kube/config/
# kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/a70459be0084506e4ec919aa1c114638878db11b/Documentation/kube-flannel.yml >> pod_network_setup.txt


