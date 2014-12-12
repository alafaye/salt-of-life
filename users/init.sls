{% for user in salt://users/users.list %}
user.present:
  - fullname: {{user}}
  - shell: /bin/zsh
  - home: /home/{{user}}

{% endfor %}
