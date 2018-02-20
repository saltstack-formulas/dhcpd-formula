{% from "dhcpd/map.jinja" import dhcpd with context %}

dhcpd:
  service.running:
    - name: {{ dhcpd.service }}
    - enable: True
    - require:
      - pkg: {{ dhcpd.package }}
      - file: {{ dhcpd.conf_dir }}/{{ dhcpd.conf_file }}.{{ dhcpd.conf_ext }}
