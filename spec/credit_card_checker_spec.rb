require_relative "../credit_card_checker"

describe "#credit_card_checker" do
  it "returns 'Invalid credit card number' when passed an empty string" do
    actual = credit_card_checker("")
    expected = "Invalid credit card number"
    expect(actual).to eq(expected)
  end

  it "returns 'Invalid credit card number' when passed a string with at least one non-numeric character" do
    actual = credit_card_checker("4242-4242-4242-4242")
    expected = "Invalid credit card number"
    expect(actual).to eq(expected)
  end

  it "returns 'Valid visa credit card number' when passed 4 groups of 4 digits separated by spaces" do
    actual = credit_card_checker("4242 4242 4242 4242")
    expected = "Valid visa credit card number"
    expect(actual).to eq(expected)
  end

  it "returns 'Valid mastercard credit card number' when passed 16 digits, whatever space there may be" do
    actual = credit_card_checker("  5555 5555 5555 5555 ")
    expected = "Valid mastercard credit card number"
    expect(actual).to eq(expected)
  end
end
