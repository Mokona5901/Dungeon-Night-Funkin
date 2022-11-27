function onSongStart()
	noteTweenY("NoteMove", 0, 10, 0.1, cubeInOut)
end

function onStepHit()
	if curStep == 2 then
        noteTweenY("NoteMove", 1, 10, 0.1, cubeInOut)
    end
    if curStep == 4 then
        noteTweenY("NoteMove", 2, 10, 0.1, cubeInOut)
    end
    if curStep == 6 then
        noteTweenY("NoteMove", 3, 10, 0.1, cubeInOut)
    end
    if curStep == 16 then
        noteTweenY("NoteMove", 4, 10, 0.1, cubeInOut)
    end
    if curStep == 18 then
        noteTweenY("NoteMove", 5, 10, 0.1, cubeInOut)
    end
    if curStep == 20 then
        noteTweenY("NoteMove", 6, 10, 0.1, cubeInOut)
    end
    if curStep == 22 then
        noteTweenY("NoteMove", 7, 10, 0.1, cubeInOut)
    end
    if curStep == 30 then
        noteTweenY("NoteMove2", 0, 50, 0.1, linear)
        noteTweenAlpha("NoteAlpha", 0, -1, 0.3, linear)
    end
    if curStep == 32 then
        noteTweenY("NoteMove2", 1, 50, 0.1, linear)
        noteTweenAlpha("NoteAlpha", 1, -1, 0.3, linear)
    end
    if curStep == 34 then
        noteTweenY("NoteMove2", 2, 50, 0.1, linear)
        noteTweenAlpha("NoteAlpha", 2, -1, 0.3, linear)
    end
    if curStep == 36 then
        noteTweenY("NoteMove2", 3, 50, 0.1, linear)
        noteTweenAlpha("NoteAlpha", 3, -1, 0.3, linear)
    end
    if curStep == 44 then
        noteTweenY("NoteMove2", 4, 50, 0.1, linear)
        noteTweenAlpha("NoteAlpha", 4, -1, 0.3, linear)
    end
    if curStep == 46 then
        noteTweenY("NoteMove2", 5, 50, 0.1, linear)
        noteTweenAlpha("NoteAlpha", 5, -1, 0.3, linear)
    end
    if curStep == 48 then
        noteTweenY("NoteMove2", 6, 50, 0.1, linear)
        noteTweenAlpha("NoteAlpha", 6, -1, 0.3, linear)
    end
    if curStep == 50 then
        noteTweenY("NoteMove2", 7, 50, 0.1, linear)
        noteTweenAlpha("NoteAlpha", 7, -1, 0.3, linear)
    end
    if curStep == 56 then
        noteTweenAngle("NoteAngle", 0, 50, 0.1, linear)
        noteTweenAlpha("NoteAlpha", 0, 50, 0.3, linear)
    end
    if curStep == 58 then
        noteTweenAngle("NoteAngle", 1, 50, 0.1, linear)
        noteTweenAlpha("NoteAlpha", 1, 50, 0.3, linear)
    end
    if curStep == 60 then
        noteTweenAngle("NoteAngle", 2, 50, 0.1, linear)
        noteTweenAlpha("NoteAlpha", 2, 50, 0.3, linear)
    end
    if curStep == 62 then
        noteTweenAngle("NoteAngle", 3, 50, 0.1, linear)
        noteTweenAlpha("NoteAlpha", 3, 50, 0.3, linear)
    end
    if curStep == 74 then
        noteTweenAngle("NoteAngle", 4, -50, 0.1, linear)
        noteTweenAlpha("NoteAlpha", 4, 50, 0.3, linear)
    end
    if curStep == 76 then
        noteTweenAngle("NoteAngle", 5, -50, 0.1, linear)
        noteTweenAlpha("NoteAlpha", 5, 50, 0.3, linear)
    end
    if curStep == 78 then
        noteTweenAngle("NoteAngle", 6, -50, 0.1, linear)
        noteTweenAlpha("NoteAlpha", 6, 50, 0.3, linear)
    end
    if curStep == 80 then
        noteTweenAngle("NoteAngle", 7, -50, 0.1, linear)
        noteTweenAlpha("NoteAlpha", 7, 50, 0.3, linear)
    end
end