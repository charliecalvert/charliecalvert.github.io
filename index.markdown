---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---
<!-- markdownlint-disable MD041 -->

- [Android Guide](android-guide)
- [Cloude Guide](cloud-guide)
- [Css Guide](css-guide)
- [CSharp Guide](csharp-guide)
- [Database Guide](database-guide)
- [Mobile Guide](mobile-guide)
- [Design Guide](design-guide)
- [Assignments](assignments/all-links.html)

## Guides

<ul>
{% for collection in site.collections %}
<li><a href="{{ collection.label }}">
    {{ collection.label }}
{% endfor %}

<h2>Turtle Graphics</h2>

{% for collection in site.collections %}
<h1> {{ collection.label }} </h1>

    {% for product in site[collection.label] %}
<a href="{{ product.url }}">
    {{ product.title }}
    {% endfor %}
{% endfor %}
