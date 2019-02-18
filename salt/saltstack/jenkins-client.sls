#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


# setup jenkins agent on saltmaster
jenkins-workdir:
  file.directory:
    - name: /var/jenkins
    - user: root
    - group: root
    - mode: '0777'
    - makedirs: True

jenkins-installer:
  pkg.installed:
    - name: openjdk-11-jre-headless
  file.managed:
    - name: /usr/local/bin/agent.jar
    - source: {{salt['pillar.get']('jenkins:master_url')}}/jnlpJars/agent.jar
    - user: root
    - group: root
    - mode: '0755'
    - skip_verify: True
    - watch_in:
      - service: jenkins-agent.service

jenkins-agent.service:
  file.managed:
    - name: /etc/systemd/system/jenkins-agent.service
    - user: root
    - group: root
    - contents: |
        [Unit]
        Description=jenkins-agent
        After=network.target auditd.service

        [Service]
        Type=notify
        Restart=always
        WorkingDirectory=/var/jenkins
        User=root
        Group=root
        ExecStatPre=sleep 10m
        ExecStart=java -jar /usr/local/bin/agent.jar -jnlpUrl {{salt['pillar.get']('jenkins:master_url')}}/computer/{{hostname}}/slave-agent.jnlp -secret {{salt['pillar.get']('docker:jnlp:secret', '')}} -workDir "/var/jenkins"

        [Install]
        WantedBy=multi-user.target
        Alais=jenkins-agent.service
  service.running:
    - enable: True


