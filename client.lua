-- lua client
print("hello world")

-- sleep function temporarily implemented to immitate processing time of stable diffusion
function sleep(s)
  local ntime = os.clock() + s/10
  repeat until os.clock() > ntime
end

while true do
	emu.yield()
	client.screenshot("output/test"..emu.framecount()..".png")
	sleep(2)
	emu.frameadvance()
end
