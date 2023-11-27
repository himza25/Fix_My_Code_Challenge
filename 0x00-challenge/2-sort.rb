###
#
#  Sort integer arguments (ascending)
#
###

result = ARGV.filter_map do |arg|
  # Convert arg to integer if it is a valid integer string, nil otherwise
  arg.match?(/^[-+]?\d+$/) ? arg.to_i : nil
end

# Sort the array of integers
result.sort!

# Output sorted integers
puts result.join(' ')
