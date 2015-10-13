tests-initialization
testInitialize
	self assert: state actionDict class equals: Dictionary.
	self assert: state actionDict keys isEmpty