# Used only for testing.

{% from "dhcpd/map.jinja" import dhcpd with context %}

{% if salt['pillar.get']('dhcpd:testing') %}
dhcpd -cf {{ dhcpd.conf_dir }}/{{ dhcpd.conf_file }}.{{ dhcpd.conf_ext }} -t:
  cmd.run:
    - require:
      - pkg: {{ dhcpd.package }}
      - file: {{ dhcpd.conf_dir }}/{{ dhcpd.conf_file }}.{{ dhcpd.conf_ext }}
{% endif %}
