tmux:
  pkg.installed

.tmux.conf:
  file:
    - managed
    - source: salt://tmux/tmux.conf
    - user: {{usr.0}}
    - group: {{usr.0}}
    - mode: 644
