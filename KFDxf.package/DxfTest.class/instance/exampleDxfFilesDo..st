tests-accessing
exampleDxfFilesDo: dxfFileBlock
	DxfShapeTest qcadExamplesDxfFiles 
		do: [ :f |
			dxfFileBlock value: (DxfFile new file: f). 
			 ]