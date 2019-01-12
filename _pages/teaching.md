---
layout: page
permalink: /teaching/
title: teaching
description: Materials for courses you taught. Replace this text with your description.
---

For now, this page is assumed to be a static description of your courses. You can convert it to a collection similar to `_projects/` so that you can have a dedicated page for each course.

Organize your courses by years, topics, or universities, however you like!

{% for course in site.teaching %}

{% if course.redirect %}
<div class="project">
    <div class="thumbnail">
        <a href="{{ course.redirect }}" target="_blank">
        {% if course.img %}
        <img class="thumbnail" src="{{ course.img | prepend: site.baseurl | prepend: site.url }}"/>
        {% else %}
        <div class="thumbnail blankbox"></div>
        {% endif %}    
        <span>
            <h1>{{ course.title }}</h1>
            <br/>
            <p>{{ course.description }}</p>
        </span>
        </a>
    </div>
</div>
{% else %}

<div class="project ">
    <div class="thumbnail">
        <a href="{{ course.url | prepend: site.baseurl | prepend: site.url }}">
        {% if course.img %}
        <img class="thumbnail" src="{{ course.img | prepend: site.baseurl | prepend: site.url }}"/>
        {% else %}
        <div class="thumbnail blankbox"></div>
        {% endif %}    
        <span>
            <h1>{{ course.title }}</h1>
            <br/>
            <p>{{ course.description }}</p>
        </span>
        </a>
    </div>
</div>

{% endif %}

{% endfor %}

