tests-actions
testWhenDo
	| otherState transition |
	otherState := TMState new.
	transition := TMTransition write: $0 moveHead: #R moveTo: otherState.
	state when: $0 do: transition.
	self assert: (state actionDict keys anySatisfy: [ :any | any = $0 ]).
	self assert: (state actionDict at: $0) equals: transition