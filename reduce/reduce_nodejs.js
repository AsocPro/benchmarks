#!/usr/bin/env node
var limit = process.env.LIMIT || 999999;
var nums = Array(limit);

for (var i = 0; i < limit; ++i) {
	nums[i] = i;
}

console.log(nums.reduce((prev, curr) => prev + curr));
