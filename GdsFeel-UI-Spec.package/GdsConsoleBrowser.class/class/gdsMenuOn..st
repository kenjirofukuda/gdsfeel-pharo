menu
gdsMenuOn: aBuilder 
	<worldMenu>
	(aBuilder item: #'Console Browser')
		action: [ self new openWithSpec ];
		parent: #GdsFeel;
		yourself.