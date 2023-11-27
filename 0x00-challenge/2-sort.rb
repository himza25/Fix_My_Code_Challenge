###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # Skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # Convert to integer
    i_arg = arg.to_i
    
    # Insert result at the right position
    inserted = false
    i = 0
    while i < result.length && !inserted
        if i_arg <= result[i]
            result.insert(i, i_arg)
            inserted = true
        end
        i += 1
    end

    # Append at the end if not inserted yet
    result << i_arg unless inserted
end

puts result
