def is_multiple_of_3_or_5?(current_number)
  if current_number % 3 == 0 || current_number % 5 == 0
    return true
  else
    return false
  end
end

def sum_of_3_or_5_multiples(final_number)
  if final_number.integer? == false && final_number > 0
    return "You're a stupid piece of shit !!! Only integer !!!"
  else
    final_sum = 0
    for current_number in 0...final_number
      is_multiple_of_3_or_5?(current_number) == true ? final_sum += current_number : nil
    end
    return final_sum
  end
end