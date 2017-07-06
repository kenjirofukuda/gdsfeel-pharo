accessing
fixTTFontDescriptionNilProblem
	<script>
	| descClass |
	"self fixTTFontDescriptionNilProblem"
	descClass := (Smalltalk at: #TTFontDescription ifAbsent: []).
	descClass ifNil: [^nil].
	descClass default 
		ifNil: [FreeTypeFontProvider current updateFromSystem.] 
		ifNotNil: [^nil]. "already set".
	self detectFontPath
		ifNotNil: [:fontPath |
			descClass setDefaultFromPath: fontPath.
			descClass initialize].
	^descClass
	

