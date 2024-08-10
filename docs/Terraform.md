# Terraform and Libvirt Labs

Terraform doesn't normally act directly on virtual machines but it can
configure several services that are deployed to virtual machines.

Some self-hosted services that benefit from Terraform configuration:

 - The HashiCorp Platform: Boundary, Consul, Nomad, Vault
 - Grafana
 - Active Directory
 - VMWare vSphere

## Terraform for Vault

- TODO: Setup terraform IaC in this repo
  - Manage vault server config
  - Create root-ca and intermediate-ca for the environment
