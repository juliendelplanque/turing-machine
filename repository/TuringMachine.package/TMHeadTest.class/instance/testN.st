tests-tape manipulation
testN
	self assert: head read equals: $ç.
	head N.
	self assert: head read equals: $ç