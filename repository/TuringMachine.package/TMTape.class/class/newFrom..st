instance creation
newFrom: anSequenceableCollection
	^ self new
		dataList: (anSequenceableCollection collect: [ :each |
						each isCharacter
							ifFalse: [ each asCharacterDigit ]
							ifTrue: [ each ] ]);
		yourself
	