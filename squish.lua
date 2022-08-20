accel_x = 0
accel_x2 = 0
bounce = 0
bf_flip = 1
pos_x = 800

function onUpdate()
	if keyPressed("up") then
		bounce = bounce*0.8 + 0.25
	elseif keyPressed("down") then
		bounce = bounce*0.7 + 0.25
	
	else
		accel_x2 = accel_x2 + (1 - bounce)/5
		bounce = (bounce*0.8 + 0.2) + accel_x2
	end

	pos_x = pos_x + accel_x*6
	setProperty('boyfriend.x', pos_x - 1/bounce * 150)
        setProperty('boyfriend.y', 100 + 1/bounce * 350)
	scaleObject('boyfriend', bf_flip/bounce, bounce)
end