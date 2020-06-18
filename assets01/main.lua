local SingleViewportManager = require "SingleViewportManager"

function engine.onkeyboard(buffer)
	if (buffer == 'q') then
		engine.requestshutdown()
	end
end

function engine.onstarted()
	local display1 = engine.display.getdisplaybyindex(0)
	local window1 = engine.display.createwindow(display1, display1.left + 50, display1.top + 50, display1.width - 800, display1.height - 500)
	engine.display.setclearcolor(window1, 0.0, 0.0, 0.0, 1.0)
	engine.display.showwindow(window1)
	local v1 = engine.display.newviewport(window1, 0, 0, window1.width, window1.height)
	window1.onresize = SingleViewportManager(v1, 'fit', 16, 9)

	window = window1
	viewport = v1

	engine.changescene(engine.loadscene("program.json").name)
end
