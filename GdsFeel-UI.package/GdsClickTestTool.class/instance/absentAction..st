action
absentAction: foundElements
	| savedColors |
	savedColors := foundElements collect: [ :e | e ownColor ].
	foundElements do: [ :e | e ownColor: Color brown twiceLighter ].
	morph markElementKeys.
	(foundElements
		collect: [ :e | 
			e
				->
					(DistanceContext
						fromPoint: worldPoints last
						lineSegment: (LineSegment from: e vertices first to: e vertices second)) ]) explore.
	[ (Delay forSeconds: 7) wait.
	foundElements doWithIndex: [ :e :i | e ownColor: (savedColors at: i) ] ] fork