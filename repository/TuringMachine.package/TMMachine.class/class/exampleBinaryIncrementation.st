examples
exampleBinaryIncrementation
	| machine qInit q0 q1 q2 q3 q4 q5 q6 q7 q8 q9 |
	machine := TMMachine new.
	qInit := TMState named: 'qInit'.
	q0 := TMState named: 'q0'.
	q1 := TMState named: 'q1'.
	q2 := TMState named: 'q2'.
	q3 := TMState named: 'q3'.
	q4 := TMState named: 'q4'.
	q5 := TMState named: 'q5'.
	q6 := TMState named: 'q6'.
	q7 := TMState named: 'q7'.
	q8 := TMState named: 'q8'.
	q9 := TMState named: 'q9'.

	qInit when: $ç write: $ç moveHead: #R andMoveTo: q0.

	q0
		when: $0 write: $0 moveHead: #R andMoveTo: q0;
		when: $1 write: $1 moveHead: #R andMoveTo: q0;
		when: Character space write: Character space moveHead: #L andMoveTo: q1.

	q1
		when: $1 write: $0 moveHead: #L andMoveTo: q3;
		when: $0 write: $1 moveHead: #L andMoveTo: q2.


	q2
		when: $0 write: $0 moveHead: #L andMoveTo: q2;
		when: $1 write: $1 moveHead: #L andMoveTo: q2;
		when: $ç write: $ç moveHead: #N andMoveTo: machine accept.

	q3
		when: $1 write: $0 moveHead: #L andMoveTo: q3;
		when: $0 write: $1 moveHead: #L andMoveTo: q2;
		when: $ç write: $ç moveHead: #R andMoveTo: q4.

	q4
		when: $0 write: $0 moveHead: #R andMoveTo: q4;
		when: $1 write: $1 moveHead: #R andMoveTo: q4;
		when: Character space write: Character space moveHead: #L andMoveTo: q5.

	q5
		when: $0 write: Character space moveHead: #R andMoveTo: q6;
		when: $1 write: Character space moveHead: #R andMoveTo: q8;
		when: $ç write: $ç moveHead: #R andMoveTo: q9.

	q6
		when: Character space write: $0 moveHead: #L andMoveTo: q7.

	q7
		when: Character space write: Character space moveHead: #L andMoveTo: q5.

	q8
		when: Character space write: $1 moveHead: #L andMoveTo: q7.

	q9
		when: Character space write: $1 moveHead: #L andMoveTo: q2.

	machine initialState: qInit.
	machine reset.
	^ machine