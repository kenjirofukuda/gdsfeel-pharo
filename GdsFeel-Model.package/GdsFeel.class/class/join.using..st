private
join: anArray using: joint
	"TODO: using KFStringUtils #join:using:"
	| path |
	path := String streamContents: [:s |
		anArray do: [:each | 
			s nextPutAll: each.
			s nextPutAll: joint]].
	^path allButLast:  joint size.