#! /usr/bin/ruby
# frozen_string_literal: true

require './Home_task_4/User'
require './Home_task_4/Card'
require 'logger'

logger = Logger.new('checksum_check_history.txt')

pasha = User.new('Pasha')
krysta = User.new('Krysta')
murka = User.new('Murka')
roman = User.new('Roman')

arr = [pasha, krysta, roman, murka]

arr.each do |user|
  user.introduce
  puts 'What is your age?'
  user.age = gets.chomp

  if user.age.to_i < 13
    logger.info("Username:#{user.name}, age: #{user.age}, result has not been provided")
    next
  end

  puts 'Good, please enter your Credit Card number:'
  result = Card.get_checksum(gets.chomp)

  logger.info("Username:#{user.name}, age: #{user.age}, result of the CC check:#{result}")
end
