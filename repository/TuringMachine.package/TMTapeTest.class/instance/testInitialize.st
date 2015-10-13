tests-initialization
testInitialize
	self assert: tape currentData equals: $ç.
	self assert: (tape next; currentData) equals: Character space