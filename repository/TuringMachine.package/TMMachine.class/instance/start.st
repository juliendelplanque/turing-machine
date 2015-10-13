machine manipulation
start
	"Start the Turing Machine."
	
	[ self currentState readSymbolPointedBy: self head using: self ]
		on: TMUnknownSymbolError do: [ self currentState: self reject ]