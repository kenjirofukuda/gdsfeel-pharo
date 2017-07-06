as yet unclassified
initialize
	super initialize.
	hatchMap := Dictionary new.
	 self class specRecord do: [:toliplet |
		hatchMap at: toliplet first put: (GdsHatch new setName: toliplet first angle: toliplet second linesPerScreen: toliplet third).
		].
	