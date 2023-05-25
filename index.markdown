---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---
<!-- markdownlint-disable MD041 -->

## Overview

The best way to navigate this site is to use the guides in the next section. If you are looking for a specific file, you can use the first link below. The second two links really need to be deleted, I just don't have the heart to do it yet.

- [Everything on the site all at once](everything.html)
- [Manual Guide](elves/all-links.html)
- [The old All Files list](assignments-guide/AllFiles.html)

## Guides

<section><ul>
{% for collection in site.collections %}
    {% if collection.label contains 'guide' %}
<li><a href="{{ collection.label }}">
    {{ collection.label }}</a></li>
    {% endif %}
{% endfor %}
</ul></section>

## Posts

<section><ul>
{% for product in site['posts'] %}
<li><a href="{{ product.url }}">
    {{ product.title }}</a></li>
{% endfor %}
</ul></section>
