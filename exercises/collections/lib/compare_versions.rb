# frozen_string_literal: true

def compare_versions(ver1, ver2)
  f = ver1.split('.').map(&:to_i)
  s = ver2.split('.').map(&:to_i)

  return f.first <=> s.first unless (f.first <=> s.first).zero?

  f.at(1) <=> s.at(1)
end
