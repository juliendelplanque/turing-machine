machine manipulation
reset
	"Reset the machine by putting it back to initialState."

	self currentState: self initialState.
	self announcer announce: (TMReset new turingMachine: self; yourself)