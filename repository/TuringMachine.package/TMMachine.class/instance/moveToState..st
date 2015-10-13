machine manipulation
moveToState: aState
	"Change the machine's state and continue the execution."
	
	self currentState: aState.
	self start