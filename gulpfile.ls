require! {
    gulp
    'gulp-shell'
}

gulp.task 'prepublish', ->
  gulp.src <[**/*.ls !gulpfile.ls]>
    .pipe(gulp-shell('node_modules/.bin/lsc -c <%= file.path %>'))
