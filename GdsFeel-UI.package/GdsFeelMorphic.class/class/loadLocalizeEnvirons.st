localize
loadLocalizeEnvirons
	| csvFile localizeMap parser converter |
	LocalizeMap := nil.
	self localizeCsvName
		ifEmpty: [
			^self].
	csvFile := GdsFeel projectDirectory / self localizeCsvName.
	csvFile isFile
		ifFalse: [
			^self].
	localizeMap := Dictionary new.
	converter := UTF8TextConverter new.
	StandardFileStream readOnlyFileNamed: csvFile fullName do: [:s | 
		parser := CSVParser on: s.
		parser 
			rowsDo: [:row | | convertedRow |
				convertedRow := row collect: [:each | each convertFromWithConverter: converter]. 
				self readRow: convertedRow intoMap: localizeMap]].
	localizeMap keys ifEmpty: [localizeMap := nil].
	LocalizeMap := localizeMap.
