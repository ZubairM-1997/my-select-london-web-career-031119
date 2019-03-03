def my_select(collection)
 # your code here!
 count = 0
result = []

while count < collection.size
  if yield(collection[count]) == true
  result.push(collection[count])
end
  count+=1
end
result
end
