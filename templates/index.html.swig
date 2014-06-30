{% extends 'layout/base.html.swig' %}

{% block content %}

<div class="jumbotron">
    <div class="container">
        <h1>SassyLists <small>{{ version }}</small></h1>
        <p>SassyLists is a toolbox providing you all the functions you need to manipulate your <a href="http://sass-lang.com">Sass</a> lists.</p>
        <p><a class="btn btn-info" href="/documentation/">Read documentation</a> <a class="btn btn-warning" href="https://github.com/Team-Sass/SassyLists/blob/master/CHANGELOG.md">Read changelog</a></p>
    </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-md-12"> 

      <section class="row">
        <div class="col-md-6">
          <h2>What's the point?</h2>
          <p>Sass lists is a very powerful features. Think of a world where JavaScript wouldn't have any array! Unfortunately, Sass doesn't provide much built-in tools to deal with lists, especially complicated ones.</p>
          <p>Here comes SassyLists with about twenty functions to make it simple as a pie to deal with your Sass lists. Try it!</p>
        </div>

        <div class="col-md-6">
          <h2>How does it work?</h2>
          <p>SassyLists is pure Sass. No magic Ruby behind it or anything. All functions are built with Sass. Thus, some functions can be a little slow depending on what you're doing with it.</p>
          <p>In any case, feel free to have a sneak peek at the code and improve it!</p>
        </div>
      </section>

      <section class="row">
        <div class="col-md-6">
          <h2>How to use it?</h2>
          <ul class="list-unstyled">
              <li><code>gem install SassyLists</code></li>
          </ul>
        </div>

        <div class="col-md-6">
          <h2>Requirements</h2>
          <ul class="list-unstyled">
            <li><a href="http://sass-lang.com/">Sass</a> ~> 3.3</li>
          </ul>
        </div>
      </section>

      <section>
        <h2>What's in there?</h2>

        <table class="table  table-home">
          <thead>
            <tr>
                <th>Name</th>
                <th>Point</th>
                <th>Aliased as</th>
            </tr>
          </thead>
          <tbody>
            {% for item in data.functions %}
              {% if item.alias == false and item.access != "private" %}
                <tr>
                  <td data-small="name"><a href="documentation.html#{{ item.name }}">#</a> <code>{{ item.name }}</code></td>
                  <td data-small="desc">{{ item.description | markdown }}</td>
                  <td data-small="aliases">
                  {% if item.aliased.length > 0 %}
                    <code>{{ item.aliased }}</code>
                  {% else %}
                    &mdash;
                  {% endif %}
                  </td>
                </tr>
              {% endif %}
            {% endfor %}
          </tbody>
        </table>
      </section>
    </div>  
  </div>
</div>

{% endblock %}