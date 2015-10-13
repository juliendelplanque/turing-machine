actions
readSymbolPointedBy: aHead using: aMachine
	(actionDict at: aHead read ifAbsent: [ (TMUnknownSymbolError symbol: aHead read state: aMachine currentState) signal ]) applyTo: aMachine