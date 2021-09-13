#! /usr/bin/ruby
# frozen_string_literal: true

require './Home_task_4/User'
require './Home_task_4/Card'
require 'logger'

predefined_card_numbers = %w[378282246310005 371449635398436 5610591081018253 38520000023237 6011111111111117
                             3530111333300001 5105105105105100 4012888888881882]
logger = Logger.new('checksum_check_history.txt')

loop do
  puts 'What is your name?'
  user = User.new(gets.chomp)
  puts 'How old are you?'
  user.age = gets.chomp
  p "Welcome #{user.name}!"

  unless user.adult?
    logger.info("Username:#{user.name}, age: #{user.age}, result has not been provided")
    next
  end

  loop do
    puts 'Please enter your Credit Card number:'
    if gets.chomp == ''
      user.add_card(Card.new(predefined_card_numbers.sample))
    else
      user.add_card(Card.new(gets.chomp))
    end
    puts 'Do you want to add another card?'
    break if gets.chomp == 'No'
  end

  user.cards.each do |card|
    result = card.get_checksum
    logger.info("Username:#{user.name}, age: #{user.age}, result of the CC check:#{result}")
  end
  puts 'Abort Program execution?'
  break if gets.chomp == 'Yes'
end
