private
shapeToolSpecs
	^ { 
	{ 'Point' . GdsDirectPointTool  }.
	{ 'Segment' . GdsDirectSegmentTool  }.
	{ 'Text' . GdsDirectBoxTextTool  }.
	{ 'Rectangle' . GdsDirectRectangleTool  }.
	 }