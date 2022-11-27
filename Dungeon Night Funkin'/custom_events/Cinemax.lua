local time;

function onEvent(name, value1, value2)
	if name == "Cinemax" then
		makeLuaSprite('topBar','',0,-88)
		makeLuaSprite('bottomBar','',0,screenHeight)
		makeGraphic('topBar', screenWidth, 88, '000000')
		makeGraphic('bottomBar', screenWidth, 88, '000000')
		setObjectCamera('topBar','other')
		setObjectCamera('bottomBar','other')
		addLuaSprite('topBar')
		addLuaSprite('bottomBar')
		doTweenAlpha('cinemaHudAlpha','camHUD',0,0.5,'linear')
		doTweenY('topBarTween','topBar',0,0.5,'linear')
		doTweenY('bottomBarTween','bottomBar', screenHeight - 88,0.5,'linear')
		time = 2;
	end
end

function onTweenCompleted(tag)
	if tag == 'cinemaHudAlpha' then
		runTimer('duration', time)
	end
end

function onTimerCompleted(tag)
	if tag == 'duration' then
		doTweenAlpha('cinemaHudAlpha','camHUD',1,0.5,'linear')
		doTweenY('topBarTween','topBar',-88,0.5,'linear')
		doTweenY('bottomBarTween','bottomBar', screenHeight,0.5,'linear')
	end
end