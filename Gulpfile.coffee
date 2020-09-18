G = require 'gulp'
coffee = require 'gulp-coffee'
styl = require 'gulp-stylus'
ts = require 'gulp-typescript'
sass = require 'gulp-sass'

DEST = 'dist'

G.task 'default', (done) ->
  G
    .src 'src/*.coffee{.md,}'
    .pipe coffee()
    .pipe G.dest DEST
  G
    .src 'src/*.styl'
    .pipe styl()
    .pipe G.dest DEST
  G
    .src 'src/*.ts'
    .pipe ts()
    .pipe G.dest DEST
  G
    .src 'src/*.scss'
    .pipe sass()
    .pipe G.dest DEST

  G.src 'src/*.{js,css}'
    .pipe G.dest DEST

G
  .watch 'src/*', G.series 'default'
