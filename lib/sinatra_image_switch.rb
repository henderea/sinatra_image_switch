require 'sinatra_image_switch/version'
require 'sinatra'

def image_switch_file(url, template, path)
  if File.exist?(File.expand_path(path))
    request.accept.each { |a|
      halt erb(template) if a.chomp == 'text/html'
    }
    send_file(File.expand_path("images/#{params[:image]}"), :disposition => 'inline')
  else
    halt 404
  end
end
