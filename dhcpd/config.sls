{% from "dhcpd/map.jinja" import dhcpd with context %}

include:
  - dhcpd

dhcpd.conf:
  file.managed:
    - name: {{ dhcpd.config }}
    - source: {{ dhcpd.config_src }}
    # apparmor limits dhcpd to its config dir, so copy the file there
    - check_cmd: |
        sh -c '
        export TMPDIR=$(dirname "{{ dhcpd.config }}") ;
        TMPFILE="$(mktemp)" ;
        cp "$0" "${TMPFILE}" ;
        {{ dhcpd.binary }} -t -cf "${TMPFILE}" ;
        ERROR="$?" ;
        rm -f "${TMPFILE}" ;
        exit $ERROR '
    - template: jinja
    - user: {{ dhcpd.config_user }}
    - group: {{ dhcpd.config_group }}
    - mode: {{ dhcpd.config_mode }}
    - watch_in:
      - service: dhcpd

{% if dhcpd.service_config is defined %}

service_config:
  file.managed:
    - name: {{ dhcpd.service_config }}
    - source: {{ 'salt://dhcpd/files/service_config.' ~ salt['grains.get']('os_family') }}
    - makedirs: True
    - template: jinja
    - user: {{ dhcpd.config_user }}
    - group: {{ dhcpd.config_group }}
    - mode: {{ dhcpd.config_mode }}
    - watch_in:
      - service: dhcpd

{% endif %}
