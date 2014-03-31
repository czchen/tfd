#!/usr/bin/env lsc
require! request

lookup = (text, callback) ->

main = ->
  args = process.argv.splice(2)
  if args.length == 0
    console.error 'Error: word or phrase needed'
    process.exit 1

  (err, info) <-! lookup args.join '+'

if require.main == module
  main!
