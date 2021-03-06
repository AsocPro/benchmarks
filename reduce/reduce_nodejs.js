#!/usr/bin/env node

"use strict";

var limit = process.env.LIMIT || 999999;
var nums = Array(limit + 1);

for (let i = 0; i <= limit; ++i) {
	nums[i] = i;
}

console.log(nums.reduce((prev, curr) => prev + curr));
