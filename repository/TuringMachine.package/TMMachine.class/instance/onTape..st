machine manipulation
onTape: aTape
	"Set the machine on the tape in parameter and reset it."
	
	self head: (TMHead on: aTape).
	self reset