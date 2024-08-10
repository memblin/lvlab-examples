# Python Virtual Environments

To prevent conflicts in the system or user specific Python environments we
recommend using Python virtual environments when installing utilities needed
to run these examples.

## Salt

TODO: Salt venv install directions

```bash
# Create a venv for salt, adjust target path as desired. The .gitignore in
# this repo ignores ./venvs if you want to keep them in them in the repo
# directory.
python3 -m venv ./venvs/lvlab-salt

# Activate the venv, you'll do this anytime you want to use it
source ./venvs/lvlab-salt/bin/activate

# Upgrade pip in the venv
pip install --upgrade pip

# Install salt 3007.1 (Latest)
pip install salt==3007.1

# You should now have access to the Salt commands and libraries when the
# lvlab-salt virtual environment is active.

# To exit the virtual environment
deactivate
```

## Ansible

TODO: Ansible venv install directions

```bash
# Create a venv for ansible, adjust target path as desired. The .gitignore in
# this repo ignores ./venvs if you want to keep them in them in the repo
# directory.
python3 -m venv ./venvs/lvlab-ansible

# Activate the venv, you'll do this anytime you want to use it
source ./venvs/lvlab-ansible/bin/activate

# Upgrade pip in the venv
pip install --upgrade pip

# Install ansible-core 2.17.2 (Latest)
pip install ansible-core==2.17.2

# To exit the virtual environment
deactivate
```
