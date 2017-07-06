utility
clearAllProxyMorphs
	self structure ifNil: [ ^ self ].
	self structure elements do: [ :each |
		self clearProxyMorph: each ]