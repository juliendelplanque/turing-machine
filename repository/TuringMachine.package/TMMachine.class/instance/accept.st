machine manipulation
accept
	"Return the accept state."
	
	^ acceptState ifNil: [ acceptState := TMAcceptState new ]