tests-accessing
testStateName
	self assert: state stateName equals: 'q0'.
	state stateName: 'q1'.
	self assert: state stateName equals: 'q1'