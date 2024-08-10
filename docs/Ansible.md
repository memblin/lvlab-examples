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
# Ping the minions
salt-ssh \* test.ping

# Show pillar.items
salt-ssh salt.local pillar.items

# Show state.show_top
salt-ssh salt.local state.show_top

# Run a highstate in test mode
salt-ssh salt.local state.highstate test=true

# Run for effect
salt-ssh salt.local state.highstate

# Apply a specific state
salt-ssh salt.local state.apply common
```