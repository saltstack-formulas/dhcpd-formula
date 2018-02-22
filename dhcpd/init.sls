{% from "dhcpd/map.jinja" import dhcpd with context %}

dhcpd:
{% if dhcpd.server is defined %}
  pkg.installed:
    - name: {{ dhcpd.server }}
{% endif %}
{% if dhcpd.enable is sameas true %}
  service.running:
    - name: {{ dhcpd.service }}
    - enable: True
  {% if dhcpd.server is defined %}
    - require:
      - pkg: {{ dhcpd.server }}
  {% endif %}
  {% if dhcpd.config is defined %}
    - require:
      - file: {{ dhcpd.config }}
  {% endif %}
{% else %}
  service.dead:
    - name: {{ dhcpd.service }}
    - enable: False
{% endif %}
