initialization
initialize
	super initialize.
	dataList := DoubleLinkedList new.
	dataList addLast: $ç.
	currentCell := dataList firstLink