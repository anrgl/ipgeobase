# frozen_string_literal: true

def compare_versions(ver1, ver2)
  ver1.split('.').map(&:to_i) <=> ver2.split('.').map(&:to_i)
end
