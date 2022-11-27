function onCreate()

     makeLuaSprite('theSky','ISLAND SKY',-200,-200)
	 addLuaSprite('theSky',false) 
     setLuaSpriteScrollFactor('theSky', 0.2, 0.2);

     makeLuaSprite('theMountains','HILLS',-200,-200)
	 addLuaSprite('theMountains',false) 
     setLuaSpriteScrollFactor('theMountains', 0.3, 0.6);
     
     makeLuaSprite('theBackGround','FLOOR2',-200,-100)
	 addLuaSprite('theBackGround',false) 
     setLuaSpriteScrollFactor('theBackGround', 1.0, 1.0);

	 makeLuaSprite('theGround','FLOOR1',-200,-100)
	 addLuaSprite('theGround',false) 
     setLuaSpriteScrollFactor('theGround', 1.0, 1.0);

	 makeLuaSprite('theGrass','frontgrass',-200,100)
	 addLuaSprite('theGrass',false) 
     setLuaSpriteScrollFactor('theGrass', 1.0, 1.0);

	 makeAnimatedLuaSprite('theCorpse','TailsSpikeAnimated',-200,200)
	 addAnimationByPrefix('theCorpse','fire','Tails Spike Animated instance',24,true)
	 addLuaSprite('theCorpse',false)
	 objectPlayAnimation('theCorpse','Tails Spike Animated instance',true)

	 makeLuaSprite('theEgg','EGGMAN',-300,-150)
	 addLuaSprite('theEgg',false) 
     setLuaSpriteScrollFactor('theEgg', 1.0, 1.0);

	 makeLuaSprite('theKnuckle','KNUCKLE',200,-100)
	 addLuaSprite('theKnuckle',true) 
     setLuaSpriteScrollFactor('theKnuckle', 1.0, 1.0);

	 makeLuaSprite('theTails','TAIL',-323,-150)
	 addLuaSprite('theTails',false) 
     setLuaSpriteScrollFactor('theTails', 1.0, 1.0);
end

function onBeatHit( ... )--for every beat
    --body
end

function onStepHit( ... )-- for every step
    -- body
end

function onUpdate( ... )
	-- body
end