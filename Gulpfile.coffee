G = require 'gulp'
pug = require 'gulp-pug'
coffee = require 'gulp-coffee'
styl = require 'gulp-stylus'

G.task 'default', (done) ->
  G
    .src 'src/*.coffee{.md,}'
    .pipe coffee()
    .pipe G.dest 'dist'
  G
    .src 'src/*.styl'
    .pipe styl()
    .pipe G.dest 'dist'

  G.src 'src/*.{js,css}'
    .pipe G.dest 'dist'

G
  .watch 'src/*', G.series 'default'
