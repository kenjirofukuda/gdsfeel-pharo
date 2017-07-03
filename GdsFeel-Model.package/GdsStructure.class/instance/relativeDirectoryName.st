private
relativeDirectoryName
	"'SAMPLE.structure'"
	^String streamContents: [:s | s << self name; << '.structure']. 