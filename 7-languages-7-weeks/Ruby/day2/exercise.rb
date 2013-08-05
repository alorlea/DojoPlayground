class Exercise
  a=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
  a.each_slice(4) do |b,c,d,e|
    puts b.to_s+c.to_s+d.to_s+e.to_s  
  end
end