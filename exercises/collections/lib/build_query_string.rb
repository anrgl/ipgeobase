# frozen_string_literal: true

def build_query_string(params = {})
  output = []
  params.to_a.sort.each do |pair|
    output << pair.join('=')
  end
  output.join('&')
end
