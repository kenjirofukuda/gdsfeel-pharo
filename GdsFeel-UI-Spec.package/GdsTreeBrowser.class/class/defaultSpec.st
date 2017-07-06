specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :c | 
			c
				add: #menu height: self toolbarHeight + self toolbarBorderWidth;
				newRow: [ :r | 
					r add: #tree.	"width: 150"
					r addSplitter.
					r
						newColumn: [ :c2 | 
							c2 add: #visibleElementList origin: 0 @ 0 corner: 0 @ 0.5.
							c2 addSplitter.
							c2 add: #inspectorView origin: 0 @ 0.5 corner: 1 @ 1 ].
					"width: 200"
					r addSplitter.
					r add: #manager.
					r addSplitter.
					r
						newColumn: [ :c3 | 
							c3 add: #layers origin: 0 @ 0 corner: 0 @ 0.5.
							c3 addSplitter.
							c3 add: #kinds origin: 0 @ 0.5 corner: 1 @ 1 ]
					"width: 150" ] ];
		yourself