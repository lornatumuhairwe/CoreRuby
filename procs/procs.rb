# Your code here
#
conversion p
def convert_temp(temp, input_scale:, output_scale: 'celsius')
  return temp if input_scale == output_scale
  sym = "#{input_scale[0]}_to_#{output_scale[0]}".to_sym
  puts sym
end

convert_temp(45, input_scale: 'celsius', output_scale: 'kelvin')
