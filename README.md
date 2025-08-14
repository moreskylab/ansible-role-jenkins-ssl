# ansible-role-jenkins
ansible jenkins role

```bash
ansible-galaxy role install moreskylab.jenkins-ssl
```

```yaml
---
- hosts: localhost
  become: true
  become_method: sudo
  vars:
    - jenkins_domain: "subdomain.mydomain.com"
  vars_files:
    - vars/vault.yml
  roles:
    - moreskylab.jenkins-ssl
```
