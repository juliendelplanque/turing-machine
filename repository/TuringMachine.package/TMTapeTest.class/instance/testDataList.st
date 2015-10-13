tests-accessing
testDataList
	tape dataList: #($1 $0 $1 $0 $0 $1).
	
	#($ç $1 $0 $1 $0 $0 $1) do: [ :each |
		self assert: tape currentData equals: each.
		tape next ]