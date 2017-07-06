private
privateClickReplyPoints: points tool: tool worldPoint: aWorldPoint
	|  p pointExpr values|	
	points size >= 2
		ifTrue: [ 
			self inform: 'multiple selection '.
			^ #continue ].
	p := points ifEmpty: [ tool snapedWorldPoint2: aWorldPoint ] ifNotEmpty: [ points first ].
	pointExpr := p x asString , ' ', p y asString.
	self treeActivatedStructureEditorDo: [ :morph |
values := morph 
		privateExpInput: 
			'x y' 
				expandMacros
		defaults: pointExpr.
		 ]	.
			 
	values ifEmpty: [ 
		self inform: 'Cancel''ed'.
		^ #cancel ].
	^ values first @ values second
