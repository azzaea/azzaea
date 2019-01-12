---
layout: page
permalink: /teaching/
title: teaching
description: Materials for courses you taught. Replace this text with your description.
---

Organize your courses by years, topics, or universities, however you like!

I developed and taught the following undergraduate *Control* courses at the [University of Khartoum](https://www.uofk.edu/index.php/en/): 

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

Additionally, I taught in a few workshops on Bioinformatics related topics:
