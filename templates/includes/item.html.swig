{% if item.alias == false %}
<section class="function" id="{{ item.name }}">
  <h2 class="function-name"><code>{{ item.name }}</code>

  {% if item.aliased.length > 0 %}
    <span class="sassdoc__item-alias">, aliased as 
    {% for _alias in item.aliased %}
      <a href="#{{ item.type }}-{{ _alias }}"><code>{{ _alias }}</code></a>
    {% endfor %}
    </span>

  {% endif %}
  </h2>

  {% set parameters_string = '' %}
  {% for parameter in item.parameters %}
    {% set value = '$' + parameter.name %}

    {% if parameter.default %}
      {% set value = value + ': ' + parameter.default %}
    {% endif %}

    {% if parameter.type | lower === "arglist" %}
      {% set value = value + '...' %}
    {% endif %}

    {% if loop.first %}
      {% set parameters_string = value %}
    {% else %}
      {% set parameters_string = parameters_string + ', ' + value %}
    {% endif %}
  {% endfor %}

  <div class="function-code  clearfix">
    <pre class="pull-left">@{{ item.type }} {{ item.name }} ({{ parameters_string }}) { ... }</pre>
    <a href="https://github.com/Team-Sass/SassyLists/blob/master/stylesheets/SassyLists/_{{ item.name | replace('sl-', '') }}.scss" class="function-link  pull-right">View source</a>
  </div>

  <p class="function-role">{{ item.description | markdown }}</p>

  <h3 class="function-subheading">Parameters</h3>
  {% if item.parameters.length > 0 %}
    <table class="table  function-arguments">
      <thead>
        <tr>
          <th>Name</th>
          <th>Type</th>
          <th>Default value</th>
          <th>Description</th>
        </tr>
      </thead>
      <tbody>
        {% for parameter in item.parameters %}
          <tr class="sassdoc__item-parameter">
            <td data-small="name"><code>${{ parameter.name }}</code></td>
            <td data-small="type">{% if parameter.type == "*" %}Any{% else %}<code>{{ parameter.type }}</code>{% endif %}</td>
            <td data-small="default">{% if parameter.default %}{{ parameter.default }}{% else %}&mdash;{% endif %}</td>
            <td data-small="desc">{% if parameter.description %}{{ parameter.description }}{% else %}&mdash;{% endif %}</td>
          </tr>
        {% endfor %}
      </tbody>
    </table>
  {% else %}
    <p>None.</p>
  {% endif %}

  {% if item.returns.type %}
    <h3 class="function-return">Return</h3>
    <ul class="list-unstyled">
      <li>{% if item.returns.description %}{{ item.returns.description }}: {% endif %}<code>{{ item.returns.type | join('|') }}</code></li>
    </ul>
  {% endif %}

  {% if item.throws.length > 0 %}
    <h3 class="function-errors">Throws</h3>
    {% for _throw in item.throws %}
      {% if loop.first %}<ul class="list-unstyled">{% endif %}
      <li>{{ _throw | markdown }}</li>
      {% if loop.last %}</ul>{% endif %}
    {% endfor %}
  {% endif %}

  {% if item.requires.length > 0 %}
    <h3 class="function-dependence">Requires</h3>
    {% for require in item.requires %}
      {% if loop.first %}<ul class="list-unstyled">{% endif %}
      <li><a href="#{{ require.item }}"><code>{{ require.item }}</code></a></li>
      {% if loop.last %}</ul>{% endif %}
    {% endfor %}
  {% endif %}
</section>
{% endif %}