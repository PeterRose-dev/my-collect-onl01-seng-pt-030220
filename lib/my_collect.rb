def my_collect(students)
  i = 0 
  
  while i < students.length 
   yield students[i]
   i +=1 
  end
  students
end

my_collect(["Tim Jones", "Tom Smith", "Jim Campagno"]) do |name|
  name.split(" ").first 
end 

def my_collect(languages)
  i = 0 
  
  while i < languages.length 
   yield languages[i]
   i +=1 
  end
  languages
end

collection = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(collection) do |lang|
  lang.upcase
end
