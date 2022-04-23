---
layout: page
title: {Topic}
---
These are the most popular _{topic}_ photos, found on Unsplash.

{% for item in site.topic %}
{% assign categories = item.category | join: "|" %}

{% if categories == "{topic}" %}
<div style="padding: 4px; float:left; width: 33%"><a title="{{title}}" href="{{ item.url }}"><img alt="{{title}}" src="{{ item.image }}"> {{ item.title }}</a></div>
{%endif%}
{% endfor %}
