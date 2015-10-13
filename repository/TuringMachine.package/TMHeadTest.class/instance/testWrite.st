tests-tape manipulation
testWrite
	self assert: head read equals: $ç.
	head R.
	self assert: head read equals: $0.
	head write: $a.
	self assert: head read equals: $a