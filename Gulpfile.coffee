G = require 'gulp'
coffee = require 'gulp-coffee'
styl = require 'gulp-stylus'
ts = require 'gulp-typescript'

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

  G.src 'src/*.{js,css}'
    .pipe G.dest DEST

G
  .watch 'src/*', G.series 'default'
