navigation
previous
	(currentCell value = $ç)
		ifTrue: [ TMNavigationError signal: 'There is nothing before $ç on a tape.' ].
	currentCell := currentCell previousLink