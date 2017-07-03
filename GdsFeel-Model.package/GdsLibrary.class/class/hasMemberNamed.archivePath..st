testing
hasMemberNamed: aZipMemberName archivePath: aPathToDatabase
	| members |
	members := self privateZipMembersOf: aPathToDatabase.
	members ifEmpty: [^false].
	^members includes: aZipMemberName