function onCreate()
	-- background shit
	--makeLuaSprite('kecleon-shopbg', 'kecleon-shop', 50, 50);
	
	makeAnimatedLuaSprite('GreenKecleonbg', 'GreenKecleon', 400, 150)
	addAnimationByPrefix('GreenKecleonbg', 'GreenKecleon', 'GreenKecleon idle', 24, true)
    addLuaSprite('GreenKecleonbg', true)
    setProperty('GreenKecleonbg.visible', false)
	objectPlayAnimation('GreenKecleonbg', 'GreenKecleon', false)
    scaleObject('GreenKecleonbg', 1, 1)
	
	--scaleObject('kecleon-shopbg', 4, 4)
	--setLuaSpriteScrollFactor('kecleon-shopbg', 0, 1);
	
	--addLuaSprite('kecleon-shopbg', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end