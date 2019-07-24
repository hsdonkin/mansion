require('sinatra')
require('sinatra/reloader')
require('pry')
require('rspec')
require('./lib/game')

our_game = Game.new


get ('/')do
  erb :entryway
end

get ('/move_up')do
erb our_game.move_up.to_sym
end

get ('/move_down')do
erb our_game.move_down.to_sym
end

get ('/move_left')do
erb our_game.move_left.to_sym
end

get ('/move_right')do
erb our_game.move_right.to_sym
end
