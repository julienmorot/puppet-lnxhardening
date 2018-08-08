# lnxhardening

#### Table of Contents

1. [Description](#description)
1. [Usage - Configuration options and additional functionality](#usage)

## Description

Simple module to standardize standard security in a base system. The goal is mostly to provide
a functionnal minimal standard for site specific cusomizations.

What it does :
  * Ensure AppArmor is enabled
  * Enabled auditd
  * Disable usb-storage loading
  * Securise kernel : network stack, limits and memory
  * Disable root ssh login
  * Add local and network motd
  * Enable security (and only these) updates, no distribution abstraction here

I've only tested this module with Ubuntu 16.04 and 18.04

## Usage

```
node 'hostname' {
    include lnxhardening
}
```

