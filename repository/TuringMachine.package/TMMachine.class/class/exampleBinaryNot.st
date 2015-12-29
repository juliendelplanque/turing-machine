examples
exampleBinaryNot
	"A machine that negate the binary input on the tape.
	 For example: ç0101 becomes ç1010"
	| machine qInit q0 q1 |
	machine := TMMachine new.
	qInit := TMState named: 'qInit'.
	q0 := TMState named: 'q0'.
	q1 := TMState named: 'q1'.
	
	qInit to: q0 transition: $ç -> ($ç,#R).
	q0 to: q0 transitions: { 
		$0 -> ($1,#R).
		$1 -> ($0,#R) }.
	q0 to: q1 transition: Character space -> (Character space, #L).
	q1 to: q1 transitions: { 
		$0 -> ($0,#L).
		$1 -> ($1,#L) }.
	q1 to: machine accept transition: $ç -> ($ç,#N).
	machine initialState: qInit.
	machine reset.
	^ machine