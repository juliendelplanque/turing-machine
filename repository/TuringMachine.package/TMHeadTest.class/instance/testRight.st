tests-tape manipulation
testRight
	self assert: head read equals: $ç.
	head right.
	self assert: head read equals: $0.