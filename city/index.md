---
layout: page
title: Cities
---

<div class="posts">
  {% for post in paginator.pages %}
  <div class="post">
    <h1 class="post-title"><a href="{{ post.url }}">{{ post.title }}</a></h1>
    <span class="post-date">{{ post.date | date_to_string }}</span>
    {{ post.excerpt }}
    {% if post.image %}
    <img src="{{post.image}}">
    {% endif %}
    <hr>
  </div>
  {% endfor %}
</div>

