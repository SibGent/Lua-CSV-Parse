local function split(line, sep) 
	local sep = sep or ","
	local pattern = "[^" .. sep .. "]+"
	local t = {}
	
	for word in line:gmatch(pattern) do
		table.insert(t, word)
	end
	
	return t
end

local s = "apple,two,three,four apple,five,six"
local t = split(s)

for _, v in pairs(t) do
	print(v)
end