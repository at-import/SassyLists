{% extends 'layout/base.html.swig' %}

{% block content %}

<div class="jumbotron">
    <div class="container">
        <h1>SassyLists <small>{{ version }}</small></h1>
        <p>SassyLists is a <a href="http://compass-style.org">Compass</a> Extension providing you all functions you need to manipulate your <a href="http://sass-lang.com">Sass</a> lists.</p>
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
          <p>SassyLists is pure Sass and Compass. No magic Ruby behind it or anything. All functions are built with Sass. Thus, some functions can be a little slow depending on what you're doing with it.</p>
          <p>In any case, feel free to have a sneak peek at the code and improve it!</p>
        </div>
      </section>

      <section class="row">
        <div class="col-md-6">
          <h2>How to use it?</h2>
          <ul class="list-unstyled">
              <li><code>gem install SassyLists</code></li>
          </ul>
          <p class="alert  alert-info">You can also use it directly on <a href="http://codepen.io">CodePen</a> by adding <a href="http://codepen.io/HugoGiraudel/pen/loAgq">this pen</a> as an external CSS resource.</p>
        </div>

        <div class="col-md-6">
          <h2>Requirements</h2>
          <ul>
              <li><a href="http://sass-lang.com/">Sass</a> ~> 3.3</li>
          </ul>
          <p class="alert  alert-warning">Some functions depend on other functions. If you include functions individually, make sure to check for these dependencies in their respective docs.</p>
        </div>
      </section>

      <section>
        <h2>What's in there?</h2>

        <table class="table">
          <thead>
            <tr>
                <th>Name</th>
                <th>Point</th>
                <th>Aliased as</th>
            </tr>
          </thead>
          <tbody>
            {% for item in data.functions %}
              {% if item.alias == false %}
                <tr>
                  <td><a href="documentation.html#{{ item.name }}">#</a> <code>{{ item.name }}</code></td>
                  <td>{{ item.description | markdown }}</td>
                  <td>
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