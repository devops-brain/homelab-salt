

{% for host in salt['pillar.get']('gluster:hosts', ['192.168.7.199   odroid-hc2-01','192.168.7.198   odroid-hc2-02']) %}
{{ host }}:
  cmd.run:
    - cwd: /etc/
    - unless: cmd "grep {{host}} /etc/hosts"
    - shell: bash
    - name: echo "{{host}}" >> /etc/hosts
{% endfor %}


