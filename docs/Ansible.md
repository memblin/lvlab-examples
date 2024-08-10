## Ansible and Libvirt Labs

- TODO: Setup an Ansible environment in this repo
  - Deploy ansible in a VENV
  - Use ansible to push base configs to machines
    - deploy vault server
    - deploy nginx server

## Lab setup

- Launch the lvlab-ansible venv

```bash
source ./venvs/lvlab-ansible/bin/activate
```

- Bring up the machines

```bash
lvlab up vault.local

lvlab up nginx.local
```

- Run ansible adhoc commands and playbooks against these machines

```bash
# Adhoc commands
ansible all -m ansible.builtin.shell -a 'hostname -f'

# Playbooks
ansible-playbook 
```