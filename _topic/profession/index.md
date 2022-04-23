---
layout: page
title: Profession
---
These are the most popular _profession_ photos, found on Unsplash.

{% for item in site.topic %}
{% assign categories = item.category | join: "|" %}

{% if categories == "profession" %}
<div style="padding: 4px; float:left; width: 33%"><a title="{{title}}" href="{{ item.url }}"><img alt="{{title}}" src="{{ item.image }}"> {{ item.title }}</a></div>
{%endif%}
{% endfor %}
