# Frank's Famous

Frank's Famous is an extension of [Pizza Man](https://github.com/kripy/pizza-man), bringing in [Sass](http://sass-lang.com/) support via [Sinatra Support](https://github.com/sinefunc/sinatra-support/), [HTML5 boilerplate](http://html5boilerplate.com/) support via [Compass H5bp](https://github.com/sporkd/compass-h5bp), and asset management via [Sinatra AssetPack](https://github.com/rstacruz/sinatra-assetpack). Phew. 

Again it's a Heroku ready [Sinatra](http://www.sinatrarb.com/) app, running on [Unicorn](http://unicorn.bogomips.org/) with  [Mustache](http://mustache.github.io/) for templating.

Check the code for the only real gotcha I came across, with Heroku seemingly not being able to deal with asset minification yet the assets were minified anyhow. Go figure.

I also added an extra helper to load [Modernizr](http://modernizr.com/) before the HTML body start tag, as per the HTML5 boilerplate convention, with the rest of the JavaScript includes loading right before the end body tag.

## Installation

Firstly, make sure you've [installed Ruby](http://www.ruby-lang.org/en/). Also, install the [Heroku Toolbelt](https://toolbelt.heroku.com/) as it includes [Foreman](https://github.com/ddollar/foreman) for running Procfile-based applications.

Then in terminal, clone me:

```
$ git clone git@github.com:/kripy/franks-famous my-franks-famous
$ cd my-franks-famous
$ foreman start
```

Open up a browser at ```http://localhost:5000/```: now you're cooking!

## Deployment

If you don't already have one, sign up for a [Heroku](https://www.heroku.com/) account. Everything you need to know and do to deploy is in [Getting Started with Ruby on Heroku](https://devcenter.heroku.com/articles/ruby).

In terminal, cd into your app:

```
$ cd my-franks-famous
$ git init
$ git add .
$ git commit -m "init"
$ heroku create
$ git push heroku master
$ heroku open
```

Then enjoy your slice of pizza pie!

## MIT LICENSE

Copyright (c) 2013 Arturo Escartin

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.