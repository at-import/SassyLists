<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>SassyLists - Documentation</title>
  <link rel='stylesheet' href='assets/stylesheets/main.css'>
  <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Ubuntu'>
  <meta name="viewport" content="width=device-width">
</head>

<body>
<article>
{% include '../includes/navbar.html.swig' %}

{% block content %}{% endblock %}

{% include '../includes/footer.html.swig' %}
{% include '../includes/scripts.html.swig' %}
</article>
</body>
</html>