-- Shows a visual representation of the matrix multiplication process. Useful in understanding what is being multiplied when dealing with large matrices
-- essentially, this module aims to replace the typical matrix multiplication function with an augmented version that shows the steps being taken.

local showmult = {}

function showmult.showmultiply(a, b) -- 'a' and 'b' are matrices
	print("matrix 1 = a = ")
	print(a)
	print("matrix 2 = b = ")
	print(b)
	i = a:size(1)
	j = b:size(1)
	k = b:size(2)
	resultLua = torch.zeros(i, k)
	for t = 1, i do
		for d = 1, k do
			sum = 0
			for x = 1, j do
				sum = sum + (a[t][x] * b[x][d])
				print("a[" .. t .. "][" .. x .. "] * b[" .. x .. "][" .. d .. "] = " .. a[t][x] .. " * " .. b[x][d] .. " = " .. (a[t][x] * b[x][d]))
			end
			resultLua[t][d] = sum
		end
	end
	return resultLua
end

return showmult