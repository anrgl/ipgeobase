# frozen_string_literal: true

def count_by_years(users)
  users.each_with_object({}) do |user, hash|
    year = user[:birthday].split('-').first
    hash[year] = hash.fetch(year, 0) + 1 if user[:gender] == 'male'
  end
end
