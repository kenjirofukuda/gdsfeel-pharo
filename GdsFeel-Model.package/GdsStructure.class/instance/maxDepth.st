accessing
maxDepth
	| walker maxDepth|
	walker := GdsStructureWalker new.
	maxDepth := 0.
	walker walk: self do: [ maxDepth := maxDepth max: walker depth ].
	^ maxDepth