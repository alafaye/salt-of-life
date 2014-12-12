ntp:
  pkg.installed
  service:
    - running
    - name: ntp
    - require: pkg
  watch:
    - file: ntpd_conf
ntpd_conf:
  file.managed:
    - name: /etc/ntp.conf
    - source: salt://ntp/ntp.conf
    - require:
      - pkg: ntp
