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
    - name: /home/ubuntu/.kube/config
    - makedirs: True
    - user: ubuntu
    - group: ubuntu
    - mode: 755

kubernetes-init:
  cmd.run:
    - name: "kubeadm init --pod-network-cidr=10.0.0.0/10 >> /etc/kubernetes/cluster_initialized.txt"
    - require:
      - service: docker.service
    - unless: ls /etc/kubernetes/admin.conf

# setup requisite to allow clean ordering
/home/ubuntu/.kube/config/admin.conf:
  file.managed:
    - source: /etc/kubernetes/admin.conf
    - user: ubuntu
    - group: ubuntu
    - mode: 644

# - kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/a70459be0084506e4ec919aa1c114638878db11b/Documentation/kube-flannel.yml >> pod_network_setup.txt

# kubectl apply -f https://docs.projectcalico.org/v3.5/getting-started/kubernetes/installation/hosted/etcd.yaml
# kubectl apply -f https://docs.projectcalico.org/v3.5/getting-started/kubernetes/installation/hosted/calico.yaml


