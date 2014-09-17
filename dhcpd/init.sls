{% from "dhcpd/map.jinja" import dhcpd with context %}

dhcpd:
  pkg.installed:
    - name: {{ dhcpd.server }}
  service.running:
    - name: {{ dhcpd.service }}
    - enable: True
    - require:
      - pkg: dhcpd
  file.managed:
    - name: {{ dhcpd.config }}
    - source: salt://dhcpd/files/dhcpd.conf
    - template: jinja
    - user: root
    - group: root
    - mode: 644
