private
privateMag: aFloat
	strans mag: aFloat.
	self changed: #mag.
	"TODO: remove this change. Model not known GUI"
	self changed: #requestMagLabel.	
	