#!jinja|yaml



/var/jenkins_master-perms:
  file.directory:
    - name: /var/jenkins_master
    - makedirs: True
    - user: 1000
    - group: 1000
    - mode: 755

jenkins:
  docker_container.running:
    - binds:
      - /var/jenkins_master:/var/jenkins_home:rw
    - image: 'khoyi/jenkins:latest'
    - detach: True
    - network_mode: "host"




#    - dns_search:
#      - foo1.domain.tld
#      - foo2.domain.tld
#    - dommainname: domain.tld
#    - network_mode: "host"
#    - port_bindings:
#      - 4505-4506:14505-14506
#      - 2123:2123/udp
#      - 8080
