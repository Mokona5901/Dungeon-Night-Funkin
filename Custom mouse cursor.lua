--("custom_mouse_cursor" is the mouse texture's name, you can change it, but it MUST be exactly in "mods/images" or "mods/modnamehere/images", and it cannot exceed 32x32 pixels)

function onCreate()
        setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);
	runHaxeCode([[
		FlxG.mouse.unload();
		FlxG.log.add("Sexy mouse cursor " + Paths.image("custom_mouse_cursor"));// amogusgameALT i'm looking at you 
		FlxG.mouse.load(Paths.image("custom_mouse_cursor").bitmap, 1.5, 0);// you can't hide what you did
	]])
end

--necessary if you want the normal mouse to show up in things like the chart editor
function onDestroy()
	setPropertyFromClass('flixel.FlxG', 'mouse.visible', false);
	runHaxeCode('FlxG.mouse.unload();')
end
