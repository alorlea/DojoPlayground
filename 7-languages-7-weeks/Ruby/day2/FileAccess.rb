class FileAccess
  aFile=File.new("temp.txt","a+")
  aFile.syswrite("hello world!\r\n")
  aFile.close()
  
  File.open("temp.txt","a+") do |f|
    while line=f.gets
      puts line
    end
  end
  f=File.open("temp.txt","a+")
    while line=f.gets
      puts line
    end
  
end