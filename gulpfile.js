var gulp = require("gulp")




gulp.task("jade",function(){
    var jade = require("gulp-jade");
    this.src("./jade/**/*.jade")
        .pipe(jade({
            locals: {
                title: "こんにちは"
            },
            pretty: true
        })).pipe(this.dest("./hoge/"))
});

gulp.task("ws:preview", require("./gulp/ws-preview"));
gulp.task("ws:build",   require("./gulp/ws-build"));