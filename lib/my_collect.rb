def my_collect(array)
  i = 0 
  
  while i < array.length 
   yield array[i]
  end
  array
end

my_collect(["Tim Jones", "Tom Smith", "Jim Campagno"]) do |name|
  name.split(" ").first 
end 


