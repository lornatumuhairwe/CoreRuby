def sum_args(input_array)
  input_array.inject(:+)
end

arr = ARGV
arr = arr.collect(&:to_i)
print sum_args(arr)

describe 'executing instructions from the command line' do
  let(:output) { capture(:stdout) { cli.execute } }

  context 'with valid commands' do
    valid_test_data.each do |data|
      let(:expected_output) { data[:output] }
      let(:commands) { StringIO.new(data[:input]).map { |a| a.strip } }

      it 'should process the commands and output the results' do
        cli.stub(:gets).and_return(*commands, 'EXIT')
        output.should include(expected_output)
      end
    end
  end
end
