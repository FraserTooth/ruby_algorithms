# frozen_string_literal: true

require_relative './script'
require_relative '../code_wars_framework'

def testing(actual, expected)
  Test.assert_equals(actual, expected)
end

Test.describe('longest_consec') do
  Test.it('Basic tests') do
    testing(longest_consec(%w[zone abigail theta form libe zas], 2), 'abigailtheta')
    testing(longest_consec(%w[ejjjjmmtthh zxxuueeg aanlljrrrxx dqqqaaabbb oocccffuucccjjjkkkjyyyeehh], 1), 'oocccffuucccjjjkkkjyyyeehh')
    testing(longest_consec([], 3), '')
    testing(longest_consec(%w[itvayloxrp wkppqsztdkmvcuwvereiupccauycnjutlv vweqilsfytihvrzlaodfixoyxvyuyvgpck], 2), 'wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck')
    testing(longest_consec(%w[wlwsasphmxx owiaxujylentrklctozmymu wpgozvxxiu], 2), 'wlwsasphmxxowiaxujylentrklctozmymu')
    testing(longest_consec(%w[zone abigail theta form libe zas], -2), '')
    testing(longest_consec(%w[it wkppv ixoyx 3452 zzzzzzzzzzzz], 3), 'ixoyx3452zzzzzzzzzzzz')
    testing(longest_consec(%w[it wkppv ixoyx 3452 zzzzzzzzzzzz], 15), '')
    testing(longest_consec(%w[it wkppv ixoyx 3452 zzzzzzzzzzzz], 0), '')
  end
end
