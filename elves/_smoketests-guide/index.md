---
layout: page
date: 2023-06-26 11:05:52 -0700
fullPath: /home/ubuntu/Git/CloudNotes/Assignments/SmokeTests/index.md
directoryPath: /home/ubuntu/Git/CloudNotes/Assignments/SmokeTests
fileName: index.md
relativePath: /index.md
title: index
directoryName: SmokeTests
category : smoketests-guide
---

## Overview

<section><ul>
{% for product in site['smoketests-guide'] %}
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
