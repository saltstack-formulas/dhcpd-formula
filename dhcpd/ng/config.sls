{% from "dhcpd/map.jinja" import dhcpd with context %}

{% set file_root = 'salt://dhcpd/ng/files/' %}
{% set cfg_src = 'dhcpd.conf.jinja' %}

{% include "dhcpd/cfgfile.sls" %}
