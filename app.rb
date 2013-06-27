require 'sinatra/base'
require 'sinatra/assetpack'
require 'compass'
require 'compass-h5bp'
require 'sinatra/support'
require 'mustache/sinatra'

class App < Sinatra::Base
  base = File.dirname(__FILE__)
  set :root, base

  register Sinatra::AssetPack
  register Sinatra::CompassSupport
  register Mustache::Sinatra

  set :sass, Compass.sass_engine_options
  set :sass, { :load_paths => sass[:load_paths] + [ "#{base}/app/css" ] }

  assets do
    serve '/js',    from: 'app/js'
    serve '/css',   from: 'app/css'
    serve '/img',   from: 'app/img'

    css :app_css, [ '/css/*.css' ]
    js :app_js, [
      '/js/*.js',
      '/js/vendor/jquery-1.9.1.min.js',
    ]
    js :app_js_modernizr, [ '/js/vendor/modernizr-2.6.2.min.js' ]

    # Heroku doesn't like this but assets end up minified anyway.
    # Left these lins in for reference.
    #css_compression :sass
    #js_compression  :jsmin
  end

  require "#{base}/app/helpers"
  require "#{base}/app/views/layout"

  set :mustache, {
    :templates => "#{base}/app/templates",
    :views => "#{base}/app/views",
    :namespace => App
  }

  before do
    @css = css :app_css
    @js  = js  :app_js
    @js_modernizr = js :app_js_modernizr
  end

  helpers do

  end

  # Function allows both get / post.
  def self.get_or_post(path, opts={}, &block)
    get(path, opts, &block)
    post(path, opts, &block)
  end   

  get '/' do
    @page_title = 'Page Title'

    mustache :index
  end
end