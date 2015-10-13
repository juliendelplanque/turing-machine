examples
exampleShift
	"This machine shift the content of the tape of 1 case on the right.
	 For example: '01011' become ' 01011'."
	
	| machine qinit q1 qEnd q0Read qWritten q1Read |
	machine := TMMachine new.
	qinit := TMState named: 'qinit'.
	q1 := TMState named: 'q1'.
	qEnd := TMState named: 'q-end'.
	q0Read := TMState named: 'q-0-read'.
	qWritten := TMState named: 'q-written'.
	q1Read := TMState named: 'q-1-read'.
	
	qinit when: $ç do: (TMTransition write: $ç moveHead: #R moveTo: q1).
	
	q1 when: $0 do: (TMTransition write: $0 moveHead: #R moveTo: q1);
		when: $1 do: (TMTransition write: $1 moveHead: #R moveTo: q1);
		when: Character space do: (TMTransition write: Character space moveHead: #L moveTo: qEnd).
	
	qEnd when: $0 do: (TMTransition write: Character space moveHead: #R moveTo: q0Read);
		  when: $1 do: (TMTransition write: Character space moveHead: #R moveTo: q1Read);
		  when: $ç do: (TMTransition write: $ç moveHead: #N moveTo: machine accept).
	
	q0Read when: Character space do: (TMTransition write: $0 moveHead: #L moveTo: qWritten).
	
	q1Read when: Character space do: (TMTransition write: $1 moveHead: #L moveTo: qWritten).
	
	qWritten when: Character space do: (TMTransition write: Character space moveHead: #L moveTo: qEnd).
	
	machine initialState: qinit.
	machine reset.
	^ machine