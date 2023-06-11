---
layout: default
---

# Everything All at Once

Here you can find links to all the files in the site.

{% for collection in site.collections %}
<h2> {{ collection.label }} </h2>

<section><ul>
    {% for product in site[collection.label] %}
<li><a href="{{ product.url }}">
    {{ product.title }}</a></li>
    {% endfor %}
</ul></section>
{% endfor %}

## Projects

- [Android Guide](android-guide)
- [Cloude Guide](cloud-guide)
- [Css Guide](css-guide)
- [CSharp Guide](csharp-guide)
- [Database Guide](database-guide)
- [Mobile Guide](mobile-guide)
- [Design Guide](design-guide)
- [Assignments](assignments/all-links.html)
