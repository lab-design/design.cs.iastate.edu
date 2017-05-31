---
layout: page
title: Grants
permalink: /grants/
---

{% assign grants_list = {site.data.grants | sort: 'date'} %}

<div id="grants-list" role="tablist" aria-multiselectable="true">
  {% for grant in grants_list %}
    {% include grants_page/grant_card.html grant=grant %}
  {% endfor %}
</div>