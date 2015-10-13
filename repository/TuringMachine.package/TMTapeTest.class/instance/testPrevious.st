tests-navigation
testPrevious
	self should: [ tape previous ] raise: TMNavigationError.
	tape next.
	tape previous.
	self assert: tape currentData equals: $ç