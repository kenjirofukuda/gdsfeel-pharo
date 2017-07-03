private
setupClassMap
	TypeToClassMap := Dictionary new.
	self allCreatableClasses do: [:clazz |
		TypeToClassMap at: clazz type put: clazz].