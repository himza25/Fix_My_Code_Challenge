###
#
#  Sort integer arguments (descending)
#
###

# Select and convert valid integer arguments, then sort them in descending order
sorted_integers = ARGV.select { |arg| arg.match?(/^[-+]?\d+$/) }
                       .map(&:to_i)
                       .sort { |a, b| b <=> a }

# Output sorted integers
puts sorted_integers.join(' ')
