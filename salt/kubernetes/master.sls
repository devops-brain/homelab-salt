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

calico-etcd:
  cmd.run:
    - name: "kubectl apply -f https://docs.projectcalico.org/v3.5/getting-started/kubernetes/installation/hosted/etcd.yaml > /etc/kubernetes/calico_initialized.txt"
    - onchanges:
      - cmd: kubernetes-init

calico-calico:
  cmd.run:
    - name: "kubectl apply -f https://docs.projectcalico.org/v3.5/getting-started/kubernetes/installation/hosted/calico.yaml >> /etc/kubernetes/calico_initialized.txt"
    - onchanges:
      - cmd: calico-etcd

# https://www.digitalocean.com/community/tutorials/how-to-create-a-kubernetes-cluster-using-kubeadm-on-ubuntu-18-04
# https://medium.com/better-programming/build-your-own-multi-node-kubernetes-cluster-with-monitoring-346a7e2ef6e2
