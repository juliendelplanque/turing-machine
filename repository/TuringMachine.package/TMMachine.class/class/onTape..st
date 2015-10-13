instance creation
onTape: aTape
	^ self new
		head: (TMHead on: aTape);
		yourself