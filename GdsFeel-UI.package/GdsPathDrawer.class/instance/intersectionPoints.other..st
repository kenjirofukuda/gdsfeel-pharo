caliculate
intersectionPoints: segs1 other: segs2
	^ Array streamContents: [ :s | 
		segs1 do: [:seg1 |
			segs2 do: [:seg2 | | p |
				p := seg1 intersectionWith: seg2.
				p ifNotNil: [s nextPut: p] ] ] ]