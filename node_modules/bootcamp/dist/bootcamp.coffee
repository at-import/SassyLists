'use strict'

fs = require 'fs'

module.exports =
  test: (filepath) ->
    error = null

    file = fs.readFileSync filepath, 'utf8'

    ###
    # Get Camp
    ###

    camp = file.match /\/\* >> Bootcamp >> \*\/((.|\n|\r)*)\/\* << Bootcamp << \*\//

    unless camp?
      return incomplete: true, error: 'No Test Suite Found'
    else
      camp = camp[1]

    ###
    # Get Results
    ###

    results = camp.match /Test Results \{((.|\n|\r)*)\}/

    unless results?
      return incomplete: true, error: 'No Test Results Found'
    else
      results = results[1]

    ###
    # Get Specs
    ###

    specs = camp.replace( results, '' ).replace( /Test Results \{\}|\{|\}|;|:/g, '' )

    ###
    # method: getProperty
    ###

    getProperty = (property, force) ->
      values = results.match new RegExp property + ': ((.|\n|\r)*?);', 'g'
      property = []

      if force and !values? then return property

      unless values?
        error = incomplete: true, error: "No #{property} Found"
        return false
      else
        for value in values
          value = value.replace(/;/, '')
          value = value.replace(/(.*:)/, '')
          value = value.trim()
          value = parseInt value unless isNaN value
          property.push value

      return property

    ###
    # Get Properties
    ###

    success = getProperty('Success').indexOf('true') > -1
    stats   = getProperty 'Stats'
    tests   = getProperty 'Tests'
    asserts = getProperty 'Asserts'
    passed  = getProperty 'Passed'
    failed  = getProperty 'Failed'
    skipped = getProperty 'Skipped'
    errors  = getProperty 'Error', true

    ###
    # Return Any Errors
    ###

    return error if error

    ###
    # Return Final Values
    ###

    return {
      camp:    camp
      results: results
      specs:   specs

      success: success
      stats:   stats
      details: "#{tests} Tests, #{asserts} assertions, #{failed} failures, #{skipped} skipped"

      tests:   tests
      asserts: asserts
      passed:  passed
      failed:  failed
      skipped: skipped

      errors:  errors
    }
