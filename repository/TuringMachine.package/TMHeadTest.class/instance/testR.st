tests-tape manipulation
testR
	self assert: head read equals: $ç.
	head R.
	self assert: head read equals: $0.