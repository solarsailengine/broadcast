function engine.onkeyboard(buffer)
	if (buffer == 'q') then
		engine.requestshutdown()
	end
end
