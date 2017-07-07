private
noDragAction
	| menu |
	menu := MenuModel new
		addGroup: [ :group | 
			self setupMenu: group ].
	Cursor normal show.
	menu openWithSpecAt: event cursorPoint