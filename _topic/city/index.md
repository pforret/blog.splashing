---
layout: page
title: City
---
These are the most popular _city_ photos, found on Unsplash.

{% for item in site.topic %}
{% assign categories = item.category | join: "|" %}

{% if categories == "city" %}
<div style="padding: 4px; float:left; width: 33%"><a title="{{title}}" href="{{ item.url }}"><img alt="{{title}}" src="{{ item.image }}"> {{ item.title }}</a></div>
{%endif%}
{% endfor %}
