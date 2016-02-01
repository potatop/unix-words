require 'sinatra'

class UnixWords < Sinatra::Base
  get '/' do
    File.readlines("/usr/share/dict/words").sample.chomp.chomp("'s")
  end
end