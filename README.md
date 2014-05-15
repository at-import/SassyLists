# SassyLists [![Gem Version](https://badge.fury.io/rb/SassyLists.png)](http://badge.fury.io/rb/SassyLists)

Here is a [Compass Extension](http://compass-style.org/) providing you all functions you need to manipulate your [Sass](http://sass-lang.com/) lists. See complete documentation [here](http://sassylists.com/).

## How to use it

### Install with Gem 

1. `gem install SassyLists`
2. Add `require 'SassyLists'` to your `config.rb`
3. Import it in your stylesheets with `@import 'SassyLists'`

### Install with [Bower](http://bower.io/ "BOWER: A package manager for the web")
1. `bower install SassyLists --save-dev`
2. Import the partial in your Sass files

## What's in there? 

* `chunk()`: returns whether list contains $value
* `contain()`: returns whether the list contains the value
* `count-values()`: counts the number of occurrences of each value of list
* `debug()`: returns list as a string
* `explode()`: explodes a string into a list using a string as a delimiter
* `first()`: returns first item in list
* `flatten()`: turns multidimensional list into a one-level list
* `insert-nth()`: inserts value at index
* `intersection()`: returns a list of shared values across all given lists
* `is-symmetrical()`: checks if list is symmetrical
* `last()`: returns last item in list
* `last-index()`: returns last index of value in list
* `loop()`: shifts indexes in list
* `prepend()`: prepends value to list
* `purge()`: removes all `false` and `null` values from list
* `random-value()`: returns random value from list
* `remove()`: removes value in list
* `remove-duplicates()`: removes duplicate values from list
* `remove-nth()`: removes value at index
* `replace()`: replaces value in list
* `replace-nth()`: replaces value at index
* `reverse()`: reverses list
* `shuffle()`: shuffles list
* `slice()`: slices list
* `sort()`: sorts list
* `sum()`: sums all unitless values in list
* `to-string()`: casts list as string (JS `.join()`)
* `union()`: returns a list of values from given lists minus duplicates

If you feel like an explorer, you can have a look at the code [here](https://github.com/Team-Sass/SassyLists/tree/master/stylesheets).

## Requirements

* Sass ~> 3.3.0
* Compass ~> 1.0.0

If you are looking for the last version of SassyLists running on Sass 3.2, install `0.4.9`.

Some functions depend on other functions. If you include functions individually, make sure to check for these dependencies in their respective docs.

## Also read

* [Official site](http://sassylists.com)
* [Advanced Sass list functions](http://hugogiraudel.com/2013/08/08/advanced-sass-list-functions/)
* [Advanced Sass list functions again](http://hugogiraudel.com/2013/10/09/advanced-sass-list-functions-again/)
* [How I made a Sass debug function](http://hugogiraudel.com/2013/10/21/sass-debug/)

## Credits

A million thanks to [Vinay Raghu](http://viii.in/) for making this Compass extension out of my original work and to [Team-Sass](https://github.com/Team-Sass) for their [Compass Extension template](https://github.com/Team-Sass/Compass-Extension-Template).
