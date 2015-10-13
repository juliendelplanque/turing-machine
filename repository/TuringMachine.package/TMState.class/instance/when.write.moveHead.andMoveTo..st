actions
when: aCharacter write: anotherCharacter moveHead: aSymbol andMoveTo: aState
	self when: aCharacter do: (TMTransition write: anotherCharacter moveHead: aSymbol moveTo: aState)