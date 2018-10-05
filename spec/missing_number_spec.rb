require_relative '../array_interview_qtns/missing_number'

RSpec.describe 'missing number' do
  it 'returns the missing number' do
    arr = (1..100000).to_a
    arr = arr - [55]
    expect(missing_number(arr, 100000)).to eq 55
  end
end

