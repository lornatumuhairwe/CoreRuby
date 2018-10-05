require_relative '../2D arrays/hourGlass'

RSpec.describe 'hourGlass' do
  it 'returns maximum hour glass normal 6*6 2D array' do
    arr1 = [
        [1, 1, 1, 0, 0, 0],
        [0, 1, 0, 0, 0, 0],
        [1, 1, 1, 0, 0, 0],
        [0, 9, 2, -4, -4, 0],
        [0, 0, 0, -2, 0, 0],
        [0, 0, -1, -2, -4, 0]
    ]

    arr2 = [
        [1, 1, 1, 0, 0, 0],
        [0, 1, 2, 0, 0, 0],
        [1, 1, 1, 0, 0, 0],
        [0, 0, 2, 4, 4, 0],
        [0, 0, 0, 2, 0, 0],
        [0, 0, 1, 2, 4, 0]
    ]
    expect(hour_glass(arr1)).to eq(13)
    expect(hour_glass(arr2)).to eq(19)
  end

  it 'raises error when one of the elements is not an integer' do
    arr = [
        [1, 1, 1, 0, 0, 0],
        [0, 1, 'l', 0, 0, 0],
        [1, 1, 1, 0, 0, 0],
        [0, 0, 2, 4, 4, 0],
        [0, 0, 0, 2, 0, 0],
        [0, 0, 1, 2, 4, 0]
    ]

    expect { hour_glass(arr) }.to raise_error(ArgumentError)
  end
end
