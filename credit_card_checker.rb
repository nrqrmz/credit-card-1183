def credit_card_checker(credit_card_number)
  clean_number = credit_card_number.delete(' ')

  if clean_number.match(/(\d)\d{15}/) && clean_number.match(/(\d)\d{15}/)[1] == '4'
    'Valid visa credit card number'
  elsif clean_number.match(/(\d)\d{15}/) && clean_number.match(/(\d)\d{15}/)[1] == '5'
    'Valid mastercard credit card number'
  else
    'Invalid credit card number'
  end
end
