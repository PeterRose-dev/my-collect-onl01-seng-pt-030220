def my_collect(students)
  i = 0 
  
  while i < students.length 
   yield students[i]
  end
  students
end

my_collect(["Tim Jones", "Tom Smith", "Jim Campagno"]) do |name|
  name.split(" ").first 
end 


