*TuringMachine
firstLink
	self isEmpty 
		ifTrue: [ CollectionIsEmpty signalWith: self ].
	^ head