accessing
labelStringAfter
	self library ifNil: [^'NO LIBRARY OPEN'].
	self structure ifNil: [^'[{1}].NO STRUCTURE OPEN' format: {self library libName}].
	^'[{1}].[{2}]' format: {self library libName . self structure name}.