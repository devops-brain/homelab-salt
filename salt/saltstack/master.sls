#!jinja|yaml

{% set hostname = salt['grains.get']('id') %}


salt-master:
  pkg:
    - installed
  service.running:
    - enable: True

## TODO:  setup automatic pull and update cycle.  bury in cron or spend the extra effort to expose in jenkins?
