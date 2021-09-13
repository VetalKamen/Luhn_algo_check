class Card
  attr_accessor :number

  def initialize(number)
    self.number = number
  end

  def get_checksum
    empty_string_error
    not_string_exception?

    result = number.to_s.split(//).reverse.map(&:to_i).map.with_index do |n, i|
      (i + 1).even? ? n * 2 : n
    end

    if (result.join.split(//).map(&:to_i).reduce(:+) % 10).zero?
      "Check successful for #{number}"
    else
      invalid_credit_number_error
    end
  end

  private

  def empty_string_error
    'Empty string provided' unless number.empty?
  end

  def not_string_exception?
    'Is not a String Exception' unless number.match(/\d+/)
  end

  def invalid_credit_number_error
    'Invalid Credit Card number provided'
  end
end
