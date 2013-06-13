dhcpd:
  pkg.installed:
    {% if grains['os_family'] == 'Debian' %}
    - name: isc-dhcp-server
    {% else %}
    - name: dhcp
  service.running:
    - enable: True
    - require:
      - pkg: dhcpd
  file.managed:
    - name: /etc/dhcpd.conf
    - source: salt://dhcpd/files/dhcpd.conf
    - user: root
    - group: root
    - mode: 644
