{% from "dhcpd/map.jinja" import dhcpd with context %}

dhcpd.conf:
  file.managed:
    - name: {{ dhcpd.conf_dir }}/{{ dhcpd.conf_file }}.{{ dhcpd.conf_ext }}
    - source: {{ file_root }}{{ cfg_src }}
    - template: jinja
    - user: root
{% if 'BSD' in salt['grains.get']('os') %}
    - group: wheel
{% else %}
    - group: root
{% endif %}
    - mode: 644
{% if not salt['pillar.get']('dhcpd:testing') %}
    - watch_in:
      - service: {{ dhcpd.service }}
{% endif %}

{% if dhcpd.service_config is defined %}
service_config:
  file.managed:
    - name: {{ dhcpd.service_config }}
    - source: {{ file_root ~ 'service_config.' ~ salt['grains.get']('os_family') }}
    - makedirs: True
    - template: jinja
    - user: root
{% if 'BSD' in salt['grains.get']('os') %}
    - group: wheel
{% else %}
    - group: root
{% endif %}
    - mode: 644
{% if not salt['pillar.get']('dhcpd:testing') %}
    - watch_in:
      - service: {{ dhcpd.service }}
{% endif %}

{% endif %}
