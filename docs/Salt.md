# Salt and Libvirt Labs

TODO: Setup a Salt environment in this repo

- Use salt-ssh to push base configs to machines
  - Salt Controller to salt.local
  - Salt Minion to vault.local and nginx.local

With controller and minions deployed we can pivot to using normal Salt calls
from the controller and minion machines.

## Lab setup

- Launch the lvlab-salt venv

```bash
source ./venvs/lvlab-salt/bin/activate
```

- Bring up the machines

```bash
lvlab up salt.local

lvlab up vault.local

lvlab up nginx.local
```

- Run salt-ssh commands against these machines

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