switch flow common
switchXY: record
	#XY = record type		
		ifTrue: [ | points |
			self checkPreRequiredConsumed: record type.
			points := (record pointsScaledBy: inform library userUnit).
			element vertices: points.
			(element type == #aref or: [element type == #sref])
				ifTrue: [element xy: points first].
			(element type == #aref)
				ifTrue: [ | col row mat |
"
AREF: Exactly 3 pairs
                        1:  Array reference point
                        2:  column_space*columns+reference_x
                        3:  row_space*rows+reference_y
"
					element xy: points first.
					mat := element transform.
					col := mat invertPoint: points second.
					"col x negative
						ifTrue: [self error: 'error in AREF! Found a y-axis mirrored array. This is impossible so I''m exiting'.].
					col y abs > 1e-10
						ifTrue: [self error: 'Error in AREF! The second point in XY is broken']."	
					row := mat invertPoint: points third.
					"row x abs > 1e-10
						ifTrue: [self error: 'Error in AREF! The third point in XY is broken'].	"
					element xStep: (col x / element columnCount) asFloat.					
					element yStep: (row y / element rowCount) asFloat.
					"row y negative 
						ifTrue: [element yStep: element yStep negated]".].
			self upCount: #XY.
			^true].
	^false