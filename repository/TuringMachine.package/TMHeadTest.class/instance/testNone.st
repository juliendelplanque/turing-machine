tests-tape manipulation
testNone
	self assert: head read equals: $ç.
	head none.
	self assert: head read equals: $ç