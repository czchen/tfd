#!/usr/bin/env lsc
require! {
  cheerio
  request
  winston
}

parse = (body, cb) !->

lookup = (text, cb) !->
  options = do
    url: "http://www.tfd.com/#{text}"

  winston.info "url is #{options.url}"

  (err, rsp, body) <-! request options
  if err
    cb err, null
  parse body, cb

main = !->
  args = process.argv.splice(2)
  if args.length == 0
    winston.error 'word or phrase needed'
    process.exit 1

  (err, info) <-! lookup args.join '+'

if require.main == module
  main!
