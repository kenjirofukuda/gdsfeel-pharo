as yet unclassified
newOuterMorph
	| outerMorph |
	outerMorph := AlignmentMorph newRow.
	outerMorph hResizing: #shrinkWrap.
	outerMorph vResizing: #shrinkWrap.	
	outerMorph color: Color white.
	^outerMorph
