as yet unclassified
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newRow: [:r |
			r add: #listModel.
			];
		yourself