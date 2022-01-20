---
layout: page
title: Cities
---

{% for item in site.pages %}
{% assign categories = item.category | join: "|" %}

{% if categories == "city" %}
<li><a href="{{ item.url }}">{{ item.title }}</a>
{%endif%}
{% endfor %}
