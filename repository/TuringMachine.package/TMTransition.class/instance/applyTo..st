application
applyTo: aMachine
	aMachine head write: self write.
	aMachine head perform: self moveHead.
	aMachine moveToState: self moveTo