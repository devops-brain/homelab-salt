#!jinja|yaml|gpg

{% set hostname = salt['grains.get']('id') %}


docker:
  jnlp:
    secret: "replace-me"

# bare metal agent to manage salt.  Could this work in a container?
jenkins:
  jnlp:
    secret: "replace-me"