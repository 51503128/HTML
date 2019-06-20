def sumArray(arr)
  sum = 0
  for i in 0 .. arr.length - 1
    sum += arr[i]
  end
  return sum
end
def checkAge(age)
  if age >=18
    print "can watch JAV\n"
  else
    print "too young to wach JAV\n"
  end
end
def printArr(arr)
  for i in 0...arr.length
    print"Phan tu thu #{i}: #{arr[i]}\n"
  end
end
def leastCM(a,b)
  return a.lcm(b)
end
def divByZero(a,b)
  res = 0
  begin
    res = a/b
  rescue
    puts "Cannot divide by Zero"
  ensure
    puts res
  end
end

checkAge(18)
puts "Sum of all elements in array: #{sumArray([1,2,3])}"
printArr([3,4,5])
puts "LCM: #{leastCM(10,15)}"
divByZero(10,0)