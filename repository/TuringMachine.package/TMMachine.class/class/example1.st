examples
example1
	"This machine accept the following language: L={0^n 1^n | n >= 0}"
	
	| machine qinit q1 q2 q3 q4 |
	machine := TMMachine new.
	qinit := TMState named: 'qinit'.
	q1 := TMState named: 'q1'.
	q2 := TMState named: 'q2'.
	q3 := TMState named: 'q3'.
	q4 := TMState named: 'q4'.

	qinit when: $ç do: (TMTransition write: $ç moveHead: #R moveTo: q1).

	q1 when: Character space do: (TMTransition write: Character space moveHead: #N moveTo: machine accept);
		when: $0 do: (TMTransition write: $a moveHead: #R moveTo: q2);
		when: $b do: (TMTransition write: $b moveHead: #R moveTo: q4).

	q2 when: $0 do: (TMTransition write: $0 moveHead: #R moveTo: q2);
		when: $b do: (TMTransition write: $b moveHead: #R moveTo: q2);
		when: $1 do: (TMTransition write: $b moveHead: #L moveTo: q3).

	q3 when: $0 do: (TMTransition write: $0 moveHead: #L moveTo: q3);
		when: $b do: (TMTransition write: $b moveHead: #L moveTo: q3);
		when: $a do: (TMTransition write: $a moveHead: #R moveTo: q1).
		
	q4 when: $b do: (TMTransition write: $b moveHead: #R moveTo: q4);
		when: Character space do: (TMTransition write: Character space moveHead: #N moveTo: machine accept).
		
	machine initialState: qinit.
	machine reset. "Set the initial state as current state"
	^ machine