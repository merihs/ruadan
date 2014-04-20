require('coffee-script/register')
gulp = require('gulp')
plumber = require('gulp-plumber')
mocha = require('gulp-mocha')

PATHS = require('../paths.coffee')

gulp.task('tests_ mocha', ->
  require("#{PATHS.tests}/spec_helper")

  gulp.src([PATHS.tests + '/**/*.{coffee,js}', "!#{PATHS.clientTests}/**/*.{coffee,js}"], {read: false})
    .pipe(plumber())
    .pipe(mocha({reporter: 'spec', timeout: 200}));
)
