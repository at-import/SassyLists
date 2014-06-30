var $window 	= $(window);
var $body   	= $(document.body);
var navHeight 	= $('.navbar').outerHeight(true) + 10;

$body.scrollspy({
    target: '.sidebar',
    offset: navHeight
});

$window.on('load', function () {
    $body.scrollspy('refresh')
});