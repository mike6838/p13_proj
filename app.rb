require 'pathname'
require_relative './db/config'

APP_ROOT = Pathname.new(File.dirname(File.expand_path(__FILE__)))

#require the ActiveRecord db configuration
require APP_ROOT.join('db', 'config')


#require the app's models
require APP_ROOT.join('app', 'models', 'user')
require APP_ROOT.join('app', 'models', 'picture')
require APP_ROOT.join('app', 'models', 'part')

# are other require statements needed to include all your models?

