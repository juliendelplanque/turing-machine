tests-tape manipulation
testL
	self assert: head read equals: $ç.
	self should: [ head L ] raise: TMNavigationError.
	head R; R; L.
	self assert: head read equals: $0