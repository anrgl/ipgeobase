# frozen_string_literal: true

def get_same_parity(nums = [])
  nums.select { |n| n.even? == nums.first.even? }
end
