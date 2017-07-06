specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newRow: [:r |
			r add: #labelModel.
			r add: #visibleModel.
			r add: #selectableModel.
			];
		yourself