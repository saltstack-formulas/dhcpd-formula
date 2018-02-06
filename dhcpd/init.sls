{% from "dhcpd/map.jinja" import dhcpd with context %}

dhcpd:
  pkg.installed:
    - name: {{ dhcpd.server }}
{% if not salt['pillar.get']('dhcpd:testing') %}
  service.running:
    - name: {{ dhcpd.service }}
    - enable: True
    - require:
      - pkg: dhcpd
{% endif %}
