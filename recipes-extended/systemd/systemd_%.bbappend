# Remove networking from the disabled list.
# Disable systemd-networkd.

SYSTEMD_DISABLED_SYSV_SERVICES = " \
  busybox-udhcpc \
  hwclock \
  nfsserver \
  nfscommon \
  syslog.busybox \
"

EXTRA_OECONF_append = "-Dnetworkd=false"

