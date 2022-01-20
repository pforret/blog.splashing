---
layout: page
title: Countries
---

{% for item in site.pages %}
{% assign categories = item.category | join: "|" %}

{% if categories == "country" %}
<div style="float:left; width: 50%"><a href="{{ item.url }}"><img src="{{ item.image }}"><br />{{ item.title }}</a></div>
{%endif%}
{% endfor %}
