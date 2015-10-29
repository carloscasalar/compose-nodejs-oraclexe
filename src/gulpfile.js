'use strict';

var gulp = require('gulp');
var plumber = require('plumber');
var orawrap = require('orawrap');
var config = require('./config/config');

gulp.task('tnsping', function () {
  orawrap.setConnectInfo(config.db);
  orawrap.execute(
   'SELECT * FROM DUAL',
   function(err, results) {
      if (err) {
         throw err;
      }
      console.log('PONG => Connection successful!');
      //process results
   }
);
});

gulp.task('default', function () {
  console.log('empty default task');
})
