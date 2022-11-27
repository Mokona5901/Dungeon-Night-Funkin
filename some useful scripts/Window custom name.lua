--Put it in mod/scripts or the data folders of specific songs

--Full Script:

function onCreate()
     setPropertyFromClass("openfl.Lib", "application.window.title", "Dungeon Night Funkin") --change it to what you want it to be
end

function onDestroy()
     setPropertyFromClass("openfl.Lib", "application.window.title", "Friday Night Funkin: Psych Engine") --dont change this one
end
