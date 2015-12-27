machine manipulation
reject
	"Return the reject state."
	
	^ rejectState ifNil: [ rejectState := TMRejectState new ]