#!/usr/bin/lua

limit = os.getenv("LIMIT")
limitnum = tonumber(limit)

if(limitnum == nil)then
	limitnum = 999999
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

