---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---

## Overview

If you are looking for a specific file, you can use the first link below.

- [All files on the site all at once](everything.html)

## Guides

If you are looking for a guide, you can use the links below.

If you want to see a blog post, [the Blog Posts page](posts-only.html).

Here are the guides on the site:

<section><ul>
{% for collection in site.collections %}
    {% if collection.label contains 'guide' %}
<li><a href="{{ collection.label }}">
    {{ collection.label }}</a></li>
    {% endif %}
{% endfor %}
</ul></section>
