local script = {}

function script:onbroadcast(context, buffer)
	log(buffer)
end

function script:onkeyboard(context, buffer)
	broadcast(buffer)
end

return script
