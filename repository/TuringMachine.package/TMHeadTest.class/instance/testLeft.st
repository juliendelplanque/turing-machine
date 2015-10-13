tests-tape manipulation
testLeft
	self assert: head read equals: $ç.
	self should: [ head left ] raise: TMNavigationError.
	head right; right; left.
	self assert: head read equals: $0