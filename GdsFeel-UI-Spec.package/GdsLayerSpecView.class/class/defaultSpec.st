as yet unclassified
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newRow: [:r |
			r add: #visibleModel width: 16.
			r add: #selectableModel width: 16.
			r add: #layerNumberModel width: 26.
			r add: #colorChooser width: 60.
			r add: #labelModel.
			];
		yourself