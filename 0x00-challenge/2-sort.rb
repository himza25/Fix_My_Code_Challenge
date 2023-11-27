###
#
#  Sort integer arguments (ascending)
#
###

def valid_integer?(str)
  str.match?(/^[-+]?\d+$/)
end

# Select and convert valid integer arguments, then sort them
sorted_integers = ARGV.select { |arg| valid_integer?(arg) }
                       .map(&:to_i)
                       .sort

# Output sorted integers
puts sorted_integers.join(' ')
