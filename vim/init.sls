vim:
  pkg.installed

{% for usr in ['root', '/root/'], [grains['main_user'], '/home/%s/' % grains['main_user']] %}
{{usr.1}}.vimrc:
  file:
    - managed
    - source: salt://vim/vimrc
    - user: {{usr.0}}
    - group: {{usr.0}}
    - mode: 644

{% endfor %}
