# homelab-salt
salt repo for my homelab, my personal experimentation lab.


### GPG
use the following site to setup gpg and make your own keys:
https://docs.saltstack.com/en/latest/ref/renderers/all/salt.renderers.gpg.html

import command
```bash
gpg --import homelab.gpg
```

encrypt value command
```bash
echo -n 'mysecret' | gpg --armor --batch --trust-model always --encrypt -r 'Khoyi Homelab'
```
