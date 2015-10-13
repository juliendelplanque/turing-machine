tests-accessing
testCurrentData
	self assert: tape currentData equals: $ç.
	tape next.
	tape currentData: $0.
	self assert: tape currentData equals: $0.