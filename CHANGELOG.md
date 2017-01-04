# Changelog

* `3.0.1`: added Eyeglass support and fixed a minor issue in `sl-walk()`
* `3.0.0`: using `@error` instead of `@warn`, restructuration of structure and tests
* `2.2.5`: changing C-style comments to inline comments
* `2.2.4`: fixing a documentation error
* `2.2.3`: adding examples to documentation
* `2.2.2`: fixing a bug with aliases for `sl-to-list()` and moved all comments to C-like
* `2.2.1`: improving `sl-to-list()`'s performance
* `2.2.0`:
    * adding `sl-range()`, `sl-is-single()`, `sl-has-values()`, `sl-has-multiple-values()`
    * updating `sl-sum()` and `sl-to-map()`
    * making the whole library depending on most of the previously created helpers
    * making most functions returning `list` type, even when returning a single value
* `2.1.1`: fixing a tiny issue with dependency checker in `preprend()`
* `2.1.0`: adding `sl-is-empty()`, `sl-to-list()` and `sl-comma-list()`
* `2.0.0`:
    * adding `sl-to-map()`, `sl-every()` and `sl-some()`
    * adding and improved tests
    * prefixing all functions with `sl-`
    * fixing an issue with `random-value()` sometimes failing
    * changing all `false` returns into `null` in case of error
    * removing Compass dependency
* `1.1.0`: adding `walk()` and `tail()`, updated backward loops and fixed broken tests
* `1.0.0`: moving code base to Sass 3.3 + adding a Grunt workflow
    * adding `explode`
    * making use of `list-separator()` and `set-nth()`
    * updating `sort()` to make it able to sort strings
    * removing all notion of recursion for sake of simplicity
    * making `count-values()` return a map
    * minor fixes and improvements
    * improving overall performances
* `0.4.9`: removing `compact()` alias for `purge()` (ref [#23](https://github.com/at-import/SassyLists/issues/23))
* `0.4.8`: adding `shuffle()`
* `0.4.7`: dramatically improving `sort()` performances and removing all its dependencies
* `0.4.6`: fixing an issue when passing an empty list to `chunk()` and improved code quality
* `0.4.5`: making `sort()` able to return in descending order
* `0.4.4`: fixing a typo in `purge()`
* `0.4.3`: improving `insert-nth()`, `prepend()`, `replace-nth()` and `replace()` to prevent from adding empty lists
* `0.4.2`: improving `insert-nth()` and cleaning some indentation issues
* `0.4.1`: improving `intersection()` perf
* `0.4.0`: adding `intersection()`
* `0.3.5`: improving `debug()`, `to-string()` and `chunk()`
* `0.3.4`: fixing a minor issue in `insert-nth()`, `replace-nth()` and `prepend()`
* `0.3.3`: removing dependence to `purge()` from all functions; fixed an issue with `sort()`; fixed an issue with error messages
* `0.3.2`: removing dependence to `purge()` from `replace()`
* `0.3.1`: adding aliases and cleaned `to-string()`
* `0.3.0`: adding `contains()`, `flatten()`, `union()`
* `0.2.4`: improving `debug()`
* `0.2.3`: fixing important issues with comments
* `0.2.2`: moving all comments to invisible
* `0.2.1`: fixing an issue with `random-value()`
* `0.2.0`: adding `random-value()`
* `0.1.4`: fixing an issue with `sort()`, `is-symmetrical()`
* `0.1.3`: fixing an issue with `sort()`
* `0.1.2`: improving `debug()`
* `0.1.1`: initial commit
