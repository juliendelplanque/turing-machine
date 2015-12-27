navigation
previous
	(currentCell value = $ç)
		ifTrue: [ TMNavigationError signal: 'There is nothing before $ç on a tape.' ].
	currentCell := currentCell previousLink.
	index := index - 1.
	self announcer announce: (TMCurrentCellChanged cellIndex: index)