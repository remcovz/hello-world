---
layout: page
title: Test Page
---

Just a test.

An included Gist from GitHub:

{% gist remcovz/1af7fde14dad30b59b17 %}

Test with files in _data:

Members:

<ul>
{% for member in site.data.members %}
  <li>
    <a href="https://github.com/{{ member.github }}">
      {{ member.name }}
    </a>
  </li>
{% endfor %}
</ul>

Organizations:

<ul>
{% for org in site.data.orgs %}
  <li>
    <a href="https://github.com/{{ org[1].username }}">
      {{ org[1].name }}
    </a>
    ({{ org[1].members | size }} members: {% for member in org[1].members %}<a href="https://github.com/{{ member.github}}">{{ member.name }}</a> {% endfor %})
  </li>
{% endfor %}
</ul>
