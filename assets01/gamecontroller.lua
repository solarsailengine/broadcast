local script = require('scriptcomponent'):derive()

function script:onmessage(buffer)
	log(buffer)
end

function script:onkeyboard(buffer)
	broadcast(buffer)
end

return script
