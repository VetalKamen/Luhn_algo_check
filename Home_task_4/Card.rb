class Card

  def self.get_checksum(input)
    empty_string_error(input)
    not_string_exception?(input)

    result = input.to_s.split(//).reverse.map(&:to_i).map.with_index do |n, i|
      (i + 1).even? ? n * 2 : n
    end

    if (result.join.split(//).map(&:to_i).reduce(:+) % 10).zero?
      "Check successful for #{input}"
    else
      invalid_credit_number_error
    end
  end

  def self.empty_string_error(input)
    'Empty string provided' unless input.empty?
  end

  def self.not_string_exception?(input)
    'Is not a String Exception' unless input.match(/\d+/)
  end

  def self.invalid_credit_number_error
    'Invalid Credit Card number provided'
  end
end
