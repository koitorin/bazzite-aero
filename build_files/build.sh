#!/bin/bash

set -ouex pipefail

### Install packages
dnf5 install -y konsole

# Install aerothemeplasma
/ctx/10-aero-theme.sh
/ctx/11-fonts.sh

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File
# systemctl enable podman.socket
