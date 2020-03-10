def my_collect(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection
end

array = ['Tim Jones', 'Tom Smith', 'Sophie Johnson', 'Antoin Miller']
my_collect(array) do |name|
  name.split(" ").first
end


def my_collect(collection)
  i = 0 
  languages = []
  while i < collection.length 
   languages << yield collection[i]
   i +=1 
  end
  languages
end

collection = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(collection) do |lang|
  lang.upcase
end