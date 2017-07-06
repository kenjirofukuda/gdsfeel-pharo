as yet unclassified
readUpToFirstStructRecord: aRecord
	| items libname |
	#BGNLIB = aRecord type 
		ifTrue: [
			library := GdsLibrary new.
			items := aRecord dateAndTimes.
			library lastModified: items first.
			library lastAccessed: items second.
			^false].

	#LIBNAME = aRecord type
		ifTrue: [
			libname := aRecord asString.
			libname isEmptyOrNil ifTrue: [self abort: 'Bad LIBNAME record. Aborting'].
			library libName: libname.
			^false].

	#UNITS = aRecord type
		ifTrue: [
			items := aRecord real8Array.
			library userUnit: items first.
			library meterUnit: items second.
			^false].

	#BGNSTR = aRecord type
		ifTrue: [
			reader unreadRecord: aRecord.
			^true].
		
	(self cantHandledTypes  includes: aRecord type)
		ifTrue: [
			self stderr: ('Not yet handling {1}' format: {aRecord type asString})].
	^false