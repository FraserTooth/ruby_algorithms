# frozen_string_literal: true

# You are given an array strarr of strings and an integer k. Your task is to return the first longest string consisting of k consecutive strings taken in the array.
# Example:

# longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2) --> "abigailtheta"

# n being the length of the string array, if n = 0 or k > n or k <= 0 return "".
# Note

# consecutive strings : follow one after another without an interruption

def longest_consec(strarr, _k)
  biggest = ''

  return biggest if _k < 1 || _k > strarr.length

  strarr.each_index do |i|
    string = strarr[i]
    if _k > 1
      (1..(_k - 1)).each do |j|
        string += strarr[i + j] if i + j < strarr.length
      end
    end
    biggest = string.length > biggest.length ? string : biggest
  end
  biggest
end
