private
privateAngle: aDegree
	strans angle: aDegree.
	self changed: #angle.
	"TODO: remove this change. Model not known GUI"
	self changed: #requestAngleLabel.	
	self announceAttributeChanged: #angle.
	