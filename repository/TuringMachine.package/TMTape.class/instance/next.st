navigation
next
	(currentCell nextLink isNil)
		ifTrue: [
			dataList addLast: Character space.
			self announcer announce: TMCellAdded new ].
	currentCell := currentCell nextLink.
	index := index + 1.
	self announcer announce: (TMCurrentCellChanged cellIndex: index)