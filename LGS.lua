ori = {}
ori.on = {}


ori.on.gstext = { -- MUST put each character in manually as done belo
	"e",
	"n",
	"d"
} 



-- Code Below


local function moveup()
	Sleep(1)				MoveMouseWheel(9999)
	Sleep(1)				MoveMouseWheel(9999)
	Sleep(1)				MoveMouseWheel(9999)
	Sleep(1)				MoveMouseWheel(9999)
	Sleep(1)				MoveMouseWheel(9999)
	Sleep(1)				MoveMouseWheel(9999)
	Sleep(1)				MoveMouseWheel(9999)
	Sleep(1)				MoveMouseWheel(9999)
	Sleep(1)				MoveMouseWheel(9999)
	Sleep(1)				MoveMouseWheel(9999)
	Sleep(1)				MoveMouseWheel(9999)
	Sleep(1)
end
local function movedown()
	Sleep(1)				MoveMouseWheel(-9999)
	Sleep(1)				MoveMouseWheel(-9999)
	Sleep(1)				MoveMouseWheel(-9999)
	Sleep(1)				MoveMouseWheel(-9999)
	Sleep(1)				MoveMouseWheel(-9999)
	Sleep(1)				MoveMouseWheel(-9999)
	Sleep(1)				MoveMouseWheel(-9999)
	Sleep(1)				MoveMouseWheel(-9999)
	Sleep(1)				MoveMouseWheel(-9999)
	Sleep(1)				MoveMouseWheel(-9999)
	Sleep(1)				MoveMouseWheel(-9999)
	Sleep(1)
end




function OnEvent(event, arg, ms)
	if event == "G_PRESSED" then
		if arg == 9 then
			moveup()
			OutputLogMessage("Moved Up\n")
		elseif arg == 8 then
			movedown()
			OutputLogMessage("Moved Down\n")
		elseif arg == 7 then
			MoveMouseTo(65535 / 2, 65535 / 2)
			OutputLogMessage("Mouse Centered\n")
		elseif arg ==  6 then
			for k,v in pairs(ori.on.gstext) do
				PressAndReleaseKey(v)	
			end
			OutputLogMessage("Inserted Text\n")
		elseif arg == 5 then 
			AbortMacro()
			OutputLogMessage("Macro Aborted\n")
		elseif arg == 4 then
			OutputLogMessage(GetRunningTime())
		end
	end
end