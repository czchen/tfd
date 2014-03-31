#!/usr/bin/env lsc
require! {
  cheerio
  request
  winston
}

parse = (body, cb) !->
  $ = cheerio.load(body)
  winston.info ($ '#MainTxt' .find '.hw' .eq 0 .text!)
  cb null, null

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
  if err
    winston.error err
    process.exit 2

if require.main == module
  main!
