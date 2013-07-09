class Hashes
hash={"a"=>["a","b","c"],"b"=>["d","e","f"]}
puts hash.values

d=Hash[*hash.values]
puts d
hash.each do |key,value|
  puts "#{key}---"
  puts value
end
end