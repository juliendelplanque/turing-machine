navigation
next
	(currentCell nextLink isNil)
		ifTrue: [ dataList addLast: Character space ].
	currentCell := currentCell nextLink