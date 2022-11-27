function onMoveCamera(focus)
	if focus == 'boyfriend' then
		noteTweenAlpha("NoteAlpha1", 0, -1, 0.1, cubeInOut)
        noteTweenAlpha("NoteAlpha2", 1, -1, 0.1, cubeInOut)
        noteTweenAlpha("NoteAlpha3", 2, -1, 0.1, cubeInOut)
        noteTweenAlpha("NoteAlpha4", 3, -1, 0.1, cubeInOut)

        noteTweenAlpha("NoteAlpha5", 4, 1, 0.1, linear)
        noteTweenAlpha("NoteAlpha6", 5, 1, 0.1, linear)
        noteTweenAlpha("NoteAlpha7", 6, 1, 0.1, linear)
        noteTweenAlpha("NoteAlpha8", 7, 1, 0.1, linear)
	elseif focus == 'dad' then
        noteTweenAlpha("NoteAlpha9", 4, -1, 0.1, linear)
        noteTweenAlpha("NoteAlpha10", 5, -1, 0.1, linear)
        noteTweenAlpha("NoteAlpha11", 6, -1, 0.1, linear)
        noteTweenAlpha("NoteAlpha12", 7, -1, 0.1, linear)

        noteTweenAlpha("NoteAlpha13", 0, 1, 0.1, linear)
        noteTweenAlpha("NoteAlpha14", 1, 1, 0.1, linear)
        noteTweenAlpha("NoteAlpha15", 2, 1, 0.1, linear)
        noteTweenAlpha("NoteAlpha16", 3, 1, 0.1, linear)
	end
end
