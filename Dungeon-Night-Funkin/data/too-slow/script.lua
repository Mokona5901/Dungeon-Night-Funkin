function onUpdate(elpased)
	  if botPlay == true then
		makeLuaText("message", "Skill issue mode activated", 400, 20, 20)
		setTextAlignment("message", "left")
		addLuaText("message")
		setProperty('message.visible', true)
		if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
			setProperty('message.y', 680)
		end
	end
end





function onCountdownTick(counter)
	if botPlay == true then
		makeLuaSprite('skill-issue', 'skill-issue', 400, 130)
		addLuaSprite('skill-issue', false)
		setProperty('gf.visible', false)
		setProperty('skill_issue.visible', true)
	end
	
	if counter == 0 then
	setProperty('timeBar.color', getColorFromHex('0058B7'))
	addVCREffect('camGame')
	addVCREffect('camHud', false)
	end
	
	if counter == 4 then
		setProperty('camHUD.visible', true);
	end
	
	
end

function onSongStart()
	noteTweenAlpha("NoteAlpha", 0, -1, 0.15, cubeInOut);
    setPropertyFromClass("openfl.Lib","application.window.title","Dungeon Night Funkin': too-slow (Normal)")
end

function onStepHit()
	if curStep == 1 then
		noteTweenAlpha("NoteAlpha", 7, -1, 0.15, cubeInOut)
    end
	if curStep == 2 then
		noteTweenAlpha("NoteAlpha", 1, -1, 0.15, cubeInOut)
	end
	if curStep == 3 then 
		noteTweenAlpha("NoteAlpha", 6, -1, 0.15, cubeInOut)
	end
	if curStep == 4 then
		noteTweenAlpha("NoteAlpha", 2, -1, 0.15, cubeInOut)
	end
	if curStep == 5 then
		noteTweenAlpha("NoteAlpha", 5, -1, 0.15, cubeInOut)
	end
	if curStep == 6 then
		noteTweenAlpha("NoteAlpha", 3, -1, 0.15, cubeInOut) 
	end
	if curStep == 7 then
		noteTweenAlpha("NoteAlpha", 4, -1, 0.15, cubeInOut)
	end
	if curStep == 8 then
		setProperty('camHUD.visible', true)
	end
	if curStep == 253 then
		noteTweenAlpha("NoteAlpha", 0, 1, 0.15, cubeInOut)
		setProperty('camHUD.visible', true);
	end
	if curStep == 254 then
		noteTweenAlpha("NoteAlpha", 1, 1, 0.15, cubeInOut)
	end
	if curStep == 255 then
		noteTweenAlpha("NoteAlpha", 2, 1, 0.15, cubeInOut)
	end
	if curStep == 256 then
		noteTweenAlpha("NoteAlpha", 3, 1, 0.15, cubeInOut)
	end
	if curStep == 378 then
		noteTweenAlpha("NoteAlpha", 7, 1, 0.15, cubeInOut)
	end
	if curStep == 379 then
		noteTweenAlpha("NoteAlpha", 6, 1, 0.15, cubeInOut)
	end
	if curStep == 380 then
		noteTweenAlpha("NoteAlpha", 5, 1, 0.15, cubeInOut)
	end
	if curStep == 381 then
		noteTweenAlpha("NoteAlpha", 4, 1, 0.15, cubeInOut)
	end
	if curStep == 763 then	
		local time;
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

	if curStep == 792 then
		setProperty('bartop.visible', false);
		setProperty('barbot.visible', false);
		setProperty('iconP1.visible', true);
		setProperty('iconP2.visible', true);
		setProperty('scoreTxt.visible', true);
		setProperty('timeBar.visible', true);
		setProperty('timeBarBG.visible', true);
		setProperty('timeTxt.visible', true);
		setProperty('healthBar.visible', true);
		setProperty('healthBarBG.visible', true);
		noteTweenAlpha("NoteAlpha", 0, 1, 0.1, cubeInOut)
		noteTweenAlpha("NoteAlpha", 1, 1, 0.1, cubeInOut)
		noteTweenAlpha("NoteAlpha", 2, 1, 0.1, cubeInOut)
		noteTweenAlpha("NoteAlpha", 3, 1, 0.1, cubeInOut)
		noteTweenAlpha("NoteAlpha", 4, 1, 0.1, cubeInOut)
		noteTweenAlpha("NoteAlpha", 5, 1, 0.1, cubeInOut)
		noteTweenAlpha("NoteAlpha", 6, 1, 0.1, cubeInOut)
		noteTweenAlpha("NoteAlpha", 7, 1, 0.1, cubeInOut)
		if botPlay == true then
			setProperty('botplayTxt.visible', true);
		end
	
		type = tonumber(1)
		duration = tonumber(0);
		if duration < 0 then
			duration = 0;
		end
	
		if type == 0 and duration == 0 then
			for i = 0, 4, 1 do
				setPropertyFromGroup('playerStrums', i, 'alpha', tonumber(1))
			end
			for i = 0, 4, 1 do
				setPropertyFromGroup('opponentStrums', i, 'alpha', tonumber(1))
			end
            setProperty('healthBar.alpha',  tonumber(1))
            setProperty('iconP1.alpha',  tonumber(1))
            setProperty('iconP2.alpha',  tonumber(1))
            setProperty('scoreTxt.alpha',  tonumber(1))
            setProperty('timeBar.alpha', tonumber(1))
            setProperty('timeTxt.alpha', tonumber(1))
            setProperty('botplayTxt.alpha', tonumber(1))
		elseif type == 0 and duration > 0 then
			noteTweenAlpha("noteGoneOpp1", 0, 1, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp2", 1, 1, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp3", 2, 1, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp4", 3, 1, duration, "quartInOut");
            noteTweenAlpha("noteGone5", 4, 1, duration, "quartInOut");
            noteTweenAlpha("noteGone6", 5, 1, duration, "quartInOut");
            noteTweenAlpha("noteGone7", 6, 1, duration, "quartInOut");
            noteTweenAlpha("noteGone8", 7, 1, duration, "quartInOut");
            doTweenAlpha('hp', 'healthBar', 1, duration, 'quartInOut')
            doTweenAlpha('hpicon1', 'iconP1', 1, duration, 'quartInOut')
            doTweenAlpha('hpicon2', 'iconP2', 1, duration, 'quartInOut')
            doTweenAlpha('score', 'scoreTxt', 1, duration, 'quartInOut')
            doTweenAlpha('timeBar', 'timeBar', 1, duration, 'quartInOut')
            doTweenAlpha('timeBarTxt', 'timeTxt', 1, duration, 'quartInOut')
            doTweenAlpha('botplayTxt', 'botplayTxt', 1, duration, 'quartInOut')
		end
	end
	if curStep == 1306 then
		setProperty('camHUD.visible', false);
	end
	if curStep == 1432 then
		setProperty('camHUD.visible', true);
	end
	if curStep == 1952 then
		type = tonumber(1)
		duration = tonumber(2);
		if duration < 0 then
			duration = 0;
		end

		-- fade out
		if type == 1 and duration == 0 then
			for i = 0, 4, 1 do
				setPropertyFromGroup('playerStrums', i, 'alpha', tonumber(0))
			end
			for i = 0, 4, 1 do
				setPropertyFromGroup('opponentStrums', i, 'alpha', tonumber(0))
			end
            setProperty('healthBar.alpha',  tonumber(0))
            setProperty('iconP1.alpha',  tonumber(0))
            setProperty('iconP2.alpha',  tonumber(0))
            setProperty('scoreTxt.alpha',  tonumber(0))
            setProperty('timeBar.alpha', tonumber(0))
            setProperty('timeTxt.alpha', tonumber(0))
            setProperty('botplayTxt.alpha', tonumber(0))
		elseif type == 1 and duration > 0 then
			noteTweenAlpha("noteGoneOpp1", 0, 0, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp2", 1, 0, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp3", 2, 0, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp4", 3, 0, duration, "quartInOut");
            noteTweenAlpha("noteGone5", 4, 0, duration, "quartInOut");
            noteTweenAlpha("noteGone6", 5, 0, duration, "quartInOut");
            noteTweenAlpha("noteGone7", 6, 0, duration, "quartInOut");
            noteTweenAlpha("noteGone8", 7, 0, duration, "quartInOut");
            doTweenAlpha('hp', 'healthBar', 0, duration, 'quartInOut')
            doTweenAlpha('hpicon1', 'iconP1', 0, duration, 'quartInOut')
            doTweenAlpha('hpicon2', 'iconP2', 0, duration, 'quartInOut')
            doTweenAlpha('score', 'scoreTxt', 0, duration, 'quartInOut')
            doTweenAlpha('timeBar', 'timeBar', 0, duration, 'quartInOut')
            doTweenAlpha('timeBarTxt', 'timeTxt', 0, duration, 'quartInOut')
            doTweenAlpha('botplaytxt', 'botplayTxt', 0, duration, 'quartInOut')
		end

		-- fade in
		if type == 0 and duration == 0 then
			for i = 0, 4, 1 do
				setPropertyFromGroup('playerStrums', i, 'alpha', tonumber(1))
			end
			for i = 0, 4, 1 do
				setPropertyFromGroup('opponentStrums', i, 'alpha', tonumber(1))
			end
            setProperty('healthBar.alpha',  tonumber(1))
            setProperty('iconP1.alpha',  tonumber(1))
            setProperty('iconP2.alpha',  tonumber(1))
            setProperty('scoreTxt.alpha',  tonumber(1))
            setProperty('timeBar.alpha', tonumber(1))
            setProperty('timeTxt.alpha', tonumber(1))
            setProperty('botplayTxt.alpha', tonumber(1))
		elseif type == 0 and duration > 0 then
			noteTweenAlpha("noteGoneOpp1", 0, 1, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp2", 1, 1, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp3", 2, 1, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp4", 3, 1, duration, "quartInOut");
            noteTweenAlpha("noteGone5", 4, 1, duration, "quartInOut");
            noteTweenAlpha("noteGone6", 5, 1, duration, "quartInOut");
            noteTweenAlpha("noteGone7", 6, 1, duration, "quartInOut");
            noteTweenAlpha("noteGone8", 7, 1, duration, "quartInOut");
            doTweenAlpha('hp', 'healthBar', 1, duration, 'quartInOut')
            doTweenAlpha('hpicon1', 'iconP1', 1, duration, 'quartInOut')
            doTweenAlpha('hpicon2', 'iconP2', 1, duration, 'quartInOut')
            doTweenAlpha('score', 'scoreTxt', 1, duration, 'quartInOut')
            doTweenAlpha('timeBar', 'timeBar', 1, duration, 'quartInOut')
            doTweenAlpha('timeBarTxt', 'timeTxt', 1, duration, 'quartInOut')
            doTweenAlpha('botplytxt', 'botplayTxt', 1, duration, 'quartInOut')
		end	
	end
	if curStep == 2005 then
		if botPlay == true then
			playSound('bruh', 1, false)
		end
	end
	
end

function onCreate()
	setPropertyFromClass('GameOverSubstate', 'Sonic_EXE', 'Sonic_EXE'); --Character json file for the death animation
end

function onGameOver()
	endSong()
end