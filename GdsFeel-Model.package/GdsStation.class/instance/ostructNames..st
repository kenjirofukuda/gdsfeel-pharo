command-handler
ostructNames: aNamesArgBlock
	^self ostructNames: aNamesArgBlock  sortBlock: [:a :b | a  name <= b name]. 
