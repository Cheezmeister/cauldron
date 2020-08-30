G = require 'gulp'
pug = require 'gulp-pug'
coffee = require 'gulp-coffee'

G.task 'default', (done) ->
  G
    .src '*.coffee.md'
    .pipe coffee()
    .pipe G.dest 'dist'

  G.src '*.js'
    .pipe G.dest 'dist'

  G
    .src 'vendor/**'
    .pipe G.dest 'dist'
  G
    .src 'assets/**'
    .pipe G.dest 'dist/assets'


G
  .watch 'index.jade', G.series 'default'
