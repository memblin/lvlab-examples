# Libvirt Labs - Examples

This is a project to provide example use-cases for [Libvirt Labs](https://github.com/memblin/tkc-lvlab-py)

Towards that end we first provide an annotated Lvlab.yml config file:

- [Lvlab.yml](./Lvlab.yml)

And we follow that example configuration file up with some Salt, Ansible,
and Terraform code to target machines created with lvlab using the example
configuraiton file.

## Requirements

These examples forgo DNS and try to handle host lookups via managed
`/etc/hosts` files. For working with these examples I add these entries to my
development machines `/etc/hosts` content:

```
# Local
192.168.122.12 salt.local salt
192.168.122.16 vault.local vault
192.168.122.18 nginx.local nginx
```

We attempt to render similar content on each machine deployed via lvlab using
cloud-init configurations. On some development machines, using the default
Libvirt network and resolver of 192.168.122.1 may allow machines to resolve
DNS records defined in the hosts `/etc/hosts` file.

## Other Helpful Information

The lvlab application status output is a limited at this time so I rely
on virt-manager and virsh to troubleshoot the machines created by lvlab if
I run into issues I can't solve directly with lvlab.

This is also how I get the IP form a machine I define using DHCP. In a futre
feature the DHCP assigned addresses should be reported on the status page
for any running machine that has the qemu-guest-agent available to report the
data.
