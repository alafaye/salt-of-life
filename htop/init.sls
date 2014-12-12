htop:
  pkg.installed

/.config/htop/htoprc:
  file:
    - managed
    - source: salt://htop/htoprc
    - user: {{usr.0}}
    - group: {{usr.0}}
    - mode: 644
