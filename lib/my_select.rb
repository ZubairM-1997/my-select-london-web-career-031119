def my_select(collection)
 # your code here!
 count = 0
result = []

while count < array.size
  if yield(collection[count]) == true
  result.push(array[count])
end
  count+=1
end
result
end
