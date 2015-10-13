tests-accessing
testWriteMoveHeadMoveTo
	| aState |
	aState := TMState named: 'q'.
	transition write: $0 moveHead: #R moveTo: aState.
	self assert: transition write equals: $0.
	self assert: transition moveHead equals: #R.
	self assert: transition moveTo equals: aState