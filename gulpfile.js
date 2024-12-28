//** Gulp.js 4 configuration **//
const
// Modules
gulp            = require('gulp'), // Gulp of-course
del             = require('del'); // Deletes files and folders.
// CSS Related
sass            = require('gulp-sass')(require('sass')), // Gulp pluign for Sass compilation.
minifycss       = require('gulp-clean-css'), // Minifies CSS files.
autoPrefixer    = require('gulp-autoprefixer'), // Autoprefixing magic.
mmq             = require('gulp-merge-media-queries'), // Combine matching media queries into one media query definition.
sourceMaps      = require('gulp-sourcemaps'), // Maps code in a compressed file (E.g. style.css) back to it’s original position in a source file (E.g. structure.scss, which was later combined with other css files to generate style.css)
// JS Related
concat          = require('gulp-concat'), // Concatenates JS files
uglify          = require('gulp-uglify'), // Minifies JS files
// Browser Syn Related
browserSync     = require('browser-sync').create(), // Reloads browser and injects CSS. Time-saving synchronised browser testing.
/* reload          = browserSync.reload, // For manual browser reload. */
// Image Related
imageMin        = require('gulp-imagemin'), // Minify PNG, JPEG, GIF and SVG images with imagemin.
// Utility Related
notify          = require('gulp-notify'), // Sends message notification to you.
rename          = require('gulp-rename'), // Renames files E.g. main.css -> main.min.css
filter          = require('gulp-filter'); // Enables you to work on a subset of the original files by filtering them using globbing.


// Theme directory
const themeDir = "wordpress/wp-content/themes/vida",

// Directory Locations
dir = {
    sassSrc         : 'src/assets/sass/main.scss',
    sassWatch       : 'src/assets/sass/**/*.scss',
    cssDest         : themeDir + '/assets/styles/',
    cssVendor       : [
        'node_modules/normalize.css/normalize.css',
        //'node_modules/swiper/swiper-bundle.min.css',
        /* 'node_modules/flickity/dist/flickity.min.css',
        'src/assets/styles/vendor/fontawesome/fontawesome.min.css',
        'src/assets/styles/vendor/fontawesome/brands.min.css',
        'src/assets/styles/vendor/fontawesome/solid.min.css',
        'src/assets/styles/vendor/fontawesome/regular.min.css',
        'src/assets/styles/vendor/fontawesome/light.min.css', */
    ],
    jsSrc           : 'src/assets/scripts/**/*.js',
    jsDest          : themeDir + '/assets/scripts/',
    jsVendor        : [
        //'node_modules/swiper/swiper-bundle.min.js',
        /* 'node_modules/flickity/dist/flickity.pkgd.min.js', */
    ],
    phpSrc          : 'src/**/*.php',
    fontsSrc        : 'src/assets/fonts/**/*.*',
    fontsDest       : themeDir + '/assets/fonts/',
    imgSrc          : 'src/assets/images/**/*.{png,jpg,gif,svg}',
    imgDest         : themeDir + '/assets/images/',
    projectDest     : themeDir,
    projectUrl      : 'https://vida.local/',
},

// Theme basic files
basicsSrc = [
    'src/style.css',                // Styles file
    'src/favicon.*',                // Favicon
    'src/screenshot.*',             // Theme screenshot
    'src/LICENSE.*',                // License
    'src/readme.*',                 // Readme file
],

// CSS Settings
cssOpts = {
    src             : dir.sassSrc,
    watch           : dir.sassWatch,
    build           : dir.cssDest,
    sassOpts : {
        outputStyle         : 'compressed',
        /* precision           : 10,
        errLogToConsole     : true */
    },
},

// Server Settings
browserSyncConfig = {
    proxy           : dir.projectUrl,
    open            : false
};

// - Clean Task - //
function clean(){
    return del(dir.projectDest + '/**');
}
exports.clean = gulp.series(clean);

// - Basics Task - //
function basics(){
    return gulp.src(basicsSrc)
        .pipe(gulp.dest(dir.projectDest))
        .pipe(notify({message: 'TASK: Basics Completed! 💯', onLast: true}));
}
exports.basics = gulp.series(basics);

// - CSS Task - //
function css() {
    //sass.compiler = require('sass');
    return gulp.src(cssOpts.src)
        .pipe(sourceMaps.init())
        .pipe(sass(cssOpts.sassOpts).on('error', sass.logError))
        .pipe(sourceMaps.write({includeContent: false}))
        .pipe(sourceMaps.init({loadMaps: true}))
        .pipe(autoPrefixer())
        .pipe(sourceMaps.write('./'))
        .pipe(gulp.dest(cssOpts.build))
        .pipe(filter('**/*.css'))
        .pipe(rename({suffix: '.min'}))
        .pipe(sourceMaps.init())
        .pipe(minifycss('level: 2'))
        .pipe(sourceMaps.write('./'))
        .pipe(gulp.dest(cssOpts.build))
        .pipe(browserSync.reload({ stream: true }))
        .pipe(notify({message: 'TASK: CSS Completed! 💯', onLast: true } ));
        
    sass.compiler = require('node-sass');
    return gulp.src(cssOpts.src)
        .pipe(sourceMaps.init())
        .pipe(sass(cssOpts.sassOpts).on('error', sass.logError))
        .pipe(sourceMaps.write({includeContent: false}))
        .pipe(sourceMaps.init({loadMaps: true}))
        .pipe(autoPrefixer( autoPrefixerOpts ))
        .pipe(sourceMaps.write('./'))
        .pipe(lineec())
        .pipe(gulp.dest(cssOpts.build))
        .pipe(filter('**/*.css'))
        .pipe(mmq({log: true}))
        .pipe(browserSync.stream())
        .pipe(rename({suffix: '.min'}))
        .pipe(minifycss({maxLineLen: 10}))
        .pipe(lineec())
        .pipe(gulp.dest(cssOpts.build))
        .pipe(filter('**/*.css'))
        .pipe(browserSync.reload({ stream: true }))
        .pipe(notify({message: 'TASK: CSS Completed! 💯', onLast: true } ));
}
exports.css = gulp.series(css);

// -  CSS Vendor Task - //
function cssVendor(){
    return gulp.src(dir.cssVendor)
        .pipe(concat('vendor.min.css'))
        .pipe(minifycss())
        .pipe(gulp.dest(dir.cssDest))
        .pipe(notify({message: 'TASK: CSS Vendor Completed! 💯', onLast: true}));
}
exports.cssVendor = gulp.series(cssVendor);

// - JS Task - //
function js() {
    return gulp.src(dir.jsSrc)
        //.pipe(concat(dir.jsCFile + '.js'))
        //.pipe(lineec())
        .pipe(gulp.dest(dir.jsDest))
        .pipe(rename({suffix: '.min'}))
        .pipe(uglify())
        //.pipe(lineec())
        .pipe(gulp.dest(dir.jsDest))
        .pipe(notify({message: 'TASK: JS Completed! 💯', onLast: true}));

    return gulp.src(dir.jsCustomSRC)
        .pipe(concat(dir.jsCFile + '.js'))
        .pipe(lineec())
        .pipe(gulp.dest(dir.jsDest))
        .pipe(rename({basename: dir.jsCFile, suffix: '.min'}))
        .pipe(uglify())
        .pipe(lineec())
        .pipe(gulp.dest(dir.jsDest))
        .pipe(notify({message: 'TASK: Custom.js Completed! 💯', onLast: true}));
}
exports.js = gulp.series(js);

// - JS Vendor Task - //
function jsVendor(){
    return gulp.src(dir.jsVendor)
        .pipe(concat('vendor.min.js'))
        .pipe(uglify())
        .pipe(gulp.dest(dir.jsDest))
        .pipe(notify({message: 'TASK: JS Vendor Completed! 💯', onLast: true}));

    return gulp.src(dir.jsVendorSRC)
        .pipe(concat(dir.jsVFile + '.js'))
        .pipe(lineec())
        .pipe(gulp.dest(dir.jsDest))
        .pipe(rename({basename: dir.jsVFile, suffix: '.min'}))
        .pipe(uglify())
        .pipe(lineec())
        .pipe(gulp.dest(dir.jsDest))
        .pipe(notify({message: 'TASK: Vendors.js Completed! 💯', onLast: true}));
}
exports.jsVendor = gulp.series(jsVendor);

// - Markup Task - //
function markup(){
    return gulp.src(dir.phpSrc)
    .pipe(gulp.dest(dir.projectDest))
    .pipe(notify({message: 'TASK: Markup Completed! 💯', onLast: true}));
}
exports.markup = gulp.series(markup);

// - Images Task - //
function images() {
    return gulp.src(dir.imgSrc)
    .pipe(imageMin({
        progressive: true,
        optimizationLevel: 3, // 0-7 low-high
        interlaced: true,
        //svgoPlugins: [{removeViewBox: false}]
    }))
    .pipe(gulp.dest(dir.imgDest))
    .pipe(notify({message: 'TASK: Images Completed! 💯', onLast: true}));
}
exports.images = gulp.series(images);

// -  Fonts Task - //
function fonts(){
    return gulp.src(dir.fontsSrc)
        .pipe(gulp.dest(dir.fontsDest))
        .pipe(notify({message: 'TASK: Fonts Completed! 💯', onLast: true}));
}
exports.fonts = gulp.series(fonts);

// - Watch Task - //
function watch(done) {
    // Basic files changes
    gulp.watch(basicsSrc, gulp.series(basics, function basicsReload(done){
        browserSync.reload();
        done();
    }));
    
    // PHP changes
    gulp.watch(dir.phpSrc, gulp.series(markup, function markupReload(done){
        browserSync.reload();
        done();
    }));

    // CSS changes
    gulp.watch(cssOpts.watch, gulp.series(css));
    
    // JS changes
    gulp.watch(dir.jsSrc, gulp.series(js, function jsReload(done){
        browserSync.reload();
        done();
    }));
    
    done();
}
/* function watch(done) {
    gulp.watch(basicsSrc, gulp.series(basics, reload)); // Basic files changes
    gulp.watch(dir.phpSrc, gulp.series(markup, reload)); // PHP changes
    done();
} */

// - Server Task (Private) - //
function server(done) {
    if (browserSync) browserSync.init(browserSyncConfig);
    done();
};

//** Default Tasks **//
/* exports.default = gulp.series(exports.clean, gulp.parallel(exports.basics, exports.fonts, exports.cssVendor, exports.jsVendor), exports.images, gulp.parallel(exports.css, exports.js), exports.markup, watch, server); */
/* exports.default = gulp.series(exports.clean, gulp.parallel(exports.basics, exports.cssVendor, exports.jsVendor), exports.images, gulp.parallel(exports.css, exports.js), exports.markup, watch, server); */
exports.default = gulp.series(exports.clean, gulp.parallel(exports.basics), exports.markup, watch, server);