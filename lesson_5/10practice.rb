[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |elem|
  incremented_hsh = {}
  elem.map do |k, v|
    incremented_hsh[k] = v + 1
  end
  p incremented_hsh
end
