#!/usr/bin/lua

limit = os.getenv("LIMIT")
print (limit)
limitnum = tonumber(limit)

if(limitnum == nil)then
	limitnum = 1
end

a = {}

for i=1,limitnum do a[i] = i end

function table.sum(arr,length)
	sum = 0
	for i=1,length do 
		sum = sum + arr[i]	
	end

	return sum 
end

print(table.sum(a,#a))

