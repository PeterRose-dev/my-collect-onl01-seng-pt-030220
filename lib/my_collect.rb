def my_collect(students)
  i = 0 
  empty_array = []
  while i < students.length 
   empty_array << yield (array[i])
    i +=1 
  end
  empty_array
end

students = ['Tim Jones', 'Tom Smith', 'Sophie Johnson', 'Antoin Miller'] 
my_collect(students) do |name|
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
