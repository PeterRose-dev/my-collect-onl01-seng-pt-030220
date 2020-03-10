def my_collect(students)
  i = 0 
  empty_array = []
  while i < students.length 
   empty_array << yield students[i]
   i +=1 
  end
  empty_array
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end

def my_collect(languages)
  i = 0 
  empty_array = []
  while i < languages.length 
   yield languages[i]
   i +=1 
  end
  empty_array
end

collection = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(collection) do |lang|
  lang.upcase
end
