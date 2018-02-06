# Used only for testing.

{% from "dhcpd/map.jinja" import dhcpd with context %}

{% if salt['pillar.get']('dhcpd:testing') %}
dhcpd -cf {{ dhcpd.config }} -t:
  cmd.run:
    - require:
      - pkg: {{ dhcpd.server }}
{% endif %}
