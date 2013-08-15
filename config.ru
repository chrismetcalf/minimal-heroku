require 'rubygems'
require 'bundler/setup'

require 'rack'

use Rack::Static, :urls => ['/index.html'], :root => 'public'

# fallback 404 response
run lambda{ |_| [ 302, {'Location'=> '/index.html' }, [] ] }
