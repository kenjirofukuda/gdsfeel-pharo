menu
gdsMenuOn: aBuilder 
	<worldMenu>
	(aBuilder item: #'Tree Browser')
		action: [ self new openWithSpec ];
		parent: #GdsFeel;
		yourself.
	(aBuilder item: #'All Dispose')
		action: [ self allDispose ];
		parent: #GdsFeel;
		yourself.		