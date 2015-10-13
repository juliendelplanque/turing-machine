as yet unclassified
printOn: aStream
	aStream
		<< self className;
		<< $(;
		<< self stateName;
		<< $)