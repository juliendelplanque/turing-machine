tests-tape manipulation
testRead
	'ç001101' do: [ :char | self assert: head read equals: char. head right ]