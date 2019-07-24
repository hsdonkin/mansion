require('sinatra')
require('sinatra/reloader')
require('pry')
require('rspec')
require('./lib/game')

our_game = Game.new

get ('/')do
  @our_game = our_game
  erb :entryway
end

get ('/move_up')do
  @our_game = our_game
  erb our_game.move_up.to_sym
end

get ('/move_down')do
  @our_game = our_game
  erb our_game.move_down.to_sym
end

get ('/move_left')do
  @our_game = our_game
  erb our_game.move_left.to_sym
end

get ('/move_right')do
  @our_game = our_game
  erb our_game.move_right.to_sym
end
