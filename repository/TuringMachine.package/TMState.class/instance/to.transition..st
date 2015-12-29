actions
to: aState transition: anAssociation
	self
		when: anAssociation key
		write: anAssociation value first
		moveHead: anAssociation value second
		andMoveTo: aState