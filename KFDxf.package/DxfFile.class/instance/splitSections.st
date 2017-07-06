private
splitSections
	| section index beginSectionIndex handled |
	section := nil.
	index := 0.
	^ Array streamContents: [ :arrayStream |
		self dataGroups do: [ :dataGroup |
			section 
				ifNil: [
					dataGroup isBeginSection
						ifTrue: [
							section := DxfSection new.
							beginSectionIndex := index ]]
			 	ifNotNil: [
					handled := false.
					(dataGroup isSectionName and: [ index == (beginSectionIndex + 1)])
						ifTrue: [ 
							section name: dataGroup data.
							handled := true].		
					(handled not and: [dataGroup isEndSection])
						ifTrue: [
							arrayStream nextPut: section .
							section := nil .
							handled := true].
					handled not 
						ifTrue: [
							section addDataGroup: dataGroup 			].
			].
			index := index + 1.				
		]  
	]