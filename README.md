# homelab-salt
salt repo for my homelab, my personal experimentation lab.


### GPG
import command
```bash
gpg --import HomeLab.gpg
```

encrypt value command
```bash
echo -n 'mysecret' | gpg --armor --encrypt -r 'devops-brain HomeLab'
```
