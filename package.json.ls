author:
  name: 'ChangZhuo Chen (陳昌倬)'
  email: 'czchen@gmail.com'
name: 'tfd'
version: '0.0.1'
license: 'MIT'
homepage: 'https://github.com/czchen/tfd'
repository:
  type: 'git'
  url: 'https://github.com/czchen/tfd'
scripts:
  prepublish: 'gulp --require LiveScript prepublish'
bin:
  tfd: './tfd.js'
dependencies:
  cheerio: '>= 0.13.1'
  request: '>= 2.34.0'
  winston: '>= 0.7.3'
devDependencies:
  LiveScript: '>= 1.2.0'
  gulp: '>= 3.6.0'
  'gulp-shell': '>= 0.2.4'
