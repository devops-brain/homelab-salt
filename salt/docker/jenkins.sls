#!jinja|yaml



jenkins:
  docker_container.running:
    - binds:
      - /mnt/glusterfs/jenkins:/var/jenkins_home:rw
    - image: khoyi/jenkins:latest
    - auto_remove: True
    - detach: True
    - hostname: jenkins
    - ports:
      - 8080
      - 50000
    - publish_all_ports: True
    - restart_policy: always




#    - dns_search:
#      - foo1.domain.tld
#      - foo2.domain.tld
#    - dommainname: domain.tld
#    - network_mode: "host"
#    - port_bindings:
#      - 4505-4506:14505-14506
#      - 2123:2123/udp
#      - 8080
