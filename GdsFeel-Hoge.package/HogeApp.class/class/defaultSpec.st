specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :c | 
			c
				add: #menuBar height: self toolbarHeight;
				add: #graphicView;
				add: #statusBar height: self statusbarHeight ];
		yourself