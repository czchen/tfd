#!/usr/bin/env lsc
require! {
  request
  winston
}

lookup = (text, callback) ->
  options = do
    url: "http://www.tfd.com/#{text}"

  winston.info "url is #{options.url}"

  callback null, null

main = ->
  args = process.argv.splice(2)
  if args.length == 0
    winston.error 'word or phrase needed'
    process.exit 1

  (err, info) <-! lookup args.join '+'

if require.main == module
  main!
