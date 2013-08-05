class Grep
  i=0
  reg = Regexp.new("quijote")
  File.open("grep.txt","a+") do |f|
    while line=f.gets
        puts i if reg =~ line
        i=i+1
     end
  end
 
end