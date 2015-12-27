accessing
currentData: symbol
	currentCell value: symbol.
	self announcer announce: (TMCurrentCellValueChanged newValue: symbol)