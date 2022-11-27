function onCreate()
    makeLuaSprite('SonicJump', 'jumps/sonic', 0, 0)
    setObjectCamera('SonicJump', 'hud')
    addLuaSprite('SonicJump')
    setProperty('SonicJump.visible', false)
    scaleObject('SonicJump', 0.7, 0.7)

    makeLuaSprite('STATICJump', 'jumps/STATIC', 0, 0)
    setObjectCamera('STATICJump', 'hud')
    addLuaSprite('STATICJump')
    setProperty('STATICJump.visible', false)
    scaleObject('STATICJump', 0.7, 0.7)

    makeAnimatedLuaSprite('sonicJUMPSCAREJump', 'jumps/sonicJUMPSCARE', 0, 0)
	addAnimationByPrefix('sonicJUMPSCAREJump', 'sonicJUMPSCARE', 'sonicSPOOK',24,true)
    setObjectCamera('sonicJUMPSCAREJump', 'hud')
    addLuaSprite('sonicJUMPSCAREJump')
    setProperty('sonicJUMPSCAREJump.visible', false)
	objectPlayAnimation('sonicJUMPSCAREJump','sonicJUMPSCARE',false)
    scaleObject('sonicJUMPSCAREJump', 1, 1)
	
	

    makeLuaSprite('StaticLULJump', 'jumps/StaticLUL', 0, 0)
    setObjectCamera('StaticLULJump', 'hud')
    addLuaSprite('StaticLULJump')
    setProperty('StaticLULJump.visible', false)
    scaleObject('StaticLULJump', 0.7, 0.7)
end

function onEvent(name, value1, value2)
    if name == 'Screen Scare' then
        if value1 == 'sonic' then
            setProperty('SonicJump.visible', true)
            playSound('Jumpscare Noises/sonic')
            runTimer('Sonic Spook', 0.3, 0)
        end
        if value1 == 'STATIC' then
            setProperty('STATICJump.visible', true)
            playSound('Jumpscare Noises/STATIC')
            runTimer('STATIC Spook', 0.3, 0)
        end
        if value1 == 'sonicJUMPSCARE' then
            setProperty('sonicJUMPSCAREJump.visible', true)
            playSound('Jumpscare Noises/sonicJUMPSCARE')
			playSound('Jumpscare Noises/sonicJUMPSCARE2')
            runTimer('sonicJUMPSCARE Spook', 1, 0)
        end
    end
end

function onTimerCompleted(tag, loops, LoopsLeft)
    if tag == 'Sonic Spook' then
        setProperty('SonicJump.visible', false)
    end
    if tag == 'STATIC Spook' then
        setProperty('STATICJump.visible', false)
    end
    if tag == 'sonicJUMPSCARE Spook' then
        setProperty('sonicJUMPSCAREJump.visible', false)
    end
    if tag == 'StaticLUL Spook' then
        setProperty('StaticLULJump.visible', false)
    end
end

