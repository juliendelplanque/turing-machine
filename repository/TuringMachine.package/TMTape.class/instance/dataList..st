accessing
dataList: anIterableCollection
	dataList := DoubleLinkedList new.
	dataList addLast: $ç.
	anIterableCollection do: [ :symbol | dataList addLast: symbol ].
	currentCell := dataList firstLink