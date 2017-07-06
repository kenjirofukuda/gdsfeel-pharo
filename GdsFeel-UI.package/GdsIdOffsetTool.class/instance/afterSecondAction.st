action
afterSecondAction
	self offsetAction: [
		self structure perform: self offsetOperation with: self relativeOffset]