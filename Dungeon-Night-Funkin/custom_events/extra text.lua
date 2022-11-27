function onCreatePost()
    makeLuaText("message", "Poké Catcher moment pog", 500, 30, 50)
    setTextAlignment("message", "left")
    addLuaText("message")
	makeLuaSprite('pog', 'pogfish', 30, 50)
    addLuaSprite('pog')
    setProperty('pog.visible', true)
    scaleObject('pog', 0.25, 0.25)

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('message.y', 680)
		setProperty('pog.y', 680)
        setProperty('engineText.y', 660)
    end
end