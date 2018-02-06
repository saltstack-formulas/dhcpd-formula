{% from "dhcpd/map.jinja" import dhcpd with context %}

dhcpd:
  pkg.installed:
    - name: {{ dhcpd.package }}
