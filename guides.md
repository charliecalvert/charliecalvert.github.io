---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---

## Overview

If you are looking for a specific file, you can use the first link below. The second two links really need to be deleted, I just don't have the heart to do it yet.

- [All files on the site all at once](everything.html)

<section><ul>
{% for collection in site.collections %}
    {% if collection.label contains 'guide' %}
<li><a href="{{ collection.label }}">
    {{ collection.label }}</a></li>
    {% endif %}
{% endfor %}
</ul></section>
