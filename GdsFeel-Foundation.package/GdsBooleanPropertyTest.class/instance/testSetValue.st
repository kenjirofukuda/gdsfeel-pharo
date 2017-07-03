tests
testSetValue
	| prop |	
	prop := GdsBooleanProperty named: 'example' owner: nil.	
	self should: [ prop setValue: 1 ] raise: Exception. 
	self should: [ prop setValue: #true ] raise: Exception. 
	self should: [ prop setValue: nil ] raise: Exception. 
	self should: [ prop setValue: #() ] raise: Exception. 
	self should: [ prop setValue: 'true' ] raise: Exception. 
	
	self shouldnt: [ prop setValue: true ] raise: Exception. 
	self shouldnt: [ prop setValue: false ] raise: Exception. 
	