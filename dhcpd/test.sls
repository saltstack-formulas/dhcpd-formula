# Used only for testing. This config will disable normal startup for dhcpd and run it
# in config test mode only (dhcpd -t).
#
# Don't use it on a real system as it will clobber your dhcpd startup sequence.
# If that happens, delete the file "/etc/systemd/system/dhcpd.service" and then
# run "systemctl daemon-reload; systemctl restart dhcpd"
#
{% from "dhcpd/map.jinja" import dhcpd with context %}

{% if salt['pillar.get']('dhcpd:testing') %}
dhcpd -cf {{ dhcpd.config }} -t:
  cmd.run:
    - require:
      - pkg: {{ dhcpd.server }}
{% endif %}

{% if false %}
/etc/systemd/system/{{ dhcpd.service }}.service:
  cmd.run:
    - creates: /etc/systemd/system/{{ dhcpd.service }}.service
    - name: |
        cp /lib/systemd/system/{{ dhcpd.service }}.service /etc/systemd/system/{{ dhcpd.service }}.service
        sed -i -e 's/\(^ExecStart.*\)$/\1 -t/' /etc/systemd/system/{{ dhcpd.service }}.service
        sed -i -e '/\[Service\]/ a RemainAfterExit=yes' /etc/systemd/system/{{ dhcpd.service }}.service
        systemctl daemon-reload
    - require_in:
      - service: {{ dhcpd.service }}
{% endif %}
