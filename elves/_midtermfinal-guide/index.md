---
layout: page
date: 2023-06-26 09:44:57 -0700
fullPath: /home/ubuntu/Git/CloudNotes/Assignments/MidtermFinal/index.md
directoryPath: /home/ubuntu/Git/CloudNotes/Assignments/MidtermFinal
fileName: index.md
relativePath: /index.md
title: index
directoryName: MidtermFinal
category : midtermfinal-guide
---


## Overview

<section><ul>
{% for product in site['midtermfinal-guide'] %}
<li><a href="{{ product.url }}">
    {{ product.title }}</a></li>
{% endfor %}
</ul></section>

## Other Subject Collections

<section><ul>
{% for collection in site.collections %}
    {% if collection.label contains 'guide' %}
<li><a href="{{ collection.label }}">
    {{ collection.label }}</a></li>
    {% endif %}
{% endfor %}
</ul></section>
