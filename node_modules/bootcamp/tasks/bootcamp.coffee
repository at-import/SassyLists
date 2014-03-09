'use strict'

bootcamp = require '../dist/bootcamp.coffee'
colors = require 'colors'

module.exports = (grunt) ->

  grunt.registerMultiTask 'bootcamp', 'Jasmine-style BDD testing written in Sass for Sass.', ->

    class bootcamp.gruntTask
      constructor: (@tests) ->
        if @tests.incomplete
          @isIncomplete()
        else if @tests.success and @tests.test == 0
          @isEmpty
        else if @tests.success
          @hasPassed()
        else
          @hasFailed()

      log:  (string) -> grunt.log.writeln string
      pass: (string) -> grunt.log.success string
      warn: (string) -> grunt.log.warn string
      fail: (string) -> grunt.fail.warn string

      logStats: ->
        stats = @tests.stats + ''
        stats = stats.replace /✔/g, '✔'.green
        stats = stats.replace /✗/g, '✗'.red
        @log stats

      logSpecs: ->
        specs = @tests.specs + ''
        specs = specs.replace /✔/g, '✔'.green
        specs = specs.replace /✗/g, '✗'.red
        specs = specs.replace /Test Passed/g, 'Test passed'.green
        specs = specs.replace /Test Failed/g, 'Test failed'.red
        specs = specs.replace /!(.*)!(.*)\./g, '$1:$2.'.yellow
        specs = specs.trim()
        if specs != ''
          @log '\n' + specs + '\n'

      logErrors: ->
        if !@tests.errors then return null
        @log ''

        for error in @tests.errors
          error = error + ''
          error = error.replace /!(.*)!(.*)/g, '$1:'.red + '$2'.yellow
          @log error.yellow

      isIncomplete: ->
        @fail @tests.error.yellow
        return true

      isEmpty: ->
        @logStats()
        @warn 'Your tests probably haven\'t been properly set up.\nTake a look at https://github.com/tctcl/bootcamp/wiki/setup'
        return true

      hasFailed: ->
        @logSpecs()
        @logStats()
        @warn @tests.details
        @logErrors()
        return false

      hasPassed: ->
        @logSpecs()
        @logStats()
        @pass @tests.details
        @logErrors()
        return true

    @files.forEach (f) ->
      f.src.filter (filepath) ->

        unless grunt.file.exists filepath
          grunt.log.warn 'Source file "' + filepath + '" not found.'
          return false

        else
          new bootcamp.gruntTask bootcamp.test filepath
