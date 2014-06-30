{% extends 'layout/base.html.swig' %}

{% block content %}

  <div class="container">
    <div class="row">

      <div class="col-md-3  col-sm-12">
        <div class="sidebar  affix-top">
          <h4 class="sidebar-heading">Choose your weapon</h4>
          <nav>
            <ul class="list-unstyled  nav  sidebar-nav">
              {% for item in data.functions %}
              {% if item.alias == false and item.access != "private" %}
                <li><a href="#{{ item.name }}">{{ item.name }}</a></li>
              {% endif %}
              {% endfor %}
            </ul>
          </nav>
        </div>
      </div>

      <div class="col-md-9  col-sm-12">

      {% for item in data.functions %}
        {% include 'includes/item.html.swig' with item %}
      {% endfor %}

      </div>
    </div>
  </div>

{% endblock %}