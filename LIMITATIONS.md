# yum-ius Cookbook Limitations

## Platform Support

### Current Support

| Platform                 | Version | Architecture | Status                        |
|--------------------------|---------|--------------|-------------------------------|
| CentOS                   | 7       | x86_64       | Supported (EOL June 2024)     |
| Red Hat Enterprise Linux | 7       | x86_64       | Supported (ELTS available)    |
| Oracle Linux             | 7       | x86_64       | Supported                     |
| Scientific Linux         | 7       | x86_64       | Supported (EOL December 2020) |

### Not Supported

| Platform                          | Version | Reason                                  |
|-----------------------------------|---------|-----------------------------------------|
| RHEL/CentOS/AlmaLinux/Rocky Linux | 8+      | IUS does not build packages for RHEL 8+ |
| Amazon Linux                      | 2, 2023 | Not compatible with IUS packages        |
| Fedora                            | Any     | Not a RHEL clone                        |

## IUS Project Status

### RHEL 8+ and Application Streams

The IUS Community Project **does not provide packages for RHEL 8 or newer**.

From the IUS FAQ:

> "RHEL 8 introduced Application Streams (also known as modularity). This gives Red Hat a way to provide optional newer versions of software. EPEL plans to give package maintainers the ability to offer additional streams that Red Hat doesn't offer. If this goes according to plan, IUS simply won't be necessary in RHEL 8 going forward."

**Implications:**
- This cookbook is effectively in maintenance mode for legacy RHEL 7 systems
- Users on RHEL 8+ should use Application Streams instead of IUS
- No new platforms (AlmaLinux 8/9, Rocky Linux 8/9) can be added

### Repository Availability

IUS repositories are available at `https://repo.ius.io/` for:
- EL 7 (RHEL 7, CentOS 7, Oracle Linux 7, Scientific Linux 7)

Repositories include:
- `ius` - Main repository with newer package versions
- `ius-debuginfo` - Debug symbols
- `ius-source` - Source RPMs
- `ius-testing` - Packages awaiting promotion
- `ius-archive` - Retired packages

## Package Installation Requirements

### EPEL Dependency

IUS packages require EPEL to be enabled first. This cookbook depends on the `yum-epel` cookbook to satisfy this requirement.

### GPG Keys

IUS uses GPG keys per major RHEL version:
- `https://repo.ius.io/RPM-GPG-KEY-IUS-7` for EL 7

## Known Limitations

1. **No RHEL 8+ Support**: IUS does not and will not support RHEL 8 or newer
2. **CentOS 7 EOL**: CentOS 7 reached End-of-Life in June 2024
3. **UBI Incompatibility**: IUS packages may fail to install in UBI containers due to missing dependencies
4. **Amazon Linux Incompatibility**: IUS packages are not compatible with Amazon Linux variants

## Migration Path for RHEL 8+ Users

Users migrating from RHEL/CentOS 7 to RHEL 8+ should:

1. Use **Application Streams** for newer software versions:
   ```bash
   dnf module enable nodejs:18
   dnf install nodejs
   ```

2. Use **EPEL** for additional packages not in base repositories

3. Use **COPR** or custom repositories for software not available elsewhere

## References

- IUS Project: https://ius.io/
- IUS FAQ: https://ius.io/faq
- RHEL Application Streams: https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/installing_managing_and_removing_user-space_components/introduction-to-modules
