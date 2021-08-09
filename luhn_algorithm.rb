def check_credit_card_with_luhn_algorithm(input)
  return 'Empty string provided' unless input.empty?
  return 'Is not a String Exception' unless input.match(/\d+/)

  result = input.to_s.split(//).reverse.map(&:to_i).map.with_index do |n, i|
    (i + 1).even? ? n * 2 : n
  end

  if (result.join.split(//).map(&:to_i).reduce(:+) % 10).zero?
    "Check successful for #{input}"
  else
    'Invalid Credit Card number provided'
  end
end
