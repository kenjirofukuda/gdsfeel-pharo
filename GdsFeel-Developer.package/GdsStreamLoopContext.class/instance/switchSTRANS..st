switch flow common
switchSTRANS: record

	#STRANS = record type
		ifTrue: [
			self checkPreRequiredConsumed: record type.
			element strans setReflected: record isReflected.
			element strans setAngleAbsolute: record isAbsAngle.
			element strans setMagAbsolute: record isAbsMag.
			self upCount: #STRANS.
			^true].
				
	#MAG = record type
		ifTrue: [
			(self hasEntry: #STRANS)
				ifFalse: ["TODO: MISSING REQUIRED ERROR HANDLE"].
			element mag: record real8.
			self upCount: #MAG.
			^true].
				
	#ANGLE = record type
		ifTrue: [
			(self hasEntry: #STRANS)
				ifFalse: ["TODO: MISSING REQUIRED ERROR HANDLE"].
			element angle: record real8.
			self upCount: #ANGLE.
			^true].
	^false
