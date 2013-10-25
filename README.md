# SassyLists

## Advanced Sass list functions

Here is a [Compass Extension](http://compass-style.org/) providing you all functions you need to manipulate your [Sass](http://sass-lang.com/) lists.

Current version: `0.2.1`.

## How to use it

1. `gem install SassyLists`
2. Add `require 'SassyLists'` to your `config.rb`
3. Import it in your stylesheets with `@import 'SassyLists'`

## What's in there? 

* `chunk()`: chunk list into size large lists
* `count-values()`: count the number of occurrences of each value of list
* `debug()`: returns list as a string
* `first()`: return first item in list
* `insert-nth()`: insert value at index
* `is-symmetrical()`: check if list is symmetrical
* `last()`: return last item in list
* `last-index()`: return last index of value in list
* `loop()`: shift indexes in list
* `prepend()`: prepend value to list
* `purge()`: remove all `false` and `null` values from list
* `random-value()`: return random value from list
* `remove()`: remove value in list
* `remove-duplicates()`: remove duplicate values from list
* `remove-nth()`: remove value at index
* `replace()`: replace value in list
* `replace-nth()`: replace value at index
* `reverse()`: reverse list
* `slice()`: slice list
* `sort()`: sort list
* `sum()`: sum all unitless values in list
* `to-string()`: cast list as string (JS `.join()`)

If you feel like an explorer, you can have a look at the code [here](https://github.com/Team-Sass/Sass-list-functions/tree/master/compass-extension/stylesheets).

## Requirements

* Sass ~> 3.2.0
* Compass ~> 0.12.2 (obviously)

Some functions depend on other functions. If you include functions individually, make sure to check for these dependencies in their respective docs.

## Also read

* [Advanced Sass list functions](http://hugogiraudel.com/2013/08/08/advanced-sass-list-functions/)

## Credits

A million thanks to [Vinay Raghu](http://viii.in/) for making this Compass extension out of my original work and to [Team-Sass](https://github.com/Team-Sass) for their [Compass Extension template](https://github.com/Team-Sass/Compass-Extension-Template).
