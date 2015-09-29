{% from "dhcpd/map.jinja" import dhcpd with context %}

include:
  - dhcpd

dhcpd.conf:
  file.managed:
    - name: {{ dhcpd.config }}
    - source: salt://dhcpd/files/dhcpd.conf
    - template: jinja
    - user: root
{% if 'BSD' in salt['grains.get']('os') %}
    - group: wheel
{% else %}
    - group: root
{% endif %}
    - mode: 644
    - watch_in:
      - service: dhcpd
