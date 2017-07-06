updating
update: aParameter
	updateBlock ifNotNil: [updateBlock value: aParameter value: self].
	super update: aParameter.