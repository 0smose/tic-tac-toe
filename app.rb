require 'bundler'
Bundler.require
require_relative 'lib/app/player'
require_relative 'lib/app/Board'
require_relative 'lib/app/boardcase'
require_relative 'lib/app/game'
#require 'scrapper'


my_game = Game.new("caro", "robin")

my_game.menu


binding.pry
