tests-accessing
testAccadver
	self exampleDxfFilesDo: [ :dxfFile |
		| accadver |
		accadver := (dxfFile sectionNamed: 'HEADER') accadver .
		self assert: (accadver beginsWith: 'AC').
		self inform: accadver ]